# Proyecto de Pruebas Automatizadas con Cucumber, Ruby y Capybara

Este proyecto utiliza Cucumber, Ruby y Capybara para realizar pruebas automatizadas de aplicaciones web. A continuación se detallan los pasos para configurar y ejecutar el proyecto.

## Requisitos

- Ruby (https://rubyinstaller.org/downloads/)

## Instalación

1. **Instalar Ruby**: Si no tienes Ruby instalado, descárgalo e instálalo desde (https://rubyinstaller.org/downloads/). Asegúrate de agregar Ruby al PATH durante la instalación.

2. **Instalar las Gemas**: 

gem install cucumber
gem install capybara
gem install selenium-webdriver
gem install rspec
gem install capybara-screenshot

3. **Configuración del Driver**:
Puedes utilizar diferentes drivers para ejecutar las pruebas. Puede ser chrome, firefox o internet_explorer.
Dirigite a features/support.
En la linea 30 vas a encontrar los drivers, descomentar el driver que estas utilizando.

4. **Ejecutar Pruebas**:
cucumber features
cucumber features\<nombre del feature>.feature

5. **Capturas de Pantalla**:
Capybara-Screenshot está configurado para tomar capturas de pantalla automáticamente en caso de fallos. 

6. **Estructura del Proyecto**:
Estructura del Proyecto
features/  Carpeta que contiene los archivos de características (.feature).
features/step_definitions/  Carpeta que contiene los archivos de definiciones de pasos.
features/support/  Carpeta que contiene archivos de configuración, como env.rb.

