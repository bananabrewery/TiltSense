---
title: Assembly Instructions
description: Step-by-step guide to assembling the TiltSense device, including board installation, battery setup, and case closure.
icon: material/screwdriver
---

# Assembly Instructions

This section guides you through the complete assembly process of the TiltSense hardware. The 3D-printed enclosure is
designed for a precise and tool-light build process. With just a few basic steps, your device will be ready for firmware
installation and brewing use.

> 🛑 **Important:** Before starting, make sure you've reviewed the [Hardware Requirements](Hardware.md) and have all the
> components ready.

---

## Step-by-Step Instructions

### 1. Install the Heat-Set Inserts

Using a soldering iron, carefully install the **four brass heat-set inserts** vertically into the designated holes in
the base of the 3D-printed case. Apply light downward pressure until the insert is flush with the plastic. Allow to cool
before proceeding.

> 🔥 Tip: Use a heat-set insert tip or a flat soldering iron head for best results.

---

### 2. Place the ESP32-S3 Board

Insert the ESP32-S3 board into the enclosure, aligning the **USB-C port** with the matching opening on the case. Gently
press the board until it seats fully at the bottom, ensuring the **round display is perfectly aligned and flush with the
front bezel**.

---

### 3. (Optional) Connect and Place the Battery

If you're using a LiPo battery, connect it to the JST 1.25mm socket on the board, verifying the **polarity** before
connecting. Position the battery above the ESP32-S3 board, ensuring it does not obstruct the USB-C connector.


---

### 4. (Optional) Add Foam for Battery Stability

To prevent movement during handling, place a small piece of **soft, lightweight foam** alongside or on top of the
battery. This provides gentle pressure to keep the battery stable without stressing the wiring.

---

### 5. Attach the Top Cover

Align the top lid with the case and gently press it into place. The cover is designed to **secure the ESP32-S3 board
from the USB-C port side**, ensuring it remains fixed even during movement.

---

### 6. Secure the Case with Screws

Insert the **M2x5mm screws** into the mounting holes and tighten until snug. Do not overtighten to avoid damaging the
plastic or stripping the inserts.

---

## Done!

Your TiltSense device is now fully assembled and ready for firmware flashing and configuration. Proceed to
the [Firmware Setup](Firmware-Setup.md) section to complete the process.

> 🧪 Before closing the case, you may want to flash the firmware using the USB-C port to avoid reopening the enclosure.
> During the flashing process, you might need to press and hold the Boot button on the ESP32-S3 board to enable
> programming mode.