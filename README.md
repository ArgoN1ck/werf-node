# WERF

Training playground

### Prepare environment

Firstly you need to install [minikube](https://kubernetes.io/ru/docs/tasks/tools/install-minikube/), [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/) and [werf](https://ru.werf.io/documentation/v1.2/index.html).

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
$ minikube service werf-app -n werf-app
```