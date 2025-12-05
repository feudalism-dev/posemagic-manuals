$ErrorActionPreference = "Stop"
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "      MANUAL FORCE PUSH SCRIPT" -ForegroundColor Cyan
Write-Host "========================================"
Write-Host "This script forces the changes to go to GitHub."
Write-Host "If a popup appears asking for credentials, please sign in."

$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

# 1. Check status
Write-Host "`n1. Checking Git Status..." -ForegroundColor Yellow
git status

# 2. Add everything
Write-Host "`n2. Adding all files..." -ForegroundColor Yellow
git add .

# 3. Commit
Write-Host "`n3. Committing changes..." -ForegroundColor Yellow
git commit -m "MANUAL FIX: Fix missing CSS and assets"
if ($LASTEXITCODE -eq 1) { Write-Host "Nothing to commit (files might be unchanged locally)." -ForegroundColor Gray }

# 4. Push
Write-Host "`n4. PUSHING TO GITHUB..." -ForegroundColor Yellow
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Error "PUSH FAILED! Please check the error message above."
} else {
    Write-Host "`nSUCCESS! Files pushed." -ForegroundColor Green
    Write-Host "Visit: https://feudalism-dev.github.io/posemagic-manuals/"
}

Write-Host "`nPress Enter to close..."
Read-Host
