$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "      PUSHING CONTENT UPDATES" -ForegroundColor Cyan
Write-Host "========================================"

git add .
git commit -m "UPDATE: Content fixes (Core per sitter) and moved to /docs"
git push origin main

Write-Host "`nDONE! Website content updated." -ForegroundColor Green
Write-Host "Verify: https://feudalism-dev.github.io/posemagic-manuals/"
Read-Host "Press Enter to exit"
