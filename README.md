# 🍺 TiltSense

**TiltSense** is a flexible and powerful ESP32-based system that brings together multiple sensors, integrations, and user-friendly tools into a single customizable hub for fermentation monitoring.

After months of design, development, and testing, the first stable release is finally out of the oven — and it's packed with features for homebrewers, hackers, and fermentation geeks alike.

---

## 🚀 Features

- **✅ Multi-Tilt Support**  
  Read and monitor multiple [Tilt Hydrometers](https://tilthydrometer.com/) simultaneously, including standard and Pro models.

- **📡 Brewfather & Home Assistant Integration**  
  Native support for seamless tracking, automation, and remote data logging.

- **🌐 Built-in Web Server**  
  Configure system parameters via an intuitive and mobile-friendly web interface.

- **🔀 Sensor Fusion**  
  Combine Tilt data with pressure sensors for real-time fermentation profiling (e.g., gravity curves under pressure).

- **🔋 Internal Battery**  
  Portable and continuous operation with low-power consumption and battery support.

- **🧲 Magnetic 3D-Printed Enclosure**  
  Custom-designed case with magnetic mounting — easy to use, easy to love.

- **💡 Touchscreen Interface**  
  Clean LVGL-powered display with gesture-based navigation, real-time feedback, and interactive widgets.

- **⚙️ OTA Updates**  
  Update firmware over-the-air without USB.

- **💰 Affordable & Accessible**  
  Built using low-cost, off-the-shelf ESP32 hardware and open-source components.

---

## 📷 Screenshots

*Coming soon…*

---

## 📦 Hardware Requirements

Here’s what you need to build a complete TiltSense unit:

- [**ESP32-S3 with 1.28" Round Touchscreen** (GC9A01A display + CST816S capacitive touch)](https://s.click.aliexpress.com/e/_oBHq2mi)  
  A compact, all-in-one ESP32-S3 development board with integrated round LCD and touchscreen.

- [**LiPo Battery 3.7V (1S) 200mAh with JST 1.25mm connector**](https://s.click.aliexpress.com/e/_op2Asqw)  
  Optional but supported.  
  ⚠️ **Important**: Check polarity before connecting. Some batteries come with inverted pins!

- [**M2xL2xOD3.2 Brass Heat-Set Inserts**](https://s.click.aliexpress.com/e/_okAnuHg)  
  For securing the case with threaded inserts.

- [**M2x5mm Screws**](https://s.click.aliexpress.com/e/_omZDYlo)  
  To mount the case and secure the board.

- [**Neodymium Magnet 20×3 mm**](https://s.click.aliexpress.com/e/_oEioES6)  
  Embedded in the 3D-printed case for easy magnetic mounting on fermenters or fridges.

- **3D-Printed Case**  
  A custom enclosure designed for easy assembly, battery integration, and magnetic mounting.  
  🖨️ **Print instructions are available on MakerWorld:**  
  [https://makerworld.com/en/models/1509302-tiltsense#profileId-1580036](https://makerworld.com/en/models/1509302-tiltsense#profileId-1580036)

- [**USB-A to USB-C Cable**](https://s.click.aliexpress.com/e/_oCeMiAi)  
  For flashing firmware and charging the internal battery.

- **Pressure Sensor** *(optional — details coming soon)*  
  Used for advanced fermentation tracking by monitoring internal vessel pressure.

---

## 🔧 Setup & Flashing

1. Clone this repo or download the latest `.yaml` configuration file.
2. Install [ESPHome](https://esphome.io/) and run `esphome run tiltsense.yaml`.
3. Follow the on-screen instructions to flash your ESP32.
4. Access the web UI via mDNS or IP (`http://tiltsense.local/`).

---

## 🤝 Integrations

- [Tilt Hydrometer](https://tilthydrometer.com/)
- [Brewfather](https://brewfather.app/)
- [Home Assistant](https://www.home-assistant.io/)

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).

---

## ❤️ Acknowledgements

TiltSense is built with love using:

- [ESPHome](https://esphome.io/)
- [LVGL](https://lvgl.io/)
- [Tilt](https://tilthydrometer.com/)
- Community feedback and personal fermentation obsession 🧪🍻

---

## 🙌 Contribute

Pull requests are welcome! Feel free to fork, modify, and share ideas via issues or discussions.

---

## 📣 Stay tuned

More features and documentation coming soon!
