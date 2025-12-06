---
layout: page
title: "PMposes Notecard Overview"
description: "The configuration file that powers PoseMagic"
---

The `PMposes` notecard is the database for your furniture. It stores every pose, position, rotation, and prop.

## Format Basics

PoseMagic uses a block-based format. Each block starts with a pose definition and contains lines for each sitter.

```
# Pose: MyPoseName
sitter 0: pos=<x,y,z> rot=<x,y,z>
sitter 1: pos=<x,y,z> rot=<x,y,z>
anim: animation_name_A @sitter0
anim: animation_name_B @sitter1
```

## How to Create It
While you can type this manually, we strongly recommend using the **[Setup Tool]({{ '/tools/setup-tool' | relative_url }})**.

1.  Position avatars visually.
2.  Use the **[DUMP]** command.
3.  Paste the result here.

## Key Commands

### SITTER
Defines a specific seat.
`SITTER 0`

### POSE
Starts a new pose block.
`POSE PoseName|AnimationName`

### PROP
Rez a prop for this pose.
`PROP object_name|pos=<x,y,z>|rot=<x,y,z>`

## Multiple Notecards
For large builds, you can split this into multiple files:
*   `PMposes`
*   `PMposes 1`
*   `PMposes 2`

PoseMagic reads them all sequentially.
