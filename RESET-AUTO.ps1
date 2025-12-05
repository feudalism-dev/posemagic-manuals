$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
$source = "d:\Documents\My LSL Scripts\AVstand\docs"

Write-Host "Starting Clean Slate Reset..." -ForegroundColor Cyan

# 1. Go to repo
Set-Location $repo

# 2. Remove all tracked files
Write-Host "Cleaning old files..."
git rm -rf .
git clean -fdx

# 3. Copy fresh files to ROOT
Write-Host "Copying fresh files from AVstand/docs..."
Copy-Item "$source\*" -Destination $repo -Recurse -Force

# 4. Ensure _config.yml exists and is correct
if (Test-Path "_config.yml") {
    $config = Get-Content "_config.yml" -Raw
    # Ensure baseurl is correct for project site
    if ($config -notmatch 'baseurl: "/posemagic-manuals"') {
        $config = $config -replace 'baseurl: ""', 'baseurl: "/posemagic-manuals"'
        $config = $config -replace "baseurl: ''", 'baseurl: "/posemagic-manuals"'
        $config | Set-Content "_config.yml"
        Write-Host "Updated _config.yml baseurl."
    }
} else {
    Write-Error "_config.yml missing after copy!"
}

# 5. Commit and Force Push
Write-Host "Committing..."
git add .
git commit -m "RESET: Clean install of website to root"

Write-Host "Pushing to GitHub..."
git push origin main --force

Write-Host "DONE! Website reset complete." -ForegroundColor Green
