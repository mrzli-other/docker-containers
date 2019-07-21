## Setting Up Swarm

- register a domain and point it to digital ocean ns servers
- go to https://cloud.digitalocean.com
  - create new project, maybe name it 'packages'
  - create an ubuntu 18.04 droplet, name it 'packages-01'


- on your local machine add a new host configuration to '~/.ssh/config' (use your droplet ip)
  
```
Host packages-01
  HostName 207.154.198.168
```
    
- install docker on droplet and go into swarm mode

```bash
ssh roo@packages-01 # or just 'ssh packages-01'
curl https://get.docker.com | bash
docker swarm init --advertise-addr 207.154.198.168 # use your actual external ip address
```

- setup domain redirect on digital ocean at https://cloud.digitalocean.com/networking/domains
  - create A record - @, 'packages-01' droplet, leave ttl at default 3600
  - create CNAME record - *, @, leave ttl at default 43200

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
