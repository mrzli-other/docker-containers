FROM abiosoft/caddy:1.0.1

ENV CADDY_DOMAIN_NAME domain-name.com
ENV CADDY_LETS_ENCRYPT_EMAIL some@some.com
ENV CADDY_LETS_ENCRYPT_CA_URL https://acme-staging-v02.api.letsencrypt.org/directory
# ENV CADDY_LETS_ENCRYPT_CA_URL https://acme-v02.api.letsencrypt.org/directory - used in production
ENV CADDY_REGISTRY_HOST registry
ENV CADDY_REGISTRY_PORT 5000

COPY Caddyfile /etc/Caddyfile
COPY index.html /srv/index.html
