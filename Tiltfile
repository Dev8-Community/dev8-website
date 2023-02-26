docker_compose("./docker-compose.yaml")

dc_resource("web", resource_deps=["api"], labels=["frontend"])
dc_resource("api", resource_deps=["db"], labels=["backend"])
dc_resource("db", labels=["data"])
dc_resource("architecture", labels=["meta"])

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
    context="src/api",
    live_update=[
        sync('./src/api', '/usr/src/app'),
        sync('./src/api/package.json', '/usr/src/app/package.json'),
        run('npm install', trigger='./src/api/package.json')
    ]
)

# Architecture
docker_build(
    "dev8-architecture",
    context="architecture",
    live_update=[
        sync('./architecture', '/usr/local/structurizr')
    ]
)

# App Database
docker_build(
    "dev8-db",
    context="src/db"
)
