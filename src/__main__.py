from pathlib import Path
import data_management

if Path("settings.py"):
    data_management.main()
else:
    print("Please fill out the settings.example.py and rename it to settings.py")
