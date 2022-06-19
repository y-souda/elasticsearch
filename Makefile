all: build start

check:
	@/usr/bin/docker compose ps
build:
	@/usr/bin/docker compose build --no-cache
start:
	@/usr/bin/docker compose up -d --no-build
	@/usr/bin/docker compose ps
restart:
	@/usr/bin/docker compose up -d --force-recreate
	@/usr/bin/docker compose ps
upgrade:
	@/usr/bin/docker compose pull
	@/usr/bin/docker compose up -d --force-recreate
	@/usr/bin/docker compose ps
clean:
	@/usr/bin/docker compose down -v
	@/usr/bin/docker compose rm -f
