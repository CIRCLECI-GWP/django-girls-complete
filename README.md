# Complete Django Girls Tutorial

This repository contains the code that one would eventually have were they to go through the [Django Girls tutorial](https://tutorial.djangogirls.org/en/).

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/CIRCLECI-GWP/django-girls-complete/tree/circleci.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/CIRCLECI-GWP/django-girls-complete/tree/circleci)

## Differences

Expressing my authorial rights, some things are a bit different from the tutorial:

- A more extensive `.gitignore` file
- A `.editorconfig` file
- Docker related files
  - `.dockerignore`
  - `docker-compose.yml`
  - `Dockerfile`
- `init.sh` - a script to run in the container
- `LICENSE`
- `ruff.toml` - a configuration file for ruff (Python linting and formatting)

- Within `mysite/settings.py`,

  - Use of `Africa/Nairobi` as my *TIME_ZONE*
  - Use of `en-us` as my *LANGUAGE_CODE*
  - Addition of `0.0.0.0`, `.herokuapp.com`, `.pythonanywhere.com`, and `.amazonaws.com` to the *ALLOWED_HOSTS* list

## Setup

In a python virtual environment, run:

- `pip install -r requirements.txt`
- `python manage.py migrate blog`
- `python manage.py createsuperuser` (to create user that you'll use to log in)

### Run the application

```bash
python manage.py runserver
```

Now, you are good to go. Your blog is ready.

### Test

```bash
python manage.py test
```

### CircleCI

First, [install the Circle CLI](https://circleci.com/docs/local-cli/#installation), then run:

```bash
circleci build build
```

### Docker

NB: The app instance will run off the a preset admin user as set in [init.sh](/init.sh).

To spin up the application using docker, ensure that Docker is installed. Then run:

```bash
docker compose up
```

Or in detached mode:

```bash
docker compose up -d
```

The application will be live at [0.0.0.0:8000](0.0.0.0:8000)

### Log in/ out

- Click on `Log in` (you'll be redirected to the Admin page)
- On the admin page, fill in the credentials of the superuser created in [Setup](#setup)
- Click on the *Log in* button (You'll be redirected back to the page)
- Click on `Log out` to log out.

### Blog entry

- Log in
- Click on the `+` button, enter the ***title*** and ***text***
- Finally hit the `Save` button
