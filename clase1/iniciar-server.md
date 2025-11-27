# Iniciar server

> 💡 Esta pequeña nota va explicar cómo chequear si está iniciado el servidor de base de datos. Y una vez que sepamos esto poder tomar la decisión de detenerlo o reiniciarlo cuando lo necesitemos

## Windows

> Para chequear que el servidor de base de datos MySQL está funcionando en Windows
> debemos utilizar el administrador de servicios

1. pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana "ejecutar"
3. Ahí vamos a escribir "services.msc" y pulsar "OK"
4. Se va a abrir el administrador de servicios
5. Buscar el servicio "MySQL80"
6. En la columna Estado veremso si está "en ejecución"

## Debian

1. abrir terminal 
2. ejecutar el siguiente comando
   
    systemctl status mysql  

> para detener el servicio

    systemctl stop mysql  

> para iniciar el servicio

    systemctl start mysql  

## macOS

1. Ir a Configuración del Sistema
2. En el panel lateral izquierdo ir hacia abajo de todo
3. Ahí encontramos el servicio MySQL
4. En la parte central tenemos las opciones para ver estado, iniciar y detener
