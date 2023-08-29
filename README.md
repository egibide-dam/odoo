# odoo

Odoo con Docker.

## Prerrequisitos

1. Instalar Docker Desktop para [Windows y macOS](https://www.docker.com/products/docker-desktop/)
   o [Linux](https://docs.docker.com/desktop/linux/install/).

2. En Windows, instalar [Scoop](https://scoop.sh) usando PowerShell:

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
   Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
   ```

   Y después instalar los comandos necesarios:

   ```powershell
   scoop install make
   ```

3. Clonar este repositorio:

   ```shell
   git clone https://github.com/egibide-dam/odoo.git
   ```

   > Si el comando anterior no funciona, habrá que [instalar Git](https://git-scm.com/downloads) en el sistema.

## Arrancar el servidor

1. En un terminal, situarse en la carpeta `odoo` (o si se ha renombrado, la que contenga este archivo `README.md`):

   ```shell
   cd odoo
   ```

2. Copiar el fichero `env-example` a `.env`:

   En macOS y Linux:

   ```shell
   cp env-example .env
   ```

   En Windows:

   ```shell
   copy env-example .env
   ```

3. Arrancar los servicios:

   ```shell
   make start
   ```

## Acceso a la aplicación

- Acceder a [http://localhost:8069](http://localhost:8069)
