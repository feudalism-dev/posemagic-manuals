# Force push script
cd "d:\Documents\My LSL Scripts\posemagic-manuals"
Write-Host "=== Current Directory ===" 
Get-Location
Write-Host "`n=== Files in docs ===" 
Get-ChildItem docs -Recurse -File | Select-Object -First 20 Name
Write-Host "`n=== Git Status ===" 
git status
Write-Host "`n=== Adding files ===" 
git add -A
Write-Host "`n=== Committing ===" 
git commit -m "Add PoseMagic documentation website - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
Write-Host "`n=== Pushing ===" 
git push origin main
Write-Host "`n=== DONE ===" 
