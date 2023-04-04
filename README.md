# README

Made based on https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails

The first time:

```bash

docker compose run web bash

  rake db:create
  rake db:migrate
  rake db:migrate:status

exit

docker compose up -d
docker attach rails-docker-template-web-1
```

```
docker compose exec web rails c
```
