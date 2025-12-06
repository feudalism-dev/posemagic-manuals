$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

Write-Host "Starting Final Cleanup & Fix..." -ForegroundColor Cyan

# 1. CLEANUP: Remove the duplicate 'docs' folder
if (Test-Path "docs") {
    Write-Host "Removing duplicate 'docs' folder..."
    Remove-Item "docs" -Recurse -Force
}

# 2. Fix Assets
$imgDir = "assets\img"
if (-not (Test-Path $imgDir)) { New-Item -ItemType Directory -Path $imgDir -Force | Out-Null }

# Copy Logo (Source is AVstand folder)
Write-Host "Restoring images..."
Copy-Item "..\AVstand\posemagic-logo.png" -Destination "$imgDir\posemagic-logo.png" -Force
Copy-Item "..\AVstand\posemagic-logo.png" -Destination "$imgDir\favicon.png" -Force

# 3. Fix Config
$configPath = "_config.yml"
if (Test-Path $configPath) {
    $content = Get-Content $configPath -Raw
    # Ensure baseurl is correct
    if ($content -notmatch 'baseurl: "/posemagic-manuals"') {
        $content = $content -replace 'baseurl: ""', 'baseurl: "/posemagic-manuals"'
        $content = $content -replace "baseurl: ''", 'baseurl: "/posemagic-manuals"'
        $content | Set-Content $configPath
        Write-Host "Fixed _config.yml baseurl."
    }
}

# 4. Clean up junk scripts
Remove-Item "FINAL_PUSH.ps1" -ErrorAction SilentlyContinue
Remove-Item "RESET-AUTO.ps1" -ErrorAction SilentlyContinue
Remove-Item "FIX-WEBSITE.ps1" -ErrorAction SilentlyContinue
Remove-Item "PUSH-NOW.ps1" -ErrorAction SilentlyContinue
Remove-Item "TEST-FILE.txt" -ErrorAction SilentlyContinue

# 5. GIT PUSH COMMAND
Write-Host "========================================"
Write-Host "Everything clean. Pushing to GitHub..."
Write-Host "========================================"

git add .
git commit -m "FIX: Remove duplicate docs folder and restore images"
git push origin main

Write-Host "`nDONE! Website is clean and fixed." -ForegroundColor Green
Write-Host "Check: https://feudalism-dev.github.io/posemagic-manuals/"
