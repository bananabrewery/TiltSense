---
title: Welcome to TiltSense
description: Explore the official documentation of TiltSense — a powerful, customizable, and open-source fermentation monitoring system based on ESP32.
icon: material/home
---

<div align="center">
  <img src="../TiltSense/assets/logo-text.svg" alt="TiltSense" width="200" style="margin-bottom: 1.5rem;" />
</div>

# Welcome to the TiltSense Wiki

## Contents

- [Home](index.md)
- [Hardware Requirements](Hardware.md)
- [Assembly Instructions](Assembly.md)
- [Firmware Configuration and Installation](Firmware-Setup.md)
- [Device Usage and Features](Usage.md)
- [Development and Contributions](Development.md)
- [Frequently Asked Questions (FAQ)](FAQ.md)
- [Credits and Acknowledgements](Credits.md)

---

## What is TiltSense?

TiltSense is an advanced, flexible, and user-friendly fermentation monitoring system built around the powerful ESP32
microcontroller platform. It is designed specifically for homebrewers, fermentation hobbyists, and experimental brewers
who want to track their fermentation processes with precision and ease.

At its core, TiltSense reads data from multiple Tilt Hydrometers—both standard and Pro models—allowing simultaneous
monitoring of several fermenters. Beyond gravity readings, it supports additional sensors such as pressure sensors,
providing deeper insights into fermentation dynamics like pressure changes inside fermenting vessels.

One of TiltSense’s key strengths is its customizable firmware, which users can generate and tailor easily to their
specific hardware setup and integration preferences using the TiltSense Firmware Builder — a web application that
removes the complexity of manual configuration.

TiltSense integrates seamlessly with popular fermentation and automation platforms such as Brewfather and Home
Assistant, enabling remote data visualization, automation, and logging.

With its intuitive touchscreen interface housed in a compact, 3D-printed magnetic case, TiltSense combines portability,
ease of use, and advanced functionality into a single device that fits perfectly into any homebrew setup.

To get started, check out the sections below for detailed hardware lists, assembly instructions, firmware configuration,
and more!

---

## Features

### ✅ Multi-Tilt Hydrometer Support

TiltSense is capable of detecting and monitoring multiple [Tilt Hydrometers](https://tilthydrometer.com/)
simultaneously — including both **standard** and **Pro** models — across different fermenters. Each hydrometer’s data is
independently processed and displayed, allowing accurate real-time tracking of specific gravity and temperature for
multiple batches in parallel.

### 📡 Native Integration with Brewfather & Home Assistant

Seamless integration with **Brewfather** and **Home Assistant** enables automated data logging, visualization, and
advanced brewing workflows. TiltSense supports API-based communication with these platforms, requiring no additional
configuration once network parameters are set.

### 🌐 Built-in Web Configuration Interface

The device hosts a fully responsive, built-in web interface accessible from any browser on the local network. Users can
configure firmware settings, enabled sensors, data publishing endpoints, and more — without needing
to reflash or access the firmware directly.

### 🔀 Pressure Sensor Integration

TiltSense supports **pressure sensor** readings, combining gravity data from Tilt Hydrometers with optional pressure
sensors. This allows brewers to analyze fermentation dynamics such as pressure curves and pressure-compensated gravity
estimates, providing deeper insight into closed or pressurized fermentations.

### 🔋 Internal Battery Support

TiltSense features a compact Li-Ion/LiPo backup battery providing short-term power autonomy (~45 minutes). This is
intended for temporary mobility, system reboots, or brief outages — acting as a lightweight integrated UPS for safe
transitions and power resilience.

### 🧲 Custom Magnetic 3D-Printed Enclosure

The physical casing is designed specifically for practical use in brewing environments:

- Compact and durable
- 3D-printable with standard FDM printers
- Integrated magnets for easy mounting on fermentation chambers, kegerators, or metal surfaces  

All case designs are open-source and fully customizable.

### 💡 Intuitive Touchscreen Interface

The device includes a high-resolution capacitive touchscreen powered by **LVGL** (Light and Versatile Graphics Library).
Users can interact with a clean, real-time display featuring gravity plots, sensor status, visual alerts, and
swipe-based navigation.

### 💰 Cost-Effective

TiltSense is built entirely from affordable, off-the-shelf components based on the ESP32 platform. This makes it an
ideal low-cost solution for those looking for functionality without high expenses.

### 🛠️ Fully Open Source

The firmware, web interface, 3D-printed enclosure, and configuration tools are all fully open source. This ensures
accessibility for makers, brewers, and developers — without license fees or vendor lock-in.