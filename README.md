# README

This applications is a demo project for devise gem to authenticate with google or facebook.


## Requirements
* Docker
* Docker Compose
## Installation
Download the project and run the following steps below:
```
cp config/application.yml.example config/application.yml
```

edit the file **config/application.yml** and **add your google and facebook credentials**.

```docker build 
docker-compose run --rm web bundle install
docker-compose run --rm web yarn install
docker-compose run --rm web bundle exec rails db:create
docker-compose run --rm web bundle exec rails db:migrate
docker compose up web -d
```

Note: after up the containers, if you desire to edit the application by yourself, open a new terminal e run comand below to make tailwind watch the changes:

```
docker composer run --rm web rails tailwindcss:watch
```	

## Usage

Open your browser and go to http://localhost:3000



## Environment Variables
Setting the following environment variables will change the default behavior of the application.
Configure these in your `config/application.yml` file.
* `GOOGLE_CLIENT_ID` - Google client id
* `GOOGLE_CLIENT_SECRET` - Google client secret
* `FACEBOOK_CLIENT_ID` - Facebook client id
* `FACEBOOK_CLIENT_SECRET` - Facebook client secret






