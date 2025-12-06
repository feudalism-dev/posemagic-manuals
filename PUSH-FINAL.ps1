$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "      PUSHING FINAL UPDATES" -ForegroundColor Cyan
Write-Host "========================================"

git add .
git commit -m "UPDATE: Add Setup Tool workflow documentation and organize docs/"
git push origin main

Write-Host "`nDONE! Website fully updated." -ForegroundColor Green
Write-Host "Verify: https://feudalism-dev.github.io/posemagic-manuals/"
Read-Host "Press Enter to exit"
