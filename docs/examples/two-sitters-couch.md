---
layout: page
title: "Two Sitters Couch"
description: "How to set up a couch for two avatars with sync animations"
---

Building on the [Minimal Chair]({{ '/examples/minimal-chair' | relative_url }}), here is how to set up a 2-person couch.

## Requirements
*   **2 Core Scripts:** `! PM - core` (for Sitter 0) and `! PM - core 1` (for Sitter 1).
*   **2 DBC Scripts:** `! PM - dbc` (for Sitter 0) and `! PM - dbc 1` (for Sitter 1).
*   **Animations:** Single or Couple animations.

## Step 1: Scripts Setup
Rename copies of your scripts before dragging them in:

1.  **Sitter 0:**
    *   `! PM - core`
    *   `! PM - dbc`
2.  **Sitter 1:**
    *   `! PM - core 1`
    *   `! PM - dbc 1`

Drag all 4 scripts into the couch.

## Step 2: The Notecard (`PMposes`)
Here is a sample notecard for two people ("Cuddle" and "Chat"):

```
# Pose: Chat
sitter 0: pos=<0.5, 0, 0.5> rot=<0,0,0>
sitter 1: pos=<-0.5, 0, 0.5> rot=<0,0,0>
anim: sit_male @sitter0
anim: sit_female @sitter1

# Pose: Cuddle
sitter 0: pos=<0.2, 0, 0.5> rot=<0,0,45>
sitter 1: pos=<-0.2, 0, 0.5> rot=<0,0,-45>
anim: cuddle_m @sitter0
anim: cuddle_f @sitter1
```

## Step 3: Seat Selection (Optional)
If you want sitters to be able to pick their seat visually, add the `! PM - seatPicker` plugin.

1.  Add `! PM - seatPicker` to the object.
2.  Add `! PM - seatPicker 1` to the object.

Now, when someone clicks the couch, they will see sit targets for both seats.
