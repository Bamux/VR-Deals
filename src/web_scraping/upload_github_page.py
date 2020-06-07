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
        print("Static html files are created.")
        freezer.freeze()    # Creates static html files from the the database
        if __name__ == '__main__':
            path = str(Path.cwd().parent)
        else:
            path = str(Path.cwd())
        json_path = path + '/flask_vrdeals/static/json/data.json'
        json_path = json_path.replace('\\', '/')
        path = path + '/flask_vrdeals/build/'
        path = path.replace('\\', '/')
        file_list = [str(k).replace('\\', '/') for k in Path(path).rglob('*.html')]
        file_names = [file.replace(str(path), '') for file in file_list]
        if file_list:
            file_list.append(json_path)
            file_names.append("static/json/data.json")
            print("Uploading html files to GitHub Pages.")
            upload_files_github(file_list, file_names)


if __name__ == '__main__':
    main()
