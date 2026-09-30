# 🎬 Automatización de Descargas Multimedia (YouTube & Twitch)

Script interactivo programado en Batch para Windows que actúa como un "All-in-One" para descargar contenido multimedia de YouTube y Twitch de forma optimizada[cite: 3].

## 🚀 Funcionalidades Principales
El script ofrece una interfaz de consola interactiva con las siguientes características:
*   **Auto-actualización:** Verifica e instala la última versión de `yt-dlp` de forma automática al iniciar (`-U`)[cite: 3].
*   **Descargas de YouTube:** Permite descargar vídeos en 1080p (completos o limitados por un tramo de tiempo específico)[cite: 3].
*   **Extracción de Audio:** Descarga y convierte el contenido directamente a formato MP3 con la mejor calidad disponible[cite: 3].
*   **Soporte para Twitch:** Descarga de VODs completos, fragmentos específicos (mediante descargas concurrentes) y Clips en su máxima resolución[cite: 3].

## 🛠️ Requisitos del Sistema
Para que el script funcione correctamente, el directorio donde se ejecute debe contener:
1.  `yt-dlp.exe`: El motor principal de descarga.
2.  `ffmpeg.exe`: Necesario para combinar las pistas de audio y vídeo de alta calidad (`--merge-output-format mp4`)[cite: 3] y para la extracción directa a MP3.

## ⚙️ Uso
1. Haz doble clic en el archivo `descargador.bat`.
2. Selecciona una de las 7 opciones del menú ingresando el número correspondiente[cite: 3].
3. Pega la URL del contenido cuando el sistema lo solicite[cite: 3].
4. Si seleccionaste la descarga por tramos, introduce el formato de tiempo requerido (`HH:MM:SS-HH:MM:SS`)[cite: 3].

---
*Desarrollado para la optimización y automatización de descargas en red.*
