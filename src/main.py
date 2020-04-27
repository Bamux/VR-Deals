from pathlib import Path
import data_management


def main():
    if Path("settings.py"):
        data_management.main()
    else:
        print("Please fill out the settings.example.py and rename it to settings.py")


if __name__ == "__main__":
    main()
