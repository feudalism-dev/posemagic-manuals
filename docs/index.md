---
layout: page
title: "PoseMagic - Your Animations. Unbound."
description: "Break free from animation limits. Unlimited poses, sitters, and props with PoseMagic."
---

<div class="hero">
  <h1>YOUR ANIMATIONS. UNBOUND.</h1>
  <p class="lead">
    Stop letting script limits dictate your creativity. Whether you are building complex furniture, roleplay sets, or interactive scenes, PoseMagic sets your content free.
  </p>
  <p class="lead">
    Experience a system that handles 5,000+ poses, eliminates sitter limits via Smart Pagination, and manages memory dynamically—all while staying 100% compatible with your existing workflows.
  </p>
  <div class="hero-cta">
    <a href="{{ '/getting-started' | relative_url }}" class="btn btn-primary">Get Started</a>
    <a href="{{ '/examples/minimal-chair' | relative_url }}" class="btn btn-secondary">View Examples</a>
  </div>
</div>

## Break Free from Limitations

PoseMagic is a complete rewrite and improvement of AVsitter2, designed to **break the chains** of restrictive limits that have constrained Second Life furniture creators for years.

### What Makes PoseMagic Different?

**Unlimited Poses**
- No more 230-250 pose limit
- Expandable memory system using Linkset Data
- Handle thousands of poses without stack-heap errors

**Unlimited Sitters**
- Smart pagination system handles more than 10 sitters
- No hard-coded limits
- Scale from a single chair to massive roleplay sets

**Unlimited Props**
- No 100 prop limit
- Rez props dynamically as needed
- Full control over prop management

**Multiple Notecards**
- Split your configuration across multiple notecards
- Use `PMposes`, `PMposes 1`, `PMposes 2`, etc.
- Organize large setups logically

**100% Compatible**
- PMposes syntax is identical to AVpos
- Just rename your notecard and you're ready
- All your existing configurations work immediately

## Quick Start

{% include callouts.html type="tip" title="New to PoseMagic?" content="If you're coming from AVsitter, you can literally just rename your `AVpos` notecard to `PMposes` and it will work. Then you can start adding more notecards, more poses, and breaking free from the old limits!" %}

### Minimal Setup

For a basic working chair, you only need:

1. **`! PM - core`** - The brain of the system (one per sitter)
2. **`! PM - dbc`** - Database Controller (one per sitter)

That's it! Everything else is optional.

<a href="{{ '/getting-started' | relative_url }}" class="btn btn-primary">Start with Getting Started</a>

## Progressive Examples

Learn by building:

1. **[Minimal Chair]({{ '/examples/minimal-chair' | relative_url }})** - Single sitter, one pose, minimal configuration
2. **[Two Sitters Couch]({{ '/examples/two-sitters-couch' | relative_url }})** - Add a second sitter, multiple poses
3. **[Four Sitters Sofa]({{ '/examples/four-sitters-sofa' | relative_url }})** - Complex multi-sitter setup
4. **[Expanding to More]({{ '/examples/expanding-to-more-sitters' | relative_url }})** - Scale to unlimited sitters

## Key Features

### Script System

- **Primary Scripts** (Mandatory): Core and DB Controller
- **Plugins** (Optional): Camera, RLV, Props, Security, and more
- **Utilities** (Development): Tools for creators

<a href="{{ '/scripts/overview' | relative_url }}">View Complete Script Catalog</a>

### PMposes Notecard

- **Continuous Flow**: Single notecard for all poses
- **Sitter-Specific**: Split across multiple notecards
- **100% AVpos Compatible**: Just rename and go

<a href="{{ '/pmposes/overview' | relative_url }}">Learn About PMposes</a>

### AVsitter Compatibility

Coming from AVsitter? We've got you covered.

- Script mapping guide
- Notecard compatibility
- Migration path

<a href="{{ '/compatibility/avsitter' | relative_url }}">View Compatibility Guide</a>

## Why PoseMagic?

### The Problem with AVsitter

- **230-250 pose limit** - Hit the wall on complex furniture
- **Single notecard** - Everything in one file
- **100 prop limit** - Can't add more props
- **~10 sitter limit** - Can't scale to large sets
- **Stack-heap errors** - Memory management issues

### The PoseMagic Solution

- **Unlimited poses** - Expandable memory system
- **Multiple notecards** - Organize as you need
- **Unlimited props** - No artificial limits
- **Unlimited sitters** - Smart pagination
- **Better memory** - Linkset Data integration

## Ready to Get Started?

<div class="hero-cta" style="margin-top: 3rem;">
  <a href="{{ '/getting-started' | relative_url }}" class="btn btn-primary">Get Started Now</a>
  <a href="{{ '/examples/minimal-chair' | relative_url }}" class="btn btn-secondary">Try the Minimal Chair Example</a>
</div>
