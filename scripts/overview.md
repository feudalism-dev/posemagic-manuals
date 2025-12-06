---
layout: page
title: "Scripts Overview"
description: "Complete catalog of PoseMagic scripts and their roles"
---

PoseMagic divides its scripts into three categories: **Primary** (Mandatory), **Plugins** (Optional), and **Utilities** (Development).

## Quick Reference

| Script Name | Type | Mandatory? | Role |
| :--- | :--- | :--- | :--- |
| **[`! PM - core`]({{ '/scripts/primary' | relative_url }})** | Primary | **YES** | Main controller (One per sitter) |
| **[`! PM - dbc`]({{ '/scripts/primary' | relative_url }})** | Primary | **YES** | Database Controller (One per sitter) |
| [`! PM - camera`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Camera control |
| [`! PM - control`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Remote control |
| [`! PM - faces`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Facial expressions |
| [`! PM - menu`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Standalone menu |
| [`! PM - rezzer`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Prop rezzer |
| [`! PM - rezzed`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Prop receiver |
| [`! PM - RLV`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | RLV support |
| [`! PM - root`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Touch forwarder |
| [`! PM - seatPicker`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Visual seat selection |
| [`! PM - security`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Access control |
| [`! PM - seq`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Sequencer |
| [`! PM - setup`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Adjustment tool |
| [`! PM - user`]({{ '/scripts/plugins' | relative_url }}) | Plugin | Rec. | User adjustments |
| [`! PM - user_db`]({{ '/scripts/plugins' | relative_url }}) | Plugin | No | Adjustment storage |
| [`! PM - anchor`]({{ '/scripts/utilities' | relative_url }}) | Utility | No | Setup helper |
| `bulk-deleter` | Utility | No | Cleanup tool |
| `missing-anim-finder` | Utility | No | Debugging |
| `monitor` | Utility | No | Performance monitoring |
| `anim-shifter` | Utility | No | Mass adjustment |

{% include callouts.html type="tip" title="Minimal Setup" content="For a basic chair, you only need `! PM - core` and `! PM - dbc` for each sitter. That's it!" %}
