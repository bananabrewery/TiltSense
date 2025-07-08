---
title: Frequently Asked Questions (FAQ)
description: Answers to common questions about using, assembling, and configuring TiltSense.
icon: material/help-circle
---

# Frequently Asked Questions (FAQ)

Here you’ll find answers to the most common questions about TiltSense. This section will grow over time as the community provides feedback.

---

### 📦 What is TiltSense?

TiltSense is an open-source fermentation monitoring system based on ESP32-S3, designed to work with Tilt Hydrometers and other sensors like pressure probes. It combines real-time data logging, local visualization, and integration with platforms like Brewfather and Home Assistant.

---

### ⚙️ Can I use TiltSense without a Tilt Hydrometer?

No. TiltSense is specifically designed to read data from Tilt Hydrometers. However, it can also integrate pressure sensors for enhanced fermentation tracking when used **in addition to** Tilt data.

---

### 🔋 How long does the internal battery last?

The internal battery is designed as a backup/emergency power source. It typically lasts **around 45 minutes**, making it ideal for safely moving the device between setups or as a small UPS in case of power loss.

---

### 🧲 How is the device mounted?

TiltSense is housed in a custom 3D-printed enclosure with an embedded **20mm neodymium magnet**. This allows for easy mounting on stainless steel fermenters or fridge walls.

---

### 🧪 Do I need to keep TiltSense connected all the time?

Yes, for full fermentation tracking, you should keep TiltSense **powered via USB**. While the battery can provide short-term operation, long-term use requires a stable power supply.

---

### 🧰 Do I need to flash the firmware before assembling the case?

It is **strongly recommended** to flash the firmware **before closing the enclosure**, as the USB-C port and Boot button may be harder to access afterward.

---

### 🌐 Can I access TiltSense from my browser?

Yes. TiltSense includes a **built-in web interface** served locally over Wi-Fi. You can use this interface to view data, configure settings, and connect to Brewfather or Home Assistant.

---

### 🧠 Do I need to know how to code?

No. The [Firmware Builder](https://example.com) allows you to generate custom firmware without writing code. Advanced users can modify the YAML directly if needed.

---

### 🛠️ Can I contribute to the project?

Absolutely! See the [Development and Contributions](Development.md) section to learn how to get involved.

---

### 🗣️ Where can I ask questions or suggest features?

You can join the discussion on GitHub here:  
👉 [https://github.com/bananabrewery/TiltSense/discussions](https://github.com/bananabrewery/TiltSense/discussions)

You can also report bugs or open feature requests via Issues:  
👉 [https://github.com/bananabrewery/TiltSense/issues](https://github.com/bananabrewery/TiltSense/issues)

---

*Didn't find your question? Let us know via a GitHub discussion, and we’ll update this page accordingly!*