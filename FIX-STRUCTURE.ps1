$ErrorActionPreference = "Continue"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "      FIXING FOLDER STRUCTURE" -ForegroundColor Cyan
Write-Host "========================================"

# Create docs if missing
if (-not (Test-Path "docs")) { New-Item -ItemType Directory -Path "docs" -Force | Out-Null }

# List of items to move to docs
$itemsToMove = @(
    "index.md", "getting-started.md", "_config.yml",
    "scripts", "examples", "assets",
    "_includes", "_layouts", "README.md"
)

foreach ($item in $itemsToMove) {
    if (Test-Path $item) {
        Write-Host "Moving $item to docs/..."
        if (Test-Path "docs\$item") {
            # If folder exists in dest, move contents
            if ((Get-Item $item).PSIsContainer) {
                Copy-Item "$item\*" -Destination "docs\$item" -Recurse -Force
                Remove-Item $item -Recurse -Force
            } else {
                Move-Item $item -Destination "docs" -Force
            }
        } else {
            Move-Item $item -Destination "docs" -Force
        }
    }
}

# Clean up scripts from root (optional, keeps repo clean)
Remove-Item "ALIGN-TO-DOCS.ps1" -ErrorAction SilentlyContinue
Remove-Item "PUSH-FINAL.ps1" -ErrorAction SilentlyContinue
Remove-Item "PUSH-UPDATES.ps1" -ErrorAction SilentlyContinue
Remove-Item "REALLY-FIX-IT.ps1" -ErrorAction SilentlyContinue

Write-Host "`nStructure fixed. Pushing to GitHub..." -ForegroundColor Yellow

git add .
git commit -m "FIX: Move all files to /docs folder"
git push origin main

Write-Host "`nDONE! Website should be fully working in 2 minutes." -ForegroundColor Green
Write-Host "Verify: https://feudalism-dev.github.io/posemagic-manuals/"
Read-Host "Press Enter to exit"
