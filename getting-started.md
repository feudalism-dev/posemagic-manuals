---
layout: page
title: "Getting Started"
description: "Install PoseMagic and create your first working furniture piece"
---

## Prerequisites

Before you begin, make sure you have:

- **Second Life object creation permissions**
- **Basic understanding** of SL object inventory and notecards
- **Animations** ready to use in your furniture
- **A prim or linkset** to add scripts to

## Minimal Configuration

PoseMagic is designed to be simple. For a basic working chair, you only need **two scripts**:

### Required Scripts

1. **`! PM - core`** - The main controller (one per linkset)
2. **`! PM - dbc`** - Database Controller (one per sitter)

{% include callouts.html type="note" title="Script Naming" content="For multiple sitters, name the DB Controller scripts: `! PM - dbc` (sitter 0), `! PM - dbc 1` (sitter 1), `! PM - dbc 2` (sitter 2), etc." %}

## Step-by-Step Setup

### Step 1: Prepare Your Object

1. Create or select your furniture object
2. Add your animations to the object's inventory
3. Make sure the object is modifiable

### Step 2: Add Scripts

1. Add **`! PM - core`** to your object
2. Add **`! PM - dbc`** to your object (for sitter 0)

{% include callouts.html type="tip" title="Single Sitter" content="For a single-sitter chair, you only need `! PM - core` and `! PM - dbc`. That's it!" %}

### Step 3: Create PMposes Notecard

1. Create a new notecard named **`PMposes`** (or `! PMposes` to sort to top)
2. Add your first pose configuration:

```
SITTER 0

POSE SitRelax|SitRelax
{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>
```

**What this means:**
- `SITTER 0` - Defines sitter slot 0
- `POSE SitRelax|SitRelax` - Pose name and animation name
- `{SitRelax}<0.00, 0.00, 0.40><0, 0, 0>` - Position and rotation

### Step 4: Test

1. Save the notecard
2. Wait for scripts to load (watch chat for "Loading..." messages)
3. Sit on your furniture
4. You should see a menu with your pose!

{% include callouts.html type="warning" title="Troubleshooting" content="If the menu doesn't appear, check: 1) Notecard is named exactly `PMposes` or `! PMposes`, 2) Animation exists in inventory, 3) Scripts are running (check script errors)" %}

## Your First Successful Sit

When everything works, you should:

1. **See a menu** when you sit
2. **Play the animation** when you select the pose
3. **Be positioned correctly** on the furniture

Congratulations! You've created your first PoseMagic furniture piece.

## Next Steps

Now that you have a working chair, you can:

- **[Add more poses]({{ '/examples/minimal-chair' | relative_url }})** - Expand your pose menu
- **[Add a second sitter]({{ '/examples/two-sitters-couch' | relative_url }})** - Create multi-sitter furniture
- **[Learn about PMposes]({{ '/pmposes/overview' | relative_url }})** - Master the notecard format
- **[Explore plugins]({{ '/scripts/plugins' | relative_url }})** - Add features like camera, props, RLV

## Common Issues

### "PMposes notecard not found!"

**Solution:** Make sure the notecard is named exactly `PMposes` or `! PMposes` (with the exclamation mark and space).

### "Animation not found"

**Solution:** Check that the animation name in your notecard matches exactly the animation name in your inventory (case-sensitive).

### Menu doesn't appear

**Solutions:**
- Make sure you have `! PM - core` script installed
- Check that `! PM - dbc` is installed for sitter 0
- Verify the notecard loaded (check script chat messages)
- Try resetting the scripts

### Wrong position/rotation

**Solution:** Adjust the position and rotation values in the `{PoseName}` line of your notecard. Use the [Setup Tool]({{ '/tools/setup-tool' | relative_url }}) for visual adjustment.

## From AVsitter?

If you're coming from AVsitter, the good news is:

- **Your existing `AVpos` notecard works!** Just rename it to `PMposes`
- **Scripts are similar** - See our [compatibility guide]({{ '/compatibility/avsitter' | relative_url }})
- **Same syntax** - PMposes uses 100% compatible syntax

<a href="{{ '/compatibility/avsitter' | relative_url }}" class="btn btn-primary">View AVsitter Compatibility</a>
