---
title: Device Usage and Features
description: Learn how to interact with the TiltSense touchscreen interface and explore the features that make fermentation monitoring simple and efficient.
icon: material/gesture-tap-button
---

# Device Usage and Features

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Screen.svg" alt="TiltSense Screen" style="max-width: 400px; width: 100%;" />
</div>

TiltSense offers a clean, intuitive, and fully touch-based interface for monitoring and managing your active
fermentations. This section explains how to use the device and outlines the main features available in the current
firmware version.

---

## 👆 Touchscreen Navigation

The TiltSense display is fully capacitive and responds to light finger taps. The screen is divided into **three main
interactive zones**:

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Interactions.svg" alt="TiltSense Screen" style="max-width: 750px; width: 100%;" />
</div>
- **Left section** — Tap to navigate to the **previous Tilt** in the list.
- **Right section** — Tap to navigate to the **next Tilt**.
- **Bottom section** — Tap to **enable or disable** the selected Tilt device.

This allows fast and intuitive switching between hydrometers without needing buttons or menus.

---

## ⚙️ Core Functionality

### 📡 Sensor Readings

- When a Tilt device is **enabled**, the screen displays its live readings:
    - **Gravity (SG)**
    - **Temperature (°C or °F)**

- Sensor data is updated every **5 seconds** to optimize device performance and minimize processing load.

- If pressure monitoring is configured via **Home Assistant integration**, and linked to the selected Tilt, a **pressure
  reading** is also shown alongside gravity and temperature.

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20With%20Pressure.svg" alt="TiltSense Screen" style="max-width: 400px; width: 100%;" />
</div>

### 💤 Sleep Mode

- The screen will automatically enter **sleep mode** after **2 minutes of inactivity** to reduce power consumption.
- To wake the screen, simply **tap anywhere**. The device will return to the same screen it was displaying before sleep.

### 📴 Enabling / Disabling Tilt Devices

- Tapping the **bottom section** of the screen toggles the selected Tilt between **enabled** and **disabled**.
- When disabled:
    - The Tilt is excluded from display rotation and integration updates.
    - No data is sent to Brewfather or Home Assistant.
    - The UI shows the Tilt color as **grayed out** to indicate its inactive state.

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Disabled.svg" alt="TiltSense Screen" style="max-width: 400px; width: 100%;" />
</div>

This feature is useful when a Tilt is not in use or is powered off, helping to reduce system workload.

---

## 🔁 Brewfather Integration

- When Brewfather integration is enabled and configured, TiltSense transmits sensor data every **15 minutes**, following
  Brewfather’s official specification.

---

## 🏠 Home Assistant Integration

If the Home Assistant integration is enabled, TiltSense leverages the native capabilities
of [ESPHome](https://esphome.io/) to send real-time sensor data directly to Home Assistant.

This allows users to:

- **Monitor fermentation in real time** through Home Assistant dashboards.
- **Create automations or alerts** based on gravity, temperature, or pressure readings.
- **Combine Tilt data with other sensors**, such as temperature probes, pressure sensors, or smart plugs.

No additional configuration is needed on the device side beyond enabling ESPHome integration in Home Assistant — all
sensor data will be available as native entities.

> 💡 Pressure sensors configured in TiltSense are also exposed to Home Assistant as real-time entities.

---

TiltSense is designed for simplicity and responsiveness — enabling brewers to get a quick view of their fermentation
status at a glance, with minimal interaction.