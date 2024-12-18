#!/usr/bin/env bash
docker compose -f docker-compose.mac.yml build  && \
docker compose -f docker-compose.mac.yml run --rm -it app