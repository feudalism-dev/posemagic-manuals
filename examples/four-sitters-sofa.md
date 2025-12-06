---
layout: page
title: "Four Sitters Sofa"
description: "Scaling up to a 4-person sofa"
---

This example demonstrates the pattern for larger furniture. The rule is simple: **Add a set of scripts for every new sitter.**

## The Pattern

For a 4-sitter sofa, you need **4 sets** of Primary Scripts:

| Sitter | Core Script | DBC Script |
| :--- | :--- | :--- |
| **1 (0)** | `! PM - core` | `! PM - dbc` |
| **2 (1)** | `! PM - core 1` | `! PM - dbc 1` |
| **3 (2)** | `! PM - core 2` | `! PM - dbc 2` |
| **4 (3)** | `! PM - core 3` | `! PM - dbc 3` |

Total: 8 Scripts for 4 sitters.

## Notecard Structure
Your `PMposes` notecard will now define positions for all 4 sitters in each pose block.

```
# Pose: Hangout
sitter 0: pos=<1.0, 0, 0.5> rot=<0,0,0>
sitter 1: pos=<0.3, 0, 0.5> rot=<0,0,0>
sitter 2: pos=<-0.3, 0, 0.5> rot=<0,0,0>
sitter 3: pos=<-1.0, 0, 0.5> rot=<0,0,0>
anim: sit_A @sitter0
anim: sit_B @sitter1
anim: sit_C @sitter2
anim: sit_D @sitter3
```

{% include callouts.html type="tip" title="Performance" content="PoseMagic is very efficient. Even with 4 sitters (8 scripts), the memory impact is minimal because the heavy data is stored in the DBC scripts, leaving the Core scripts free to run logic." %}
