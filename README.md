# Windows File Organizer

This PowerShell script organizes files in a specified directory into subfolders based on their file extensions. For example, all `.txt` files will be moved to a folder named `txt`.

## Features

- Automatically create folders based on file extensions.
- Move files into corresponding folders based on their extensions.
- Easy to use and modify.

## Requirements

- Windows PowerShell (available on all modern Windows systems).
- Appropriate permissions to create folders and move files in the specified directory.

## Usage

1. **Download or Clone the Script**: Download the `OrganizeFilesByExtension.ps1` script from this repository or copy the content from below.

2. **Modify the Script**: 
   - Open the script in a text editor.
   - Set the `$sourceDirectory` variable to the path of the directory you want to organize. For example:
     ```powershell
     $sourceDirectory = "C:\path\to\your\directory"
     ```
   - Save the changes.

3. **Run the Script**: 
   - Open PowerShell as an administrator.
   - Navigate to the directory where the script is located using the `cd` command.
   - Execute the script by typing:
     ```powershell
     .\OrganizeFilesByExtension.ps1
     ```

4. **Result**: The script will create folders named after each file extension in the specified directory and move the corresponding files into these folders.

## Notes

- **Backup Your Data**: Always ensure you have backups of your data before running scripts that modify files.
- **Customizations**: You can modify the script to include files from subdirectories by adding the `-Recurse` parameter to the `Get-ChildItem` command.
- **Permissions**: Make sure you have the necessary permissions to run the script and modify the files in the directory.

## License

This script is open-source and available for use and modification. Feel free to customize it according to your needs.
