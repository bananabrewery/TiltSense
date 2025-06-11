# 📋 Bill of Materials (BOM)

This is the list of hardware components needed to build a full TiltSense unit.

| Item | Description | Qty | Link | Notes |
|------|-------------|-----|------|-------|
| **ESP32-S3 Round LCD Board** | 1.28" LCD (GC9A01A) with CST816S touch | 1 | [AliExpress](https://s.click.aliexpress.com/e/_oBHq2mi) | Includes display and touch controller |
| **LiPo Battery 3.7V 200 mAh** | With JST 1.25mm connector | 1 | [AliExpress](https://s.click.aliexpress.com/e/_op2Asqw) | ⚠️ Check polarity before connecting. Larger batteries haven't been tested and likely won't fit in the case. |
| **M2xL2xOD3.2 Brass Inserts** | Heat-set inserts for case assembly | 4 | [AliExpress](https://s.click.aliexpress.com/e/_okAnuHg) | Installed with a soldering iron |
| **M2x5mm Screws** | To close the 3D-printed case | 4 | [AliExpress](https://s.click.aliexpress.com/e/_omZDYlo) | Used only to secure the lid, not for board mounting |
| **Neodymium Magnet 20×3 mm** | For magnetic mounting | 1 | [AliExpress](https://s.click.aliexpress.com/e/_oEioES6) | Fits into a recess in the printed case |
| **USB-A to USB-C Cable** | For flashing and charging | 1 | [AliExpress](https://s.click.aliexpress.com/e/_oCeMiAi) | Any data+power cable will work |
| **3D-Printed Case** | Custom STL files | 1 set | *Coming soon* | Includes base, lid, and mounting details |
| **Pressure Sensor** | Optional sensor for fermentation pressure | 1 | *Coming soon* | Not required for basic functionality |

---

## 🛠 Notes

- The case is assembled with **heat-set brass inserts** and **M2 screws** to hold the lid in place.
- A **single neodymium magnet** allows mounting TiltSense to a fermentation vessel or fridge wall.
- The recommended **200 mAh battery** fits snugly inside the case. Larger capacities may not fit and have not been tested.
- Always double-check **battery polarity** before powering the board to avoid damage.

---

For wiring diagrams and STL files, see the `hardware/` folder in this repository.