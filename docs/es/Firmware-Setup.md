---
title: Configuración e Instalación del Firmware
description: Aprende a generar e instalar firmware personalizado para tu dispositivo TiltSense usando el generador oficial basado en la web.
icon: material/memory
---

# 🔧 Configuración e Instalación del Firmware

TiltSense proporciona un **Generador de Firmware basado en la web** que te permite crear firmware personalizado para tu
dispositivo de forma sencilla, sin necesidad de escribir ni modificar código.

La aplicación prepara una versión personalizada del firmware según tu parametrización, verifica que todo esté bien
configurado y te entrega un archivo listo para instalar en tu dispositivo TiltSense.

---

## 🌐 ¿Qué es el Generador de Firmware?

Es una herramienta web simple que te permite crear un firmware personalizado para tu dispositivo TiltSense de una manera
guiada por pasos, según tus preferencias y configuración.

Siguiendo los pasos, serás capaz de:

- Seleccionar uno o más Tilt para monitorizar con tu TiltSense.
- Configurar cada Tilt por color e indicar si es un modelo Pro.
- Configurar tu red Wi-Fi para que TiltSense pueda conectarse y enviar datos.
- Activar la integración con Brewfather para registrar en tus fermentaciones.
- Activar la integración con Home Assistant para automatización y monitorización en vivo.
- Añadir soporte para sensores de presión, si está disponible en tu configuración.

Una vez configurado, la herramienta genera un archivo de firmware personalizado que puedes descargar o dejar que el
generador lo compile por ti.

Puedes acceder al generador aquí:  
👉 **[Firmware Builder](https://bananabrewery.github.io/TiltSenseFirmwareBuilder)**

[https://bananabrewery.github.io/TiltSenseFirmwareBuilder](https://bananabrewery.github.io/TiltSenseFirmwareBuilder)

---

## 🧩 Configuración Paso a Paso

### Seleccionar Dispositivos Tilt (Obligatorio)

Para usar TiltSense, debes seleccionar **al menos un Tilt**.

![tilts.png](assets/firmware-builder/tilts.png)

Por cada Tilt que habilites:

- Puedes indicar si es un **Tilt Pro** o estándar.
- Si tienes varios Tilts, puedes **ordenarlos** arrastrando y soltando. Este orden define la secuencia en la que
  aparecerán en la pantalla de TiltSense.
- Hay un botón **"Restaurar Ordenación"** para restablecer la ordenación original.

Los Tilts no habilitados no aparecerán en pantalla ni enviarán datos, lo cual mejora el rendimiento y reduce
comunicaciones innecesarias.

---

### Configuración Wi-Fi (Opcional)

Puedes proporcionar tu **SSID y contraseña Wi-Fi** para que TiltSense se conecte a tu red local.

![wifi.png](assets/firmware-builder/wifi.png)

Esto es necesario para:

- Acceder a la **interfaz web** en [`http://tiltsense.local`](http://tiltsense.local)
- Enviar datos a Brewfather o Home Assistant

Si lo omites, TiltSense funcionará en modo sin conexión.

---

### Integración con Brewfather (Opcional)

Activa esta opción si deseas que TiltSense envíe los datos a tu **cuenta de Brewfather**.

![brewfather.png](assets/firmware-builder/brewfather.png)

Para configurarlo, necesitas proporcionar:

- Tu **Custom Stream ID** — clave API usada para enviar datos a Brewfather (ej. `a1b2C3d4E5f6G7`).

TiltSense enviará:

- **Densidad**
- **Temperatura**
- **Presión** (si hay un sensor configurado y habilitado)

Los datos se envían cada **15 minutos**, siguiendo las especificaciones oficiales de Brewfather.

> 🔗 Puedes encontrar tu Custom Stream ID y aprender cómo utilizarla en la documentación
> oficial: [docs.brewfather.app/integrations/custom-stream](https://docs.brewfather.app/integrations/custom-stream)

---

### Integración con Home Assistant (Opcional)

Si se activa, TiltSense se conecta a la red local e **integra con Home Assistant** como un nodo nativo de ESPHome.

![homeassistant.png](assets/firmware-builder/homeassistant.png)

TiltSense expone las siguientes entidades a Home Assistant:

- Lecturas de **densidad** y **temperatura** para cada Tilt habilitado.
- **Interruptores** para activar o desactivar Tilts remotamente — Del mismo modo que si lo haces mediante la pantalla
  táctil.
- **Tensión de la batería** y estimación del **porcentaje de carga**.

Esto permite la monitorización y control total de tu proceso de fermentación directamente desde Home Assistant.

> 🧠 No se requiere ninguna configuración avanzada — solo añade TiltSense a través de la integración ESPHome en Home
> Assistant.

---

### Sensor de Presión - Home Assistant (Opcional)

Si activas la integración con Home Assistant, puedes vincular **sensores de presión externos** en TiltSense.

![homeassistant.png](assets/firmware-builder/homeassistant.png)

Al activar esta opción:

- Aparecerá una sección nueva con los Tilt habilitados previamente.
- Para cada uno de ellos, puedes introducir el **ID de la entidad** del sensor de presión (ej.
  `sensor.pressure_sensor_current_pressure`).
- Estas entidades deben existir y estar disponibles previamente en Home Assistant.

Asignando un sensor de presióna un Tilt permite:

- Mostrar la **presión en vivo** junto con la temperatura y la densidad en la pantalla.
- El valor de la presión se enviará a Brewfather cada 15 minutos (si está habilitada esa integración).

> 🧠 Esta configuración permite monitorizar de manera avanzada el proceso de fermentación bajo presión, combinando la
> densidad, temperatura y presión en un mismo origen de datos.

---

## ✅ Validación de la Configuración

Antes de generar el firmware, la aplicación muestra un **Resumen de configuración** con todas las opciones
seleccionadas.

![summary.png](assets/firmware-builder/summary.png)

Este paso sirve para validar:

- Que los campos requeridos estén completos.
- Que Wi-Fi esté configurado si usas integraciones.
- Que no haya conflictos o errores en la configuración.

Una vez validado:

- Se activa el botón **"Generar archivo de firmware"**.
- Se crea un archivo YAML completo de ESPHome adaptado a tu configuración.

Puedes:

- **Previsualizar** la configuración.
- **Copiar** el YAML si usas ESPHome por tu cuenta.
- **Descargar** el archivo para instalarlo manualmente.

![yaml-viewer.png](assets/firmware-builder/yaml-viewer.png)


> 🛠️ Usuarios avanzados pueden usar ESPHome directamente. Para el resto, puedes dejar que la app compile el firmware por
> ti.


---

## 🛠️ Compilar y Descargar el Firmware

Una vez validada la configuración, puedes compilar el firmware.

![compile.png](assets/firmware-builder/compile.png)

![finished.png](assets/firmware-builder/finished.png)

### Cómo Funciona

- La app te guiará a la sección de **Compilación**.
- Compilar puede tardar varios minutos (hasta **10 minutos**).
- La compilación ocurre **en segundo plano**.
- Al finalizar, recibirás el archivo `firmware.factory.bin` en tu **correo electrónico**.

### Por Qué se Solicita tu Email

- Se requiere para enviarte el firmware.
- **No se guarda ni almacena** — se usa solo para el envío.
- Sin email válido, no se puede completar la compilación.

### Política de Compilación

- Cada usuario puede compilar **una vez por hora**.
- Las peticiones se procesan por **orden de llegada**.

![email.png](assets/firmware-builder/email.png)

You’ll receive an email with a download link as soon as your firmware is ready.

> 📩 Si no ves el email en 30 minutos, revisa tu carpeta de spam.

The final step is to **install the firmware** on your TiltSense device — see the next section for instructions.

---

## ⚡ Cómo Flashear el Firmware

To flash the firmware:

1. Conecta el dispositivo TiltSense por **USB-C** al ordenador.
2. Abre [ESPHome Web Flasher](https://esphome.github.io/esphome-web/).
3. Haz clic en **"Connect"** y selecciona el ESP32-S3.
4. Carga el archivo `.bin` descargado.

> 💡 Si falla, mantén pulsado el botón BOOT al conectar.

---

## 🧯 Solución de Problemas

### "Timed out waiting for packet header"

- Asegúrate de que el cable USB-C **sirve para datos**.
- Mantén pulsado **BOOT** mientras haces clic en "Connect".

### No hay conexión Wi-Fi tras flashear

- Recompila el firmware asegurando que Wi-Fi está bien escrito.
- Verifica que tu red sea de **2.4GHz** (ESP32-S3 no soporta 5GHz).

### No aparece el Tilt

- Asegúrate de que el Tilt está activo y transmitiendo.
- Verifica que el color coincida con el del firmware.
- Comprueba que esté habilitado en la pantalla (no en gris).

---
Para soporte adicional, visita las [Discusiones en GitHub](https://github.com/bananabrewery/TiltSense/discussions) o
abre un [Issue](https://github.com/bananabrewery/TiltSense/issues).
