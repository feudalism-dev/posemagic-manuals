---
layout: page
title: "PMposes Notecard Overview"
description: "Learn about the PMposes notecard format - 100% compatible with AVpos"
---

The **PMposes** notecard is the heart of your PoseMagic configuration. It defines all your poses, positions, rotations, menus, and more.

## 100% AVpos Compatible

{% include callouts.html type="tip" title="Coming from AVsitter?" content="Your existing `AVpos` notecard works with PoseMagic! Just rename it to `PMposes` and you're ready to go. The syntax is identical." %}

## Notecard Naming

You can use either format:

- **`PMposes`** - Standard name
- **`! PMposes`** - With exclamation mark (sorts to top of inventory)

For multiple notecards:
- `PMposes` (or `! PMposes`)
- `PMposes 1` (or `! PMposes 1`)
- `PMposes 2` (or `! PMposes 2`)
- etc.

## Basic Structure

A minimal PMposes notecard looks like this:

```
SITTER 0

POSE SitRelax|SitRelax
{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>
```

### Components

**`SITTER 0`**
- Defines a sitter slot (0, 1, 2, etc.)
- Each sitter can have its own poses

**`POSE SitRelax|SitRelax`**
- `POSE` - Command for a single-avatar pose
- `SitRelax` - Pose name (appears in menu)
- `|` - Separator
- `SitRelax` - Animation name (must match inventory)

**`{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>`**
- `{SitRelax}` - Links to pose name
- `<0.00, 0.00, 0.40>` - Position (X, Y, Z meters)
- `<0, 0, 0>` - Rotation (X, Y, Z degrees)

## Key Commands

### SITTER
Defines a sitter slot:
```
SITTER 0|Sitter Name|M
```
- `0` - Sitter index
- `Sitter Name` - Optional name
- `M` or `F` - Optional gender (M=Male, F=Female)

### POSE
Single-avatar pose:
```
POSE PoseName|AnimationName
```

### SYNC
Synchronized pose (multiple avatars):
```
SYNC SyncName|AnimationName
```

### MENU
Create a submenu:
```
MENU MenuName
```

### BUTTON
Custom button/action:
```
BUTTON ButtonName|LinkMessage|OptionalData
```

## Position and Rotation

Position/rotation lines link to poses:
```
{PoseName}<X, Y, Z><X, Y, Z>
```

- **Position**: Offset from sit target in meters
- **Rotation**: Rotation offset in degrees

## Multiple Sitters

For multiple sitters, define each one:

```
SITTER 0

POSE SitLeft|SitLeft
{SitLeft}<0.10, -0.20, 0.40><0, 0, 15>

SITTER 1

POSE SitRight|SitRight
{SitRight}<-0.10, 0.20, 0.40><0, 0, -15>
```

## Multiple Notecards

PoseMagic supports multiple notecards:

- **Continuous Flow**: All poses in one notecard
- **Sitter-Specific**: Split by sitter across multiple notecards

See:
- **[Continuous Flow]({{ '/pmposes/continuous-flow' | relative_url }})** - Single notecard strategy
- **[Sitter-Specific]({{ '/pmposes/sitter-specific' | relative_url }})** - Multi-notecard strategy

## Advanced Features

PMposes supports many advanced features:

- **Camera settings** - Per-pose camera angles
- **Props** - Rez props with poses
- **Sequences** - Animation sequences
- **Menus** - Submenus and navigation
- **Buttons** - Custom actions

See the [Advanced]({{ '/advanced/camera' | relative_url }}) section for details.

## Best Practices

1. **Keep pose names unique** - No duplicates
2. **Match animation names exactly** - Case-sensitive
3. **Test incrementally** - Add poses one at a time
4. **Use comments** - Add notes with `#` (if supported)
5. **Organize logically** - Group related poses

## Examples

- **[Minimal Chair]({{ '/examples/minimal-chair' | relative_url }})** - Single pose example
- **[Two Sitters]({{ '/examples/two-sitters-couch' | relative_url }})** - Multi-sitter example
- **[Four Sitters]({{ '/examples/four-sitters-sofa' | relative_url }})** - Complex setup

## Troubleshooting

### Notecard not loading
- Check name is exactly `PMposes` or `! PMposes`
- Verify notecard is in object inventory
- Check script chat for error messages

### Poses not appearing
- Verify `SITTER` line matches your sitter number
- Check `POSE` line format is correct
- Ensure animation exists in inventory

### Wrong positions
- Adjust position/rotation values
- Use [Setup Tool]({{ '/tools/setup-tool' | relative_url }}) for visual adjustment

## Next Steps

- **[Continuous Flow]({{ '/pmposes/continuous-flow' | relative_url }})** - Learn single notecard strategy
- **[Sitter-Specific]({{ '/pmposes/sitter-specific' | relative_url }})** - Learn multi-notecard strategy
- **[Examples]({{ '/examples/minimal-chair' | relative_url }})** - See real-world examples
