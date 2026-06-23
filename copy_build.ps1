# Create the app directory if it doesn't exist
$dest = "D:\flutter_pr\doomcat_focus\web_showcase\app"
if (Test-Path $dest) {
    Remove-Item -Path $dest -Recurse -Force
}
New-Item -ItemType Directory -Force -Path $dest

# Copy all build/web contents to web_showcase/app
Copy-Item -Path "D:\flutter_pr\doomcat_focus\build\web\*" -Destination $dest -Recurse -Force
Write-Host "Build output copied successfully to $dest"
