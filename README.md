# WERF

Training playground

### Prepare environment

Firstly you need to install [microk8s](https://microk8s.io/#install-microk8s) and [werf](https://ru.werf.io/documentation/v1.2/index.html).

After installing you need to create a secret named 'registrysecret':

```bash
$ kubectl create secret docker-registry registrysecret \
  --docker-server='https://index.docker.io/v1/' \
  --docker-username='<DOCKER HUB USERNAME>' \
  --docker-password='<DOCKER HUB PASSWORD>'
```

### Run

```bash
$ werf converge --repo '<DOCKER HUB USERNAME>'/'<DOCKER HUB REPOSITORY>'
```