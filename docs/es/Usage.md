---
title: Uso del Dispositivo y Funcionalidades
description: Aprende a interactuar con la interfaz táctil de TiltSense y explora las funciones que hacen que el seguimiento de la fermentación sea sencillo y eficiente.
icon: material/gesture-tap-button  
---

# Uso del Dispositivo y Funcionalidades

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Screen.svg" alt="Pantalla de TiltSense" style="max-width: 400px; width: 100%;" />
</div>

TiltSense ofrece una interfaz limpia, intuitiva y completamente táctil para monitorizar y gestionar tus fermentaciones
activas. Esta sección explica cómo utilizar el dispositivo y describe las principales funciones disponibles en la
versión actual del firmware.

---

## 👆 Navegación Táctil

La pantalla de TiltSense es totalmente capacitiva y responde a toques suaves con el dedo. Está dividida en **tres zonas
interactivas principales**:

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Interactions.svg" alt="Interacciones en pantalla de de TiltSense" style="max-width: 750px; width: 100%;" />
</div>

- **Zona izquierda** — Toca para navegar al **Tilt anterior** de la lista.
- **Zona derecha** — Toca para navegar al **siguiente Tilt**.
- **Zona inferior** — Toca para **activar o desactivar** el Tilt seleccionado.

Esto permite cambiar rápidamente entre Tilts de forma intuitiva, sin necesidad de botones ni menús.

---

## ⚙️ Funcionalidades Principales

### 📡 Lectura de Sensores

- Cuando un dispositivo Tilt está **activado**, la pantalla muestra sus lecturas en tiempo real:
    - **Densidad (SG)**
    - **Temperatura (°C o °F)**

- Los datos del sensor se actualizan cada **5 segundos**, permitiendo optimizar el rendimiento y reducir la carga de
  procesamiento.

- Si se ha configurado sensores de presión mediante la **integración con Home Assistant**, y está vinculado al Tilt
  seleccionado, se mostrará también una **lectura de presión** junto a la densidad y temperatura.

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20With%20Pressure.svg" alt="Pantalla de TiltSense con presión" style="max-width: 400px; width: 100%;" />
</div>

### 💤 Modo reposo

- La pantalla entra automáticamente en **modo reposo** tras **2 minutos de inactividad** para reducir el consumo
  energético.
- Para reactivarla, simplemente **toca en cualquier parte** de la pantalla. El dispositivo volverá a mostrar la misma
  pantalla en la
  que se encontraba anteriormente.

### 📴 Activar / Desactivar Dispositivos Tilt

- Al tocar la **zona inferior** de la pantalla se alterna entre **activar o desactivar** el Tilt seleccionado.
- Cuando está desactivado:
    - El Tilt deja de enviar actualizaciones hacia las integraciones.
    - No se envían datos a Brewfather ni a Home Assistant.
    - La interfaz muestra el color del Tilt en **tono gris** para indicar que está inactivo.

<div align="center">
  <img src="../assets/prototypes/TiltSense%20-%20Disabled.svg" alt="Pantalla de TiltSense con Tilt desactivado" style="max-width: 400px; width: 100%;" />
</div>

Esta función es útil cuando un Tilt no está en uso o está apagado, ayudando a reducir la carga del sistema.

---

## 🔁 Integración con Brewfather

- Cuando la integración con Brewfather está habilitada y configurada, TiltSense envía los datos del sensor cada **15
  minutos**, siguiendo las especificaciones oficiales de Brewfather.

---

## 🏠 Integración con Home Assistant

Si está activada la integración con Home Assistant, TiltSense aprovecha las capacidades nativas de  
[ESPHome](https://esphome.io/) para enviar datos de los sensores en tiempo real directamente a Home Assistant.

Esto permite a los usuarios:

- **Monitorizar la fermentación en tiempo real** desde los paneles de Home Assistant.
- **Crear automatizaciones o alertas** basadas en lecturas de densidad, temperatura o presión.
- **Combinar los datos del Tilt con otros sensores**, como sondas de temperatura, sensores de presión o enchufes
  inteligentes.

No es necesaria ninguna configuración adicional en el dispositivo más allá de habilitar la integración de ESPHome en
Home Assistant: todos los datos del sensor estarán disponibles como entidades nativas.

---

TiltSense está diseñado para ser simple e intuitivo — permitiendo a los cerveceros obtener información del estado de sus
fermentaciones de un vistazo, con una interacción mínima.

