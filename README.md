<div align="center">
  <img src="assets/logo-text.svg" alt="TiltSense" width="150" />
</div>

## TiltSense

**TiltSense** is a flexible and powerful ESP32-based system that brings together multiple sensors, integrations, and
user-friendly tools into a single customizable hub for fermentation monitoring.

After months of design, development, and testing, the first stable release is finally out of the oven — and it's packed
with features for homebrewers, hackers, and fermentation geeks alike.

🧪 The complete documentation is now available at:  
👉 [https://bananabrewery.github.io/TiltSense](https://bananabrewery.github.io/TiltSense)

---

## 📦 Project Status

TiltSense is stable and fully functional in its first release. The current firmware is offered as a complete example
configuration.

🛠️ **Ongoing development:**  
A **TiltSense Firmware Builder** is available — a web app that generates fully customized firmware tailored to your specific setup, eliminating manual editing.

- ✅ Which **Tilt hydrometers** are used, and their **colors**
- 🆚 Whether they are **Tilt** or **Tilt Pro** versions
- 🏠 Whether the user has **Home Assistant** integration
- 💨 Whether a **pressure sensor** is included
- 📡 Whether integration with **Brewfather** is desired

This simplifies setup and allows adapting TiltSense to a wide variety of fermentation scenarios.

Check out the Firmware Builder here:  
👉 [https://bananabrewery.github.io/TiltSenseFirmwareBuilder](https://bananabrewery.github.io/TiltSenseFirmwareBuilder)

I’ve also developed a backend compiler service that can build your firmware automatically — no local ESPHome install
needed!

---

## 🚀 Features

- **✅ Multi-Tilt Support**  
  Read and monitor multiple [Tilt Hydrometers](https://tilthydrometer.com/) simultaneously, including standard and Pro
  models.

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

- **💰 Affordable & Accessible**  
  Built using low-cost, off-the-shelf ESP32 hardware and open-source components.

---

## 📷 Screenshots

<div align="center">
  <img src="docs/en/assets/prototypes/TiltSense%20-%20With%20Pressure.svg" alt="TiltSense Screen" style="max-width: 400px; width: 100%;" />
</div>
<br><br>
<div align="center">
  <img src="docs/en/assets/prototypes/TiltSense%20-%20Interactions.svg" alt="TiltSense Interactions" style="max-width: 750px; width: 100%;" />
</div>

---

## 📦 Hardware Requirements

Here’s what you need to build a complete TiltSense unit:

- [**ESP32-S3 with 1.28" Round Touchscreen**
  (GC9A01A display + CST816S capacitive touch)](https://s.click.aliexpress.com/e/_oBHq2mi)  
  A compact, all-in-one ESP32-S3 development board with integrated round LCD and touchscreen.

- [**LiPo Battery 3.7V (1S) 200mAh with JST 1.25mm connector**](https://s.click.aliexpress.com/e/_op2Asqw)  
  Optional but supported.  
  ⚠️ **Important**: Check polarity before connecting. Some batteries come with inverted pins!

- [**M2xL2xOD3.2 Brass Heat-Set Inserts**](https://s.click.aliexpress.com/e/_okAnuHg)  
  For securing the case with threaded inserts.

- [**M2x5mm Screws**](https://s.click.aliexpress.com/e/_omZDYlo)  
  To mount the case and secure the board.

- [**Neodymium Magnet 20×3 mm**](https://s.click.aliexpress.com/e/_oEioES6)  
  Embedded in the 3D-printed case for easy magnetic mounting on fermenters or fridges.

- [**3D-Printed Case**](https://makerworld.com/en/models/1509302-tiltsense#profileId-1580036)  
  A custom enclosure designed for easy assembly, battery integration, and magnetic mounting.  
  🖨️ **Print instructions are available
  on [MakerWorld](https://makerworld.com/en/models/1509302-tiltsense#profileId-1580036)**.

- [**USB-A to USB-C Cable**](https://s.click.aliexpress.com/e/_oCeMiAi)  
  For flashing firmware and charging the internal battery.

- **Pressure Sensor** *(optional — details coming soon)*  
  Used for advanced fermentation tracking by monitoring internal vessel pressure.

🖨️ Print instructions are available on [MakerWorld](https://makerworld.com/en/models/1509302-tiltsense#profileId-1580036)

---

## 🔧 Setup & Flashing

1. Configure and generate your custom firmware using the Firmware Builder:  
   👉 [https://bananabrewery.github.io/TiltSenseFirmwareBuilder/](https://bananabrewery.github.io/TiltSenseFirmwareBuilder/)

2. You can either:
    - Compile the firmware yourself using ESPHome, or
    - Use the backend compiler service integrated in the Firmware Builder to generate a ready-to-flash binary.

3. Flash your ESP32 using [ESPHome](https://web.esphome.io) with the firmware file.

4. Access the web UI via mDNS or IP (`http://tiltsense.local/`).

---

## 🤝 Integrations

- [Tilt Hydrometer](https://tilthydrometer.com/)
- [Brewfather](https://brewfather.app/)
- [Home Assistant](https://www.home-assistant.io/)

--- 

## 🛠️ Setup & Development Environment

### 1. Create a virtual environment

Make sure you have Python 3 installed. Then, in the root of the project, create a virtual environment:

```bash
python3 -m venv .venv
```

Activate the virtual environment:

```bash
source .venv/bin/activate
```

### 2. Install project dependencies

Once the virtual environment is active, install the required packages:

```bash
pip install -r requirements.txt
```

### 3. Serve the documentation (MkDocs)

To serve the documentation locally:

```bash
mkdocs serve
```

This will start a local server at:

```bash
http://127.0.0.1:8000/
```

MkDocs will automatically reload when you make changes to the documentation files.

### 4. Build the static site (optional)

To generate the static site in the site/ directory:

```bash
mkdocs build
```

This is useful if you want to deploy the documentation (e.g. to GitHub Pages).


---

## 🙋 Community & Support

- ❗ Report bugs or request features: [Open an issue](https://github.com/bananabrewery/TiltSense/issues)
- 💬 Share ideas and ask questions: [Join the discussion](https://github.com/bananabrewery/TiltSense/discussions)
- 🤝 Want to help? Contributions are welcome!

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

Special thanks to [Llupols](https://github.com/llupols) for designing the TiltSense logo. Your creativity and talent
have given our project a unique identity. Much appreciated!


---

## 🙌 Contribute

Pull requests are welcome! Fork the repo, improve the code or docs, and open a PR.  
You can also contribute by sharing feedback or joining discussions.

---

## 📣 Stay tuned

More features, documentation, and exciting new hardware coming soon!