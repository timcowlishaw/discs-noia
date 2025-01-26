FROM n3wjack/faircamp AS faircamp
COPY data /data
WORKDIR /data
RUN faircamp

FROM caddy:2.9.1-builder AS builder
RUN xcaddy build --with github.com/jasonlovesdoggo/caddy-defender

FROM caddy:2.9.1-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY --from=faircamp /data/.faircamp_build /srv
COPY conf /etc/caddy
