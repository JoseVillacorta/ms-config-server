# Config Server

Servidor de configuración centralizada para microservicios usando Spring Cloud Config.

## Funcionalidades

- **Repositorio Git local**: Sirve configuraciones desde `config-repo/`
- **Perfiles múltiples**: dev, docker, qa, prod
- **Configuración externa**: Variables de entorno y archivos YAML
- **Actualización en caliente**: Refresh automático de configuraciones

## Endpoints

- `GET /{service-name}/{profile}` → Configuración específica
- `GET /{service-name}/{profile}/{label}` → Con branch/tag específico
- `POST /actuator/refresh` → Actualizar configuración en runtime

## Configuración Docker

- **Puerto**: 8888
- **Perfil**: docker
- **Repositorio**: `file:///${PROPERTIES_DIRECTORY}`
- **Directorio**: `/config-repo` (montado como volumen)

## Perfiles Soportados

- **dev**: Desarrollo local
- **docker**: Contenedores Docker
- **qa/prod**: Ambientes superiores

## Variables de Entorno

- `PROPERTIES_DIRECTORY`: Ruta al directorio de configs
- `SPRING_PROFILES_ACTIVE`: Perfil activo

## Despliegue

```bash
docker-compose up --build ms-config-server
```

## Health Check

- Endpoint: `http://localhost:8888/actuator/health`
- Estado esperado: `{"status":"UP"}`