Mod that tracks your items for the speedruns of the "All Items" categories.

# Installation

The patching process is the same as in keucher mod. Here is a quick tutorial:

1. Download the [latest version of the mod](https://github.com/nhaar/deltarune-items-tracker/releases/latest). In the `assets` section, choose the patch you will use (check step 4 if in doubt)
2. Choose the ROM patcher you prefer, if you don't have any, [this one is recommended](https://www.marcrobledo.com/RomPatcher.js/)
3. For the "ROM file", select the `data.win` from your DELTARUNE game files.
4. For the "Patch file", select the patch appropriate for your DELTARUNE version. For example, for version 1.15, it is the patch that begins with `demo-1.15`
5. Apply the patch, and save the generated file as `data.win` in the game folder, and the mod will be installed

# Utilization

In Chapter 1 and 2, the game will track the items collected in the top left corner.

If you wish to reset your progress, you must go to your DELTARUNE saves folder and delete the file `itemtracker.ini`.

You can open the file and see which items have been acquired (with a 1) or have not been acquired (with a 0)

# Building the mod

Setup steps:
1. Download the source code
2. Download the bleeding edge version of Undertale Mod Tool
3. Download [UMP](https://github.com/nhaar/UMP)
4. Drop `ump.csx` in the same folder as `Build.csx`

Build steps:
1. Load the `data.win` you will change
2. Apply the `Build.csx` script
3. Save the `data.win`