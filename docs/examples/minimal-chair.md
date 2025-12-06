---
layout: page
title: "Minimal Chair Example"
description: "Create a single-sitter chair with one pose - the simplest PoseMagic setup"
---

This guide will walk you through creating the absolute simplest PoseMagic object: a chair for one person.

## Prerequisites
*   A prim (box or chair object)
*   One animation (e.g., `sit_idle`)
*   The PoseMagic scripts

## Step 1: Prepare the Object
1.  Rez a box or your chair object.
2.  Drop your animation into the object contents.

## Step 2: The Notecard
Create a notecard named `PMposes` inside the object with the following content:

```
# Pose: Sit
sitter 0: pos=<0,0,0.6> rot=<0,0,0>
anim: sit_idle @sitter0
```

{% include callouts.html type="note" title="Explanation" content="This defines one pose named 'Sit'. It places Sitter 0 at 0.6m high and plays the 'sit_idle' animation." %}

## Step 3: The Scripts
Drop the following scripts into the object:

1.  **`! PM - core`** - Main controller (for Sitter 0)
2.  **`! PM - dbc`** - Database controller (for Sitter 0)

## Step 4: Test It
1.  Sit on the object.
2.  You should snap to the position defined in the notecard.
3.  The animation `sit_idle` should play.

## Troubleshooting
*   **Nothing happens?** Check that the scripts are running (Tick 'Running' in script window).
*   **Script Error?** Ensure your animation name in the notecard matches the file in inventory exactly.
