---
layout: page
title: "Primary Scripts"
description: "The mandatory scripts required for any PoseMagic object"
---

The **Primary Scripts** are the foundation of PoseMagic. You cannot build a PoseMagic object without them.

## Architecture Note
Unlike older systems (AVsitter), PoseMagic is **distributed**. This means you need a set of primary scripts **for each sitter**.

If you have a 2-person couch, you need:
*   2 copies of `! PM - core` (one for Sitter 0, one for Sitter 1)
*   2 copies of `! PM - dbc` (one for Sitter 0, one for Sitter 1)

---

## 1. `! PM - core`
**Role:** The Brain  
**Mandatory:** YES (One per sitter)

The Core script handles the logic for a single avatar. It manages:
*   Detecting when someone sits
*   Triggering animations
*   Sending link messages to other scripts
*   Coordinating with the Menu system

### Setup
You must place one `! PM - core` script in your linkset for every seat you want to support.

*   **Sitter 0:** Name it `! PM - core`
*   **Sitter 1:** Name it `! PM - core 1`
*   **Sitter 2:** Name it `! PM - core 2`
*   ...and so on.

---

## 2. `! PM - dbc`
**Role:** Database Controller  
**Mandatory:** YES (One per sitter)

The DBC script acts as the memory for a single avatar. It reads the notecards (`PMposes`) and stores:
*   Pose names
*   Positions and Rotations
*   Menu structures

### Setup
Like the Core script, you need one DBC for every seat.

*   **Sitter 0:** Name it `! PM - dbc`
*   **Sitter 1:** Name it `! PM - dbc 1`
*   **Sitter 2:** Name it `! PM - dbc 2`

### Why Split Them?
By splitting the "Brain" (Core) and the "Memory" (DBC), PoseMagic avoids the stack-heap errors common in other systems. The DBC holds the data, and the Core does the work.
