# v2ray-privoxy
### Docker compose

`docker-compose.yaml`

```yaml
version: '3.3'
services:
    v2ray-privoxy:
        image: kuma1430/v2ray-privoxy
        container_name: v2ray-privoxy
        volumes:
            - './privoxy.conf:/etc/privoxy/privoxy.conf'
            - './v2_client.json:/etc/v2ray/config.json'
            - "/etc/timezone:/etc/timezone:ro"
            - "/etc/localtime:/etc/localtime:ro"
        ports:
            - '8118:8118'
        restart: unless-stopped
```

Once `docker-compose.yaml` is ready, you can run

```bash
docker-compose up
```