$ErrorActionPreference = "Stop"
$repo = "d:\Documents\My LSL Scripts\posemagic-manuals\docs"
Set-Location $repo

Write-Host "Generating missing pages..." -ForegroundColor Cyan

# Helper function
function New-Page ($path, $title, $desc, $content) {
    $dir = Split-Path $path
    # Only create directory if path has one
    if ($dir) {
        if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
    }
    
    $fullContent = @"
---
layout: page
title: "$title"
description: "$desc"
---

$content
"@
    Set-Content -Path $path -Value $fullContent
    Write-Host "Created $path"
}

# --- EXAMPLES ---
New-Page "examples/expanding-to-more-sitters.md" "Expanding to More Sitters" "How to scale up to 10+ sitters" @"
PoseMagic has no hard-coded limit on sitters. To add more:

1.  Add another \`! PM - core [N]\` script.
2.  Add another \`! PM - dbc [N]\` script.
3.  Update your \`PMposes\` notecard with the new sitter line.

For example, for Sitter 9, you would use \`! PM - core 9\` and \`! PM - dbc 9\`.
"@

# --- PMPOSES ---
New-Page "pmposes/continuous-flow.md" "Continuous Flow" "Single notecard method" @"
**Continuous Flow** means putting all your poses in one single \`PMposes\` notecard.

### Pros
*   Easy to see everything at once.
*   Good for smaller furniture (1-4 sitters).

### Structure
\`\`\`
# Pose: Sit
sitter 0: ...
sitter 1: ...
# Pose: Stand
sitter 0: ...
sitter 1: ...
\`\`\`
"@

New-Page "pmposes/sitter-specific.md" "Sitter-Specific" "Multiple notecard method" @"
**Sitter-Specific** means splitting your data into multiple notecards, e.g., \`PMposes\` (for sitter 0) and \`PMposes 1\` (for sitter 1).

### Pros
*   Organized for massive builds.
*   Less scrolling.

*Note: PoseMagic reads all PMposes* cards and merges them, so you can organize them however you like.*
"@

# --- SCRIPTS ---
New-Page "scripts/plugins.md" "Plugins" "Optional feature scripts" @"
Plugins add specific features to your furniture. They are **optional**.

## Common Plugins
*   **\`! PM - camera\`**: Adds camera presets to poses.
*   **\`! PM - prop\`**: Handles prop rezzing.
*   **\`! PM - security\`**: Adds Group/Owner/All access control.
*   **\`! PM - rlv\`**: Adds RLV capabilities.
"@

New-Page "scripts/utilities.md" "Utilities" "Tools for creators" @"
Utilities are scripts used during creation but usually removed before sale.

*   **\`! PM - anchor\`**: Visual helper sticks.
*   **\`! PM - setup\`**: The setup menu tool.
*   **\`missing-anim-finder\`**: Scans your notecards and tells you which animations are missing from inventory.
"@

# --- COMPATIBILITY ---
New-Page "compatibility/avsitter.md" "AVsitter Compatibility" "Migration guide" @"
PoseMagic is designed to be compatible with AVsitter workflows.

## Notecards
Your \`AVpos\` notecard is 100% compatible. Just rename it to \`PMposes\`.

## Script Mapping
| AVsitter | PoseMagic |
| :--- | :--- |
| \`[AV]sitA\` | \`! PM - core\` (per sitter) |
| \`[AV]sitB\` | \`! PM - dbc\` (per sitter) |
| \`[AV]helper\` | \`! PM - anchor\` |
"@

# --- ADVANCED ---
New-Page "advanced/camera.md" "Camera Control" "Setting camera angles" "Add the \`! PM - camera\` script to enable \`CAMERA\` lines in your notecard."
New-Page "advanced/rlv.md" "RLV Support" "Restrained Life Viewer features" "Add \`! PM - RLV\` to enable auto-sit and other RLV features."
New-Page "advanced/prop-rezzer.md" "Prop Rezzer" "Rezzing objects" "Use \`! PM - rezzer\` in the main object and \`! PM - rezzed\` in the prop."
New-Page "advanced/remote-control.md" "Remote Control" "Controlling furniture remotely" "Use \`! PM - control\` to trigger poses via chat."
New-Page "advanced/seat-selection.md" "Seat Selection" "Visual sit targets" "Use \`! PM - seatPicker\` to show click-to-sit targets."
New-Page "advanced/security.md" "Security" "Access control" "Use \`! PM - security\` to restrict access to Owner or Group."
New-Page "advanced/sequencer.md" "Sequencer" "Looping animations" "Use \`! PM - seq\` to create looping sequences of poses."

# --- REFERENCE ---
New-Page "reference/file-structure.md" "File Structure" "How files are organized" "Standard file naming conventions for PoseMagic."
New-Page "reference/link-messages.md" "Link Messages" "API documentation" "List of link messages for scripters."
New-Page "reference/menu-and-ui.md" "Menu & UI" "Menu system details" "How the dialog menu system works."

# --- META ---
New-Page "license.md" "License" "MPL 2.0" "PoseMagic is licensed under the Mozilla Public License 2.0."
New-Page "changelog.md" "Changelog" "Version history" "v1.0 - Initial Release"
New-Page "contributing.md" "Contributing" "How to help" "Contributions are welcome via GitHub."

# --- PUSH ---
Set-Location ..
Write-Host "`nPushing all new pages to GitHub..." -ForegroundColor Yellow
git add .
git commit -m "ADD: Generate all missing documentation pages"
git push origin main

Write-Host "DONE! All 404s should be fixed." -ForegroundColor Green
