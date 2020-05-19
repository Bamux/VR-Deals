import base64
from pathlib import Path

from github import Github
from github import InputGitTreeElement

from flask_vrdeals.create_static_website import freezer
from settings import github_token, github_repository


def upload_files_github(file_list, file_names):
    g = Github(github_token)
    repo = g.get_user().get_repo(github_repository)

    commit_message = 'update'
    master_ref = repo.get_git_ref('heads/master')
    master_sha = master_ref.object.sha
    base_tree = repo.get_git_tree(master_sha)
    element_list = list()
    for i, entry in enumerate(file_list):
        with open(entry, encoding="utf8") as input_file:
            data = input_file.read()
        if entry.endswith('.png'):
            data = base64.b64encode(data)
        element = InputGitTreeElement(file_names[i], '100644', 'blob', data)
        element_list.append(element)
    tree = repo.create_git_tree(element_list, base_tree)
    parent = repo.get_git_commit(master_sha)
    commit = repo.create_git_commit(commit_message, tree, [parent])
    master_ref.edit(commit.sha)


def main():
    if github_token and github_repository:
        freezer.freeze()
        file_list = [str(k).replace('\\', '/') for k in Path('build').rglob('*.html')]
        file_names = [file.replace('build/', '') for file in file_list]
        if file_list:
            upload_files_github(file_list, file_names)


if __name__ == '__main__':
    main()
