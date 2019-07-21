## Building Image

- execute `bash build-image.sh <TAG>`
- if `<TAG>` is omitted, it defaults to `latest`

## Running Image On Swarm

- if your remote is for example `packages-01` (specified in `~/.ssh/config`):

```
scp docker-compose.yml packages-01:~
scp scripts/stack-deploy.sh packages-01:~
```

- on your remote execute `bash stack-deploy.sh <USERNAME> <PASSWORD>`
