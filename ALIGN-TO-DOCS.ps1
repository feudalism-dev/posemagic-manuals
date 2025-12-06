$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals"
Set-Location $repo

Write-Host "Aligning local files to /docs structure..." -ForegroundColor Cyan

# 1. Create docs folder if missing
if (-not (Test-Path "docs")) { New-Item -ItemType Directory -Path "docs" -Force | Out-Null }

# 2. Move Root files to Docs (excluding git/docs itself)
$items = Get-ChildItem -Path . -Exclude ".git","docs"
foreach ($item in $items) {
    Move-Item $item.FullName -Destination "docs" -Force
}

# 3. Fix Baseurl in Config (It should match project name)
$configPath = "docs\_config.yml"
if (Test-Path $configPath) {
    $content = Get-Content $configPath -Raw
    if ($content -notmatch 'baseurl: "/posemagic-manuals"') {
        $content = $content -replace 'baseurl: ""', 'baseurl: "/posemagic-manuals"'
        $content | Set-Content $configPath
    }
}

Write-Host "Files moved to /docs. Ready to push." -ForegroundColor Green
