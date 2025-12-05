---
layout: page
title: "Minimal Chair Example"
description: "Create a single-sitter chair with one pose - the simplest PoseMagic setup"
---

This example shows you how to create the simplest possible PoseMagic furniture: a single-sitter chair with one pose.

## What You'll Build

- A chair that one avatar can sit on
- One pose: "SitRelax"
- Minimal configuration (just the essentials)

## Required Files

### Scripts (2 total)

1. **`! PM - core`** - Main controller
2. **`! PM - dbc`** - Database Controller for sitter 0

### Notecard

1. **`PMposes`** - Configuration notecard

### Animation

1. **`SitRelax`** - Your animation (or any animation name you prefer)

## Step 1: Add Scripts

1. Add `! PM - core` to your object
2. Add `! PM - dbc` to your object

{% include callouts.html type="note" title="Single Sitter" content="For a single sitter, you only need one `! PM - dbc` script. No need to number it - it automatically handles sitter 0." %}

## Step 2: Create PMposes Notecard

Create a notecard named `PMposes` with this content:

```
SITTER 0

POSE SitRelax|SitRelax
{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>
```

### Breaking Down the Notecard

**`SITTER 0`**
- Defines sitter slot 0 (the first and only sitter)

**`POSE SitRelax|SitRelax`**
- `SitRelax` - The pose name (what appears in the menu)
- `|` - Separator
- `SitRelax` - The animation name (must match your animation in inventory)

**`{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>`**
- `{SitRelax}` - Links this position to the "SitRelax" pose
- `<0.00, 0.00, 0.40>` - Position offset (X, Y, Z in meters)
- `<0, 0, 0>` - Rotation offset (X, Y, Z in degrees)

## Step 3: Adjust Position

The position `<0.00, 0.00, 0.40>` means:
- **X**: 0.00 (no forward/back offset)
- **Y**: 0.00 (no left/right offset)  
- **Z**: 0.40 (0.4 meters up from sit target)

You may need to adjust these values based on your furniture. Use the [Setup Tool]({{ '/tools/setup-tool' | relative_url }}) for visual adjustment.

## Step 4: Test

1. Save the notecard
2. Wait for "Loading..." messages to finish
3. Sit on your furniture
4. You should see a menu with "SitRelax"
5. Click it - your animation should play!

## Adding More Poses

To add more poses, simply add more `POSE` lines:

```
SITTER 0

POSE SitRelax|SitRelax
{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>

POSE SitCasual|SitCasual
{SitCasual}<0.00, 0.00, 0.40><0, 0, 5>

POSE SitFormal|SitFormal
{SitFormal}<0.00, 0.00, 0.40><0, 0, -5>
```

Each pose needs:
1. A `POSE` line with pose name and animation name
2. A `{PoseName}` line with position and rotation

## Troubleshooting

### Menu doesn't appear
- Check that `! PM - core` is installed
- Check that `! PM - dbc` is installed
- Verify notecard is named exactly `PMposes`

### Animation doesn't play
- Check animation name matches exactly (case-sensitive)
- Verify animation is in object inventory

### Wrong position
- Adjust the position values in the `{PoseName}` line
- Use Setup Tool for visual adjustment

## Next Steps

Once you have a working single-sitter chair:

- **[Add a second sitter]({{ '/examples/two-sitters-couch' | relative_url }})** - Create multi-sitter furniture
- **[Learn PMposes format]({{ '/pmposes/overview' | relative_url }})** - Master the notecard syntax
- **[Add plugins]({{ '/scripts/plugins' | relative_url }})** - Camera, props, RLV, etc.
