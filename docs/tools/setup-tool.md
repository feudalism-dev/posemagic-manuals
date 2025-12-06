---
layout: page
title: "Setup Tool & Workflow"
description: "The professional way to create poses and props using the visual Setup Tool"
---

While you *can* edit the `PMposes` notecard manually, the most efficient workflow is to use the **Setup Tool** (`! PM - setup`) to visually position everything and generate the data for you.

## The Workflow Loop

1.  **Sit** on the furniture.
2.  **Adjust** your position using the stick/menu.
3.  **New Pose:** Save the position as a new pose in memory.
4.  **Dump:** Output the data to chat.
5.  **Copy/Paste** into your notecard.

---

## 1. Entering Setup Mode

1.  Drop the `! PM - setup` script into your furniture.
2.  (Optional) Drop `! PM - anchor` scripts if you want visual helper sticks.
3.  Touch the object and select **[ADJUST]** from the menu (only visible to owner/creator).

## 2. Creating a New Pose

Instead of guessing coordinates in a notecard:

1.  Sit on the furniture.
2.  Select **[HELPER]** to rez a helper stick (if installed) or use the buttons to move your avatar.
3.  Move your avatar to the perfect spot.
4.  In the menu, select **[NEW POSE]**.
5.  Type a name for your pose (e.g., "Relaxing").
6.  The tool now "remembers" this pose.

## 3. Adding Props

1.  Rez a prop object (e.g., a cup or book) and place it where you want it.
2.  In the Setup menu, select **[NEW PROP]**.
3.  The system will link the prop to the current pose.

## 4. Saving Your Work (The DUMP)

The Setup Tool holds changes in temporary memory. To save them permanently:

1.  Select **[DUMP]** from the menu.
2.  Choose **[Poses]** or **[Full]**.
3.  Copy the text output from your Local Chat.
4.  Open your `PMposes` notecard.
5.  Paste the new lines at the bottom.
6.  Save the notecard.

## 5. Cleanup

Once you are done setting up your furniture:
1.  Remove `! PM - setup`.
2.  Remove `! PM - anchor` (if used).

Your furniture is now ready for use!
