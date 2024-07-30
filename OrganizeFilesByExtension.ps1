# Define the directory you want to organize
$sourceDirectory = "/directory/path"

# Get all files in the directory
$files = Get-ChildItem -Path $sourceDirectory -File

foreach ($file in $files) {
    # Get the file extension
    $extension = $file.Extension.TrimStart('.')

    # Define the target directory based on the extension
    $targetDirectory = Join-Path -Path $sourceDirectory -ChildPath $extension

    # Create the directory if it doesn't exist
    if (-not (Test-Path -Path $targetDirectory)) {
        New-Item -Path $targetDirectory -ItemType Directory | Out-Null
    }

    # Move the file to the target directory
    $destinationPath = Join-Path -Path $targetDirectory -ChildPath $file.Name
    Move-Item -Path $file.FullName -Destination $destinationPath
}

Write-Output "Files have been organized by their extensions."
