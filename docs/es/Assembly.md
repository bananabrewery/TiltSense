---
title: Instrucciones de Montaje
description: Guía paso a paso para montar el dispositivo TiltSense, incluyendo instalación de la placa, configuración de la batería y cierre de la carcasa.
icon: material/screwdriver
---

# Instrucciones de Montaje

Esta sección te guiará a través del proceso completo de montaje del hardware de TiltSense. La carcasa impresa en 3D está
diseñada para un ensamblaje preciso y sin apenas herramientas. Tras seguir unos pasos muy básicos, tu dispositivo estará
listo para la instalación del firmware y su posterior uso en fermentaciones.

> 🛑 **Importante:** Antes de empezar, asegúrate de haber revisado los [Requisitos de Hardware](Hardware.md) y de tener
> todos los componentes listos.

---

## Instrucciones Paso a Paso

### 1. Instalar los Inserts Roscados

Con la ayuda un soldador caliente, instala cuidadosamente los **cuatro inserts roscados de latón** en los orificios
destinados para ello en la carcasa impresa en 3D. Aplica una ligera presión hacia abajo hasta que el insert quede
totalmente integrado en el plástico. Deja que se enfríe por completo antes de continuar.

> 🔥 Consejo: Usa una punta especial para inserts roscados o una punta plana del soldador para obtener mejores
> resultados.

---

### 2. Colocar la Placa ESP32-S3

Inserta la placa ESP32-S3 en la carcasa, alineando el **puerto USB-C** con la abertura correspondiente. Presiona
suavemente la placa hasta que encaje completamente en el fondo, asegurándote de que **la pantalla quede
perfectamente alineada y encajada en el bisel frontal**.

---

### 3. (Opcional) Conectar y Colocar la Batería

Si vas a usar una batería LiPo, conéctala al conector JST de 1.25 mm en la placa, verificando la **polaridad** antes de
conectar. Coloca la batería sobre la placa ESP32-S3, asegurándote de que no obstruya el conector USB-C.

---

### 4. (Opcional) Añadir Espuma para Fijar la Batería

Para evitar movimiento durante el manejo, coloca un pequeño trozo de **espuma suave y ligera** al lado o encima de la
batería. Esto proporciona una presión leve que mantiene la batería estable y fija sin forzar el cableado.

---

### 5. Colocar la Tapa

Alinea la tapa con la carcasa y presiónala suavemente en su lugar. La tapa está diseñada para **asegurar la placa
ESP32-S3 desde el lado del puerto USB-C**, manteniéndola fija incluso durante el movimiento.

---

### 6. Asegurar la Carcasa con Tornillos

Inserta los **tornillos M2x5mm** en los orificios de montaje y apriétalos hasta que queden firmes. No aprietes en exceso
para evitar dañar el plástico o los propios inserts.

---

## ¡Montaje Terminado!

Tu dispositivo TiltSense está completamente ensamblado y listo para la carga del firmware y su configuración. Continúa
con la sección de [Configuración e Instalación del Firmware](Firmware-Setup.md) para completar el proceso.

> 🧪 Antes de cerrar la carcasa, quizá te interese cargar el firmware usando el puerto USB-C para evitar tener que volver
> a abrirla. Durante el proceso de carga, puede que necesites presionar y mantener el botón Boot en la placa ESP32-S3 para
> habilitar el modo de programación.
