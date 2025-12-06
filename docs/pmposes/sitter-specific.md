---
layout: page
title: "Sitter-Specific"
description: "Organizing data by sitter"
---

**Sitter-Specific** organization allows you to separate configuration files by seat. This is useful for keeping complex data organized.

### Naming Convention
*   **\PMposes\**: Put common directives and global settings here.
*   **\PMposes0\**: Data specific to Sitter 0.
*   **\PMposes1\**: Data specific to Sitter 1.
*   **\PMposes2\**: Data specific to Sitter 2.

### Overflow
If you need more space for a specific sitter, you can chain them just like continuous flow:
*   \PMposes0\ -> \PMposes0 1\ -> \PMposes0 2\
*   \PMposes1\ -> \PMposes1 1\ -> \PMposes1 2\

### Best For
*   Complex builds with distinct animations per seat.
*   Teams working on different sitters simultaneously.
