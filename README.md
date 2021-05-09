### Escuela Colombiana de Ingeniería

### MCSW 📚
## Proyecto Aplicación Bancaria
### Integrantes:
#### Carlos Andres Amorocho Amorocho
#### Jonathan Fabian Paez Torres
### Requerimientos 📜
* [Visual Studio 2019](https://visualstudio.microsoft.com/es/thank-you-downloading-visual-studio/?sku=Community&rel=16).
* [SQL SERVER](https://www.microsoft.com/es-co/download/details.aspx?id=101064).
* [SQL SERVER Management Studio](https://aka.ms/ssmsfullsetup).

### Descripción ✅
En este proyecto se desarrollara una aplicación bancaria basica, la cual permite registro de usuarios, roles, transferencia y asignacion de fondos, esta aplicación esta desarrolla en ASP.Net y Windows Forms(C#). 

### Instalación ✅

1. Abrir la consola de comandos y ejecutar el siguiente comando para crear el servidor.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/createdbsql.PNG)
2. Ejecutar el siguiente comando para iniciar el servidor.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/startVaviya.PNG)
3. Abrir la herramienta SQL Server Management.
4. Especificar el servidor que se va a correr.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/confmana.PNG)
5. Crear una nueva base de datos con el nombre de Banco.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/newData.PNG)
6. [Ejecutar el scrip de la base de datos, para crear sus tablas](https://github.com/jfpazto/CopiaMCSW/blob/master/ScriptBase.sql)
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/basededatosex.PNG)
7. Abrir el proyecto Banco en visual studio y ejecutar o depurar la instacia de IIServer.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/iserver.PNG)
8. Abrir el proyecto BancoEscritorio y ejecutarlo en la carpeta/bin/debug.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/ejecutarApp.PNG)

### Uso ✅

1. En primer lugar se encontrara con la ventana de inicio de sesion.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/FormInicio.PNG)
2. Si es un auditor una vez ingresa podra ver los movimientos y el valor total de tranferencias que se han realizado.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/FormAuditor.PNG)
3. Si ingresa como administrador tendra el poder de registrar un usuario, en el campo rol tendra que escribir una de las tres opciones: Cliente,Auditor, Adminitrador. De igual manera podra asignar una clave y fondos a un usuario.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/FormAdminRegistro.PNG)
4. Como adminitrador tambien puede agragar fondos a un usuario existente.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/AdminTRans.PNG)
5. Si ingresa como cliente podra ver el nombre de usuarios y el saldo disponible.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/FormCliente.PNG)
6. Un cliente de igual forma pude hacer una transferencia a otro cliente existente.
![](https://github.com/jfpazto/ProyectofinalMCSW/blob/master/IMG/EnviarCliente.PNG)
