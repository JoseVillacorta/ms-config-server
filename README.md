# MS Config Server

Servidor de configuración centralizada para el Sistema de Gestión de Pedidos.

## Descripción

Microservicio que proporciona configuración centralizada usando Spring Cloud Config Server. Gestiona configuraciones para múltiples perfiles (dev, qa, prd) desde un repositorio Git.

## Tecnologías

- **Java**: 21
- **Spring Boot**: 3.3.3
- **Spring Cloud Config**: 4.3.0
- **Gradle**: 8.0+

## Configuración

### Variables de Entorno
- `GIT_REPO_URI`: URI del repositorio de configuraciones
- `GIT_USERNAME`: Usuario Git 
- `GIT_PASSWORD`: Token Git 
- `CONFIG_USERNAME`: Usuario para acceso al config server
- `CONFIG_PASSWORD`: Contraseña para acceso al config server

### Perfiles
- **local**: Desarrollo local (puerto 8888)
- **qa**: Ambiente QA (puerto 8888)
- **prod**: Producción (puerto 8888)

## Ejecución

```bash
./gradlew bootRun --args="--spring.profiles.active=local"
```

## Endpoints

- `GET /ms-productos/dev` - Configuración productos desarrollo
- `GET /ms-pedidos/dev` - Configuración pedidos desarrollo
- `GET /actuator/health` - Health check

## Seguridad

- Usuario por defecto: `admin`
- Contraseña configurable via variables de entorno