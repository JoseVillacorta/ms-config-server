# MS Config Server

Servidor de configuración centralizada con Spring Cloud Config para gestión de configuraciones de microservicios.

- **Configuración Centralizada**: Todas las configuraciones en un solo lugar
- **Perfiles Múltiples**: dev, qa, prod
- **Refresh Automático**: Actualización de configuraciones sin restart
- **Git Integration**: Configuraciones versionadas en Git
- **Encryption**: Encriptación de propiedades sensibles

## Funcionalidades
- **Configuration Repository**: Almacenamiento centralizado de configuraciones
- **Environment Profiles**: Separación de configuraciones por entorno
- **Refresh Endpoint**: Actualización dinámica de configuraciones
- **Security**: Protección de configuraciones sensibles

## Dependencias

### Infraestructura
- **Registry Service**: http://localhost:8761 (Eureka)
- **Git Repository**: `config-repo/` (configuraciones)

## Ejecutar

### Desarrollo Local
```bash
./gradlew bootRun --spring.profiles.active=dev
```

### Docker
```bash
docker-compose up --build ms-config-server
```

**Puerto**: 8888

## Configuración

### Perfiles Soportados
- **dev**: Configuración de desarrollo
- **qa**: Configuración de testing
- **prod**: Configuración de producción

### Repository Git
- **Ubicación**: `config-repo/`
- **Estructura**: `{service-name}-{profile}.yaml`

## Verificación

### Health Check
```bash
curl http://localhost:8888/actuator/health
```

### Servicios Configurados
- **gateway-service**: `http://localhost:8888/gateway-service/dev`
- **ms-productos-v2**: `http://localhost:8888/ms-productos-v2/dev`
- **ms-pedidos**: `http://localhost:8888/ms-pedidos/dev`
- **registry-service**: `http://localhost:8888/registry-service/dev`