# Widgets para Conky

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
