---
layout: page
title: "AVsitter Compatibility"
description: "How PoseMagic relates to AVsitter and how to migrate"
---

## 100% Notecard Compatible

The best news: **PMposes uses identical syntax to AVpos**. 

### Quick Migration

1. **Rename your notecard**: `AVpos` → `PMposes` (or `! PMposes`)
2. **That's it!** Your configuration works immediately

{% include callouts.html type="tip" title="Pro Tip" content="Use `! PMposes` (with exclamation mark) to make the notecard appear at the top of your inventory list, just like AVsitter's `! AVpos`." %}

## Script Mapping

PoseMagic scripts map directly to AVsitter scripts:

| PoseMagic Script | AVsitter Script | Notes |
|-----------------|-----------------|-------|
| `! PM - core` | `[AV]sitA` | Main controller |
| `! PM - dbc` | `[AV]sitB` | Database/memory controller |
| `! PM - anchor` | `[AV]helper` | Helper object script |
| `! PM - rezzer` | `[AV]prop` | Prop rezzer |
| `! PM - rezzed` | `[AV]object` | Prop receiver (in prop) |
| `! PM - seatPicker` | `[AV]select` | Seat selection menu |
| `! PM - security` | `[AV]root-security` | Access control |
| `! PM - seq` | `[AV]sequence` | Animation sequencer |
| `! PM - setup` | `[AV]adjust` | Adjustment tool |
| `! PM - camera` | `[AV]camera` | Camera control |
| `! PM - faces` | `[AV]faces` | Facial expressions |
| `! PM - menu` | `[AV]menu` | Standalone menu |
| `! PM - RLV` | `[AV]RLV` | RLV support |
| `! PM - RLV extra` | `[AV]RLV extra` | Advanced RLV |
| `! PM - root` | `[AV]root` | Root touch forwarder |

## Key Differences

### What's Better in PoseMagic

**Unlimited Poses**
- AVsitter: ~230-250 pose limit
- PoseMagic: Unlimited (expandable memory)

**Multiple Notecards**
- AVsitter: Single `AVpos` notecard
- PoseMagic: `PMposes`, `PMposes 1`, `PMposes 2`, etc.

**Unlimited Props**
- AVsitter: 100 prop limit
- PoseMagic: No limit

**Unlimited Sitters**
- AVsitter: ~10 sitter limit
- PoseMagic: Unlimited (smart pagination)

**Better Memory**
- AVsitter: Stack-heap errors common
- PoseMagic: Linkset Data integration, better memory management

### What's the Same

- **Notecard syntax** - 100% compatible
- **Pose definitions** - Same format
- **Position/rotation** - Same format
- **Menu system** - Same structure
- **Link messages** - Compatible protocol

## Migration Path

### Step 1: Rename Notecard

Simply rename your `AVpos` notecard to `PMposes`:

```
AVpos → PMposes
```

Or use `! PMposes` to sort to the top of inventory.

### Step 2: Replace Scripts

Replace AVsitter scripts with PoseMagic equivalents:

- `[AV]sitA` → `! PM - core`
- `[AV]sitB` → `! PM - dbc` (one per sitter)

### Step 3: Add Optional Features

If you were using AVsitter plugins, add the PoseMagic equivalents:

- `[AV]prop` → `! PM - rezzer`
- `[AV]select` → `! PM - seatPicker`
- `[AV]root-security` → `! PM - security`
- etc.

### Step 4: Expand!

Now you can:

- **Add more notecards** - Split your configuration
- **Add more poses** - No 250 limit!
- **Add more sitters** - No 10 limit!
- **Add more props** - No 100 limit!

## Feature Comparison

| Feature | AVsitter | PoseMagic |
|---------|----------|-----------|
| Max Poses | ~230-250 | Unlimited |
| Notecards | 1 (`AVpos`) | Multiple (`PMposes`, `PMposes 1`, etc.) |
| Max Props | 100 | Unlimited |
| Max Sitters | ~10 | Unlimited (pagination) |
| Memory System | Script memory only | Linkset Data + Script memory |
| Stack-Heap Errors | Common | Rare (better management) |
| Personal Adjustments | Limited | Unlimited (with `user_db`) |

## Questions?

If you have questions about compatibility or migration:

1. Check the [Getting Started]({{ '/getting-started' | relative_url }}) guide
2. Review the [Script Overview]({{ '/scripts/overview' | relative_url }})
3. Try the [Minimal Chair Example]({{ '/examples/minimal-chair' | relative_url }})

{% include callouts.html type="note" title="Need Help?" content="Your existing AVsitter configurations will work with PoseMagic. The syntax is 100% compatible - just rename the notecard and replace the scripts!" %}
