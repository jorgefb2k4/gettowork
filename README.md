# GetToWork

Un sistema de reserva y gestión de puestos de trabajo flexible y colaborativo.

## 📋 Descripción

GetToWork es una aplicación web desarrollada en PHP para gestionar la reserva de puestos de trabajo en entornos colaborativos. Permite a los usuarios:

- Crear y gestionar perfiles de usuario
- Reservar puestos de trabajo disponibles
- Buscar puestos por disponibilidad
- Administrar reservas existentes
- Gestión administratriva del sistema

## 🚀 Características

- **Autenticación segura** con sesiones de usuario
- **Gestión de usuarios** - crear, actualizar, eliminar y buscar usuarios
- **Catálogo de puestos** - visualizar disponibilidad de puestos de trabajo
- **Sistema de reservas** - reservar puestos para fechas específicas
- **Búsqueda avanzada** - filtrar puestos por disponibilidad y características
- **Panel administrativo** - gestión completa del sistema
- **Diseño responsivo** con Bulma CSS

## 🛠️ Tecnologías

- **Backend:** PHP
- **Base de datos:** MySQL
- **Frontend:** HTML5, CSS (Bulma), JavaScript
- **Servidor:** Apache (XAMPP)

## 📁 Estructura del Proyecto

```
gettowork/
├── index.php              # Punto de entrada principal
├── inc/                   # Incluibles (header, navbar, sesión, scripts)
├── vistas/                # Vistas / páginas del sistema
├── php/                   # Lógica de negocio (CRUD operations)
├── css/                   # Estilos (Bulma + custom)
├── js/                    # JavaScript (AJAX, validaciones)
├── img/                   # Imágenes y assets
├── docs/                  # Documentación y scripts SQL
└── README.md              # Este archivo
```

## 🔧 Instalación

### Requisitos
- PHP 7.4+
- MySQL 5.7+
- Apache
- XAMPP o similar

### Pasos de instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/jorgefb2k4/gettowork.git
   cd gettowork
   ```

2. **Crear la base de datos**
   - Abre phpMyAdmin en `http://localhost/phpmyadmin`
   - Importa el archivo `docs/gettoworkdb.sql`

3. **Configurar permisos**
   - Asegúrate de que Apache tiene permisos de lectura en todos los archivos
   - La carpeta debe estar en `htdocs` o equivalente

4. **Iniciar sesión**
   - Usuario: `admin@gmail.com`
   - Contraseña: `Passw0rd`

## 📊 Estructura de Base de Datos

### Tabla: usuarios
- usuario_id (PK)
- usuario_email
- usuario_nombre
- usuario_apellido
- usuario_admin
- usuario_clave

### Tabla: puestos
- puesto_id (PK)
- puesto_numero
- puesto_descripcion
- puesto_disponibilidad
- puesto_comentario

### Tabla: reservas
- reserva_id (PK)
- reserva_fecha
- reserva_usuario_id (FK)
- reserva_puesto_id (FK)

## 👤 Usuarios por Defecto

| Email | Contraseña | Rol |
|-------|-----------|-----|
| admin@gmail.com | Passw0rd | Admin |
| user@gmail.com | Passw0rd | Admin |

## 📝 Notas de Desarrollo

- Ver `docs/gettoworkdb_manual.txt` para instrucciones de configuración de base de datos
- Ver archivos de presentación en `docs/` para más contexto del proyecto

## 📄 Licencia

Este proyecto es parte de un Trabajo Fin de Grado (TFG).

## 👨‍💻 Autor

**Jorge Fernández Bayo**

---

**Nota:** Este es un proyecto educativo desarrollado como TFG (Trabajo Fin de Grado).
