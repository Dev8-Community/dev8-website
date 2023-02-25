docker_compose("./docker-compose.yaml")

# Web Config
docker_build(
    "dev8-web",
    context="src/web",
    live_update=[
        sync('./src/web/src', '/usr/src/app/src'),
        sync('./src/web/package.json', '/usr/src/app/package.json'),
        run('npm install', trigger='./src/web/package.json'),
    ]
)

# API Config
docker_build(
    "dev8-api",
    context="src/api"
)

# Architecture
docker_build(
    "dev8-architecture",
    context="architecture",
    live_update=[
        sync('./architecture', '/usr/local/structurizr')
    ]
)
