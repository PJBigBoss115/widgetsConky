# Widgets para Conky

## Tabla de Contenidos

1. [Clima](#Como-funciona-la-parte-del-clima)
2. [Reproductor](#Reproductor)
3. [Pre-views](#Widgets-subidos)
4. [Monitor de red](#Monitor-de-red)
5. [Recomendaciones](#Recomendaciones)


Los widgets para Conky son elementos gráficos personalizables que muestran información del sistema en tu 
escritorio de Linux 🖥️, como el uso de CPU, RAM, espacio en disco, temperatura, clima ☁️, entre otros. Conky 
es una herramienta súper versátil y liviana que te permite crear y personalizar estos widgets con scripts 
sencillos escritos en LUA o en archivos de configuración 📜.

## Funcionalidad de los widgets en Conky ⚙️

Los widgets en Conky muestran datos en tiempo real ⏱️ de tu sistema en el escritorio. Algunos ejemplos son:

1. Uso de CPU 🧠 y núcleos individuales
2. Memoria RAM 💾 y Swap
3. Temperatura del sistema 🌡️
4. Espacio en disco 💽
5. Estado de la red 🌐 (ancho de banda, IP)
6. Batería 🔋
7. Clima ☀🌧️
8. Reproducción de música 🎶 (integrado con Navegador)

## Configuración y personalización 🎨
Puedes personalizar tanto el aspecto como la información que muestran los widgets. Esto incluye:

- Posición en el escritorio 🖼️
- Tamaño y tipografía 🔤
- Colores 🎨
- Transparencia ✨
- Animaciones (aunque son simples)

## Distribuciones compatibles 🐧
Conky es compatible con casi todas las distribuciones de Linux, ya que es muy flexible y está disponible en casi todos los repositorios. Algunas distribuciones populares donde Conky funciona sin problemas incluyen:

- Ubuntu y derivados (Kubuntu, Xubuntu, Lubuntu) 🟠
- Debian 🟦
- Fedora 🟡
- Arch Linux y derivados (Manjaro, EndeavourOS) ⚪
- Linux Mint 🟢
- openSUSE 🟩
- Elementary OS 🟦
- Pop!_OS 🟧

## Instalación de Conky 🛠️
Para instalar Conky, utiliza estos comandos dependiendo de tu distribución:

En Ubuntu y derivados:

```bash
sudo apt install conky-all
```

En Arch Linux y derivados:
```bash
sudo pacman -S conky
```

En Fedora:
```bash
sudo dnf install conky
```

## Instalación de Conky Manager
El Conky Manager no está en los repositorios oficiales de algunas distribuciones de Linux, pero puedes instalarlo desde un PPA o descargando el paquete directamente.

## Instalación de Dependencias para un Mejor Funcionamiento
Además de Conky y Conky Manager, necesitarás algunas dependencias adicionales para que los widgets funcionen correctamente y puedan mostrar todos los datos que necesitas, como:

lm-sensors: Para monitorear la temperatura del sistema.
```bash
sudo apt install lm-sensors
sudo sensors-detect
```

curl: Para obtener datos de la red o clima (usado por muchos widgets de Conky).
```bash
sudo apt install curl
```

Xorg utilities: Estas son necesarias para la gestión de ventanas y la transparencia en algunas interfaces de Conky.
```bash
sudo apt install x11-xserver-utils
```

Font Awesome (opcional): Muchos temas de Conky utilizan iconos de Font Awesome.
```bash
sudo apt install fonts-font-awesome
```

## Como funciona la parte del clima
Es mejor que consigas tu clave en [OpenWeather](https://openweathermap.org/) asi solo colocas el city_id y tu api_key
sera mas sencillo de esta forma.

```bash
#!/bin/bash

# v2.0 Closebox73
# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# Variables
# Esta es tu clave del lugar donde te encuentras (consulta tu api para saber la tuya)
city_id=

# Esta es tu clave que te proporciona la api
api_key=

# Esta es la unidad de mediad
unit=metric

# Este es el idioma en el que te trae la información
lang=es

# Aquí coloca tu url donde ira a traer la información, precisamente es de donde obtuviste tu código
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=${unit}&lang=${lang}"
curl ${url} -s -o ~/.cache/weather.json

exit
```

## Reproductor
Hay dos formas por ahora una es de la manera tradicional con conky por lo cual no tendrias porblema y deberia funcionar por si solo,
otra es con playerctl.

Playerctl es una herramienta de línea de comandos que te permite controlar reproductores multimedia compatibles con MPRIS 
(Media Player Remote Interfacing Specification) en Linux. Con Playerctl, puedes interactuar con reproductores multimedia 
como Spotify, VLC, Rhythmbox, mpv, y otros, para realizar acciones como reproducir, pausar, saltar canciones, y controlar 
el volumen, todo desde la terminal.

Por lo cual si no funcona de manera nativa deberias usar playerctl el cual uso en el tema Sirius-Mpdc-v3.1 y deberia funconar
con los reproductores de tu navegador siendo chome o firefox.

Instalación de Playerctl:
Dependiendo de tu distribución de Linux, puedes instalarlo de la siguiente manera:

En Ubuntu y derivados:
```bash
sudo apt install playerctl
```

En Arch Linux y derivados:
```bash
sudo pacman -S playerctl
```

En Fedora:
```bash
sudo dnf install playerctl
```

## Monitor de red
Para monitorear tu red, primero necesitas identificar la interfaz de red que está conectada, 
ya sea a través de Wi-Fi o por cable. Busca en la sección correspondiente del archivo principal 
donde se menciona `wlo1`, que es la interfaz en mi caso. Para conocer tu propia interfaz, 
simplemente ejecuta un comando en la terminal.

- Usando ip (comando recomendado)
  
El comando ip es parte del paquete iproute2 y está disponible en casi todas las distribuciones modernas de Linux.

```bash
ip addr
```
o

```bash
ip link show
```
Este comando te mostrará una lista de todas las interfaces de red junto con su estado y direcciones IP asignadas.

### Widgets subidos
1. Mimosa-Dark-PlyrctlC-v3.0
![image](https://github.com/user-attachments/assets/3cc47956-1f10-4b85-af2d-ea207c9968b8)

2. Mirach-Clcs-v2.1
![image](https://github.com/user-attachments/assets/2659c795-4290-46ab-bcea-70ff6a904b62)

3. Sirius-PlyrctlC-v3.1 / Sirius-MpdC-v3.1
![image](https://github.com/user-attachments/assets/99450a91-9d65-4b34-9d4c-eb246efc670d)

### Recomendaciones
¡Es súper fácil! 😎 Solo agarra una carpeta e impórtala en Conky Manager, ¡y listo, ya está todo preparado para usar! 🚀 Si algo no funciona como debería, no te preocupes, solo revisa las rutas — deben estar exactamente iguales. También subo algunos wallpapers que uso con los temas, pero siéntete libre de modificarlos a tu gusto para que hagan juego con cualquier fondo que prefieras. 🎨🖼️ ¡Solo es cuestión de darle tu toque personal! ✨


