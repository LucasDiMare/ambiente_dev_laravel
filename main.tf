terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.15.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Criação do container do banco de dados MariaDB
resource "docker_container" "database" {
  name    = "laravel-db"
  image   = "mariadb"
  restart = "unless-stopped"
  ports {
    internal = 3306
    external = 3306
  }
  env = [
    "MYSQL_ROOT_PASSWORD=root"
  ]
}

# Criação do container do servidor web Apache
resource "docker_container" "webserver" {
  name    = "laravel-web"
  image   = "php:8.0-apache"
  restart = "unless-stopped"
  ports {
    internal = 80
    external = 8080
  }
  volumes {
    container_path = "/var/www/html"
    host_path      = "C:\\Users\\caminho\\do\\projeto\\laravel" # Substitua pelo caminho absoluto correto
    read_only      = false
  }
  depends_on = [docker_container.database]
}
