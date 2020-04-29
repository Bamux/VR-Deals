from pathlib import Path


def main():
    settings = Path("settings.py").is_file()
    if settings:
        import data_management
        data_management.main()
    else:
        print("Enter the required information in the settings.example.py' and rename it to settings.py")


if __name__ == "__main__":
    main()
