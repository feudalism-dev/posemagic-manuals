---
layout: page
title: "Scripts Overview"
description: "Complete catalog of PoseMagic scripts and their roles"
---

PoseMagic uses a modular script system. You only need the **primary scripts** for basic functionality. Everything else is optional plugins that add specific features.

## Script Categories

### 1. Primary Scripts (Mandatory)

These are the **absolute minimum** required for PoseMagic to work:

- **[`! PM - core`]({{ '/scripts/primary' | relative_url }})** - The brain of the system
- **[`! PM - dbc`]({{ '/scripts/primary' | relative_url }})** - Database Controller (one per sitter)

{% include callouts.html type="tip" title="Minimal Setup" content="For a basic chair, you only need `! PM - core` and one `! PM - dbc`. That's it!" %}

### 2. Plugins (Optional)

These scripts add specific features. Include them only if you need that functionality:

- **[Personal Adjustments]({{ '/scripts/plugins' | relative_url }})** - `! PM - user`, `! PM - user_db`
- **[Camera Control]({{ '/scripts/plugins' | relative_url }})** - `! PM - camera`
- **[Props System]({{ '/scripts/plugins' | relative_url }})** - `! PM - rezzer`, `! PM - rezzed`
- **[RLV Support]({{ '/scripts/plugins' | relative_url }})** - `! PM - RLV`, `! PM - RLV extra`
- **[Access Control]({{ '/scripts/plugins' | relative_url }})** - `! PM - security`
- **[Seat Selection]({{ '/scripts/plugins' | relative_url }})** - `! PM - seatPicker`
- **[Sequencer]({{ '/scripts/plugins' | relative_url }})** - `! PM - seq`
- And more...

### 3. Utilities (Development)

Tools for creators. Generally **not shipped** in final products:

- **[`! PM - anchor`]({{ '/scripts/utilities' | relative_url }})** - Helper object script
- **[`! PM - setup`]({{ '/scripts/utilities' | relative_url }})** - Adjustment tool
- **[`! PM - monitor`]({{ '/scripts/utilities' | relative_url }})** - Performance monitor
- And more...

## Quick Reference Table

| Script | Category | Required? | Purpose |
|--------|----------|-----------|---------|
| `! PM - core` | Primary | **YES** | Main controller |
| `! PM - dbc` | Primary | **YES** | Memory/database (per sitter) |
| `! PM - user` | Plugin | Recommended | Personal adjustments |
| `! PM - camera` | Plugin | No | Camera control |
| `! PM - rezzer` | Plugin | No | Prop rezzing |
| `! PM - security` | Plugin | No | Access control |
| `! PM - setup` | Utility | No | Creator tool |

## Choosing Your Scripts

### Minimal Setup (Chair)
- `! PM - core`
- `! PM - dbc`

### Recommended Setup (Most Furniture)
- `! PM - core`
- `! PM - dbc` (one per sitter)
- `! PM - user` (for personal adjustments)

### Full Featured (Complex Furniture)
- All primary scripts
- `! PM - user`
- `! PM - camera`
- `! PM - rezzer` + `! PM - rezzed`
- `! PM - security`
- `! PM - seatPicker` (if multiple sitters)

## Detailed Documentation

- **[Primary Scripts]({{ '/scripts/primary' | relative_url }})** - Core and DB Controller
- **[Plugins]({{ '/scripts/plugins' | relative_url }})** - All optional features
- **[Utilities]({{ '/scripts/utilities' | relative_url }})** - Development tools

## Script Naming Convention

PoseMagic scripts follow a consistent naming pattern:

- **Format**: `! PM - <name>`
- **Multiple sitters**: `! PM - dbc 1`, `! PM - dbc 2`, etc.
- **Special cases**: `! PM - db#` (database expansion)

The `! PM -` prefix ensures scripts sort to the top of inventory, just like AVsitter's `[AV]` prefix.

## From AVsitter?

See our [compatibility guide]({{ '/compatibility/avsitter' | relative_url }}) for script mapping from AVsitter to PoseMagic.
