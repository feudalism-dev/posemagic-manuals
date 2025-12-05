$ErrorActionPreference = "Stop"

function Write-Status ($message) {
    Write-Host "`n[STATUS] $message" -ForegroundColor Cyan
}

try {
    Set-Location "d:\Documents\My LSL Scripts\posemagic-manuals"
    Write-Status "Working in: $(Get-Location)"

    # 1. Fix Assets
    Write-Status "Fixing asset directories..."
    $imgDir = "docs\assets\img"
    if (-not (Test-Path $imgDir)) {
        New-Item -ItemType Directory -Path $imgDir -Force | Out-Null
        Write-Host "Created $imgDir" -ForegroundColor Green
    }

    # 2. Copy Logo
    Write-Status "Copying logo and favicon..."
    $sourceLogo = "..\AVstand\posemagic-logo.png"
    if (Test-Path $sourceLogo) {
        Copy-Item $sourceLogo -Destination "$imgDir\posemagic-logo.png" -Force
        Copy-Item $sourceLogo -Destination "$imgDir\favicon.png" -Force
        Write-Host "Assets copied successfully." -ForegroundColor Green
    } else {
        Write-Warning "Source logo not found at $sourceLogo. Skipping image copy."
    }

    # 3. Verify Config
    Write-Status "Verifying configuration..."
    $configPath = "docs\_config.yml"
    if (Test-Path $configPath) {
        $config = Get-Content $configPath -Raw
        if ($config -notmatch 'baseurl: "/posemagic-manuals"') {
            Write-Warning "Config might have wrong baseurl. Please check docs/_config.yml"
        } else {
            Write-Host "Configuration looks correct." -ForegroundColor Green
        }
    }

    # 4. Git Operations
    Write-Status "Executing Git commands..."
    
    # Git Status
    Write-Host "git status..." -ForegroundColor DarkGray
    git status
    
    # Git Add
    Write-Host "git add..." -ForegroundColor DarkGray
    git add .
    
    # Git Commit
    Write-Host "git commit..." -ForegroundColor DarkGray
    git commit -m "FINAL FIX: Configure GitHub Pages baseurl and assets"
    
    # Git Push
    Write-Status "Pushing to GitHub (this might take a moment)..."
    git push origin main

    Write-Status "DONE! Please check https://github.com/feudalism-dev/posemagic-manuals/actions"
    Write-Host "If the push failed above, you may need to authenticate." -ForegroundColor Yellow

} catch {
    Write-Error "An error occurred: $_"
    exit 1
}
