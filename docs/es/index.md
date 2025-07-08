---
title: Bienvenido a TiltSense
description: Explora la documentación oficial de TiltSense — un sistema de monitorización de fermentaciones potente, personalizable y de código abierto basado en ESP32.
icon: material/home
---

<div align="center">
  <img src="../assets/logo-text.svg" alt="TiltSense" width="200" style="margin-bottom: 1.5rem;" />
</div>

# Bienvenido a la Wiki de TiltSense

## Contenidos

- [Inicio](index.md)
- [Requisitos de Hardware](Hardware.md)
- [Instrucciones de Montaje](Assembly.md)
- [Configuración e Instalación del Firmware](Firmware-Setup.md)
- [Uso del Dispositivo y Funcionalidades](Usage.md)
- [Desarrollo y Contribuciones](Development.md)
- [Preguntas Frecuentes (FAQ)](FAQ.md)
- [Créditos y Agradecimientos](Credits.md)

---

## ¿Qué es TiltSense?

TiltSense es un sistema avanzado, flexible y fácil de usar para la monitorización de la actividad en las fermentaciones,
construido sobre la potente plataforma ESP32. Está diseñado específicamente para homebrewers, aficionados a la
fermentación y cerveceros experimentales que deseen obtener información en tiempo real sobre sus procesos de
fermentación con precisión y comodidad.

En esencia, TiltSense lee datos de múltiples Tilt Hydrometers — tanto modelos estándar como Pro — permitiendo la
monitorización simultánea de varios fermentadores. Además de las lecturas de densidad, también admite sensores
adicionales como sensores de presión, proporcionando una visión más profunda de las dinámicas de fermentación, como los
cambios de presión dentro del fermentador.

Una de las grandes fortalezas de TiltSense es su firmware personalizable, que los usuarios pueden generar y adaptar
fácilmente a su configuración de hardware e integraciones preferidas mediante el generador de firmware TiltSense
Firmware Builder — una aplicación web que elimina la complejidad de la configuración manual.

TiltSense se integra perfectamente con plataformas populares de fermentación y automatización como Brewfather y Home
Assistant, permitiendo visualización remota de datos, automatización y registro de eventos.

Con una interfaz táctil intuitiva integrada en una carcasa magnética compacta impresa en 3D, TiltSense combina
portabilidad, facilidad de uso y funcionalidades avanzadas en un solo dispositivo ideal para cualquier setup homebrewing.

Para empezar, consulta las secciones siguientes con listas de hardware detalladas, instrucciones de montaje,
configuración de firmware ¡y mucho más!

---

## Funcionalidades

### ✅ Soporte Multi-Tilt Hydrometer

TiltSense es capaz de detectar y monitorizar múltiples [Tilt Hydrometers](https://tilthydrometer.com/) simultáneamente —
incluyendo modelos **estándar** y **Pro** — en distintos fermentadores. Los datos de cada hidrómetro se procesan y
muestran de forma independiente, permitiendo un seguimiento en tiempo real y con precisión de la densidad y temperatura
de varios lotes en paralelo.

### 📡 Integración Nativa con Brewfather y Home Assistant

La integración con **Brewfather** y **Home Assistant** permite el registro automático de datos, visualización y flujos
de trabajo avanzados para la elaboración. TiltSense se comunica con estas plataformas mediante API, sin necesidad de
configuración adicional una vez establecida la conexión de red.

### 🌐 Interfaz Web de Configuración Integrada

El dispositivo aloja una interfaz web totalmente responsiva a la que se puede acceder desde cualquier navegador en la
red local. Los usuarios pueden configurar ajustes del firmware, sensores habilitados, destinos de publicación de datos y
más — sin necesidad de volver a flashear el firmware ni modificarlo manualmente.

### 🔀 Integración con Sensores de Presión

TiltSense admite **lecturas de presión**, combinando los datos de densidad de los Tilt Hydrometers con sensores
de presión opcionales. Esto permite a los cerveceros analizar dinámicas de fermentación como curvas de presión y
estimaciones de densidad corregidas por presión, ofreciendo una visión más completa de fermentaciones isobáricas.

### 🔋 Batería Interna Integrada

TiltSense cuenta con una batería interna compacta Li-Po que proporciona autonomía a corto plazo (~45 minutos).
Está pensada para movilidad temporal, reinicios del sistema o cortes breves de energía — actuando como un mini SAI
integrado para transiciones seguras y resiliencia ante fallos de alimentación.

### 🧲 Carcasa Magnética Impresa en 3D

La carcasa física ha sido diseñada específicamente para un uso práctico en entornos cerveceros:

- Compacta y resistente
- Imprimible en 3D con impresoras FDM estándar
- Imanes integrados para un montaje fácil en cámaras de fermentación, kegerators o superficies metálicas.

Todos los diseños de carcasa son de código abierto y completamente personalizables.

### 💡 Interfaz Táctil Intuitiva

El dispositivo incluye una pantalla táctil capacitiva de alta resolución, impulsada por **LVGL** (Light and Versatile
Graphics Library). Los usuarios pueden interactuar con una interfaz clara y en tiempo real con gráficos de densidad,
estado de sensores, alertas visuales y navegación mediante deslizamiento.

### 💰 Económico

TiltSense está construido íntegramente con componentes asequibles y fácilmente disponibles basados en la plataforma
ESP32. Esto lo convierte en una solución de bajo coste ideal para quienes buscan funcionalidad sin grandes inversiones.

### 🛠️ Totalmente Open Source

El firmware, la interfaz web, la carcasa impresa en 3D y las herramientas de configuración son completamente de código
abierto. Esto garantiza accesibilidad para makers, cerveceros y desarrolladores — sin licencias ni ataduras.