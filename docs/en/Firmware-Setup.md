---
title: Firmware Configuration and Installation
description: Learn how to generate and install custom firmware for your TiltSense device using the official web-based firmware builder.
icon: material/memory
---

# 🔧 Firmware Configuration and Installation

TiltSense provides an official **web-based Firmware Builder** that allows you to easily generate custom firmware for
your device — without needing to write or modify any code.

The application prepares a custom version of the firmware for your device based on your choices, checks that everything
is correctly filled in, and gives you a file ready to install.

---

## 🌐 What is the Firmware Builder?

The Firmware Builder is a simple and guided web tool that helps you create a personalized firmware for your TiltSense
device, based on your preferences and setup.

With just a few steps, you can:

- Select one or more Tilt hydrometers to monitor.
- Configure each Tilt by color, and mark if it’s a Tilt Pro.
- Set up your Wi-Fi network so TiltSense can connect and send data.
- Enable integration with Brewfather to track your fermentation automatically.
- Enable integration with Home Assistant for home automation and live monitoring.
- Add support for a pressure sensor, if available in your setup.

Once configured, the tool will generate a custom firmware file that includes everything you need — and you can either
download it for manual use or let the builder compile it for you, ready to install.

You can access the builder here:  
👉 **[Firmware Builder](https://bananabrewery.github.io/TiltSenseFirmwareBuilder)**

[https://bananabrewery.github.io/TiltSenseFirmwareBuilder](https://bananabrewery.github.io/TiltSenseFirmwareBuilder)

---

## 🧩 Step-by-Step Configuration

### Select Tilt Devices (Required)

To use TiltSense, you must select **at least one Tilt hydrometer**.

For each Tilt you enable:

- You can specify whether it’s a **Tilt Pro** or a standard model.
- If you have multiple Tilts, you can **arrange their order** using drag-and-drop. This defines the order in which they
  will appear on the TiltSense screen.
- A **"Restore Order"** button is available to reset the original sorting if needed.

Not enabled Tilt devices will not appear on the screen or send any data, which helps improve performance and reduce
unnecessary communication.

---

### Wi-Fi Configuration (Optional)

You can provide your **Wi-Fi SSID and password** to allow TiltSense to connect to your local network.

This is required for:

- Accessing the **web interface** at [`http://tiltsense.local`](http://tiltsense.local)
- Sending data to Brewfather or Home Assistant

If omitted, TiltSense will operate in offline mode.

---

### Brewfather Integration (Optional)

Enable this option if you want TiltSense to send your fermentation data directly to your **Brewfather account**.

To set it up, you’ll need to provide:

- Your **Custom Stream ID** — this is the API key used to send data to Brewfather (e.g., `a1b2C3d4E5f6G7`).

TiltSense will send the following readings:

- **Gravity**
- **Temperature**
- **Pressure** (if a pressure sensor is configured and enabled)

Readings are sent every **15 minutes**, following Brewfather’s official specification.

> 🔗 You can find your Custom Stream ID and learn how to use it in the official Brewfather documentation:  
> [docs.brewfather.app/integrations/custom-stream](https://docs.brewfather.app/integrations/custom-stream)

---

### Home Assistant Integration (Optional)

When enabled, TiltSense connects to your local network and integrates directly with **Home Assistant** as a native ESPHome node.

TiltSense exposes the following entities to Home Assistant:

- **Gravity** and **Temperature** readings for each enabled Tilt.
- **Switches** to enable or disable each Tilt remotely — just like using the device’s touchscreen.
- **Battery voltage** and an estimated **battery charge percentage**.

This allows for full monitoring and control of your fermentation process directly from Home Assistant.

> 🧠 No advanced setup is required — just add TiltSense through the standard **ESPHome integration** in Home Assistant.

---

### Pressure Sensor Integration - Home Assistant (Optional)

If you enable the Home Assistant integration, you can also link **external pressure sensors** to TiltSense.

Once this option is activated:

- A new section will appear showing the list of **enabled Tilt hydrometers**.
- For each active Tilt, you can enter the corresponding **Home Assistant entity ID** of a pressure sensor (e.g., `sensor.pressure_sensor_current_pressure`).
- These sensors must already exist and be available in your Home Assistant setup.

By providing a pressure entity for a given Tilt:

- **Live pressure readings** will be displayed alongside gravity and temperature on the TiltSense screen.
- The pressure value will also be **sent to Brewfather** every 15 minutes, if Brewfather integration is enabled.

> 🧠 This setup allows advanced fermentation profiling under pressure, combining gravity, temperature, and pressure in one view.

---

## ✅ Configuration Validation

Before generating the firmware, the application presents a **Configuration Summary** showing all selected options.

This summary serves as a final validation step to ensure consistency across your setup. For example:

- All required fields must be filled.
- Wi-Fi must be configured if Brewfather or Home Assistant integration is enabled.
- There should be no conflicting or incomplete settings.

Once the configuration passes validation:

- The **"Generate Firmware File"** button will be enabled.
- A fully tailored **ESPHome YAML file** will be created based on your setup.

The YAML file is shown in a built-in code viewer, allowing you to:

- **Preview** the complete configuration.
- **Copy** the YAML if you want to compile and flash the firmware using your own ESPHome setup.
- **Download** the file for offline use or manual installation.

> 🛠️ Advanced users can manage everything manually with ESPHome.  
> For everyone else, you can continue to the next step and let the app **compile the firmware for you automatically**.

---

## 🛠️ Build and Download Firmware

Once your configuration has been validated successfully, you can proceed to compile the firmware.

### How It Works

- The app will guide you to the **Firmware Compilation** section.
- Firmware compilation is a resource-intensive process and may take several minutes (up to **10 minutes**).
- To ensure a smooth experience, the firmware is **compiled in the background**.
- Once ready, the compiled firmware file (`firmware.factory.bin`) will be sent to your **email inbox**.

### Why We Ask for Your Email

- Your **email address is required** to send you the compiled firmware.
- The address is **not stored or saved** — it's used only once to deliver your custom firmware.
- Without a valid email, the compilation process cannot be completed.

### Build Policy

To ensure fair access and optimal resource usage:

- Each user can build **one firmware per hour**.
- Multiple build requests are handled via a **first-in, first-out queue**.

You’ll receive an email with a download link as soon as your firmware is ready.

> 📩 Check your spam folder if you don’t receive the email after 30 minutes.

The final step is to **install the firmware** on your TiltSense device — see the next section for instructions.

---

## ⚡ How to Flash the Firmware

To flash the firmware:

1. Connect the TiltSense device to your computer using a **USB-C cable**.
2. Open [ESPHome Web Flasher](https://esphome.github.io/esphome-web/).
3. Click **"Connect"** and select the ESP32-S3 device.
4. Upload the `.bin` file you downloaded from the builder.

> 💡 If the flashing fails, you may need to **hold the BOOT button** on your ESP32-S3 board while connecting.

---

## 🧯 Troubleshooting

### "Timed out waiting for packet header"

- Make sure the USB-C cable supports data (not just charging).
- Try holding the BOOT button while clicking "Connect".

### No Wi-Fi connection after flashing

- Rebuild the firmware ensuring Wi-Fi credentials are correct.
- Make sure your network is 2.4GHz (ESP32-S3 does not support 5GHz).

### Tilt data not showing up

- Make sure the Tilt is active and transmitting.
- Ensure the selected color in the firmware matches the physical device.
- Check that the Tilt is enabled on the screen (not grayed out).

---

For further support, visit the [GitHub Discussions](https://github.com/bananabrewery/TiltSense/discussions) or open
an [Issue](https://github.com/bananabrewery/TiltSense/issues).