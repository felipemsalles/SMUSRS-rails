# SMUSRS-rails

- Developed by: Camila Ferreira, **Felipe Salles**, Fernando Moreira, Thiago Mozart, Rodrigo Barroso, Yuri Nogueira. (Computer Architecture Project)

![SMUSRS image](https://user-images.githubusercontent.com/61697765/113811744-25571880-9743-11eb-841f-392961e0857b.png)
SMUSRS-rails is the User Mapping System for Health-Related Services, integrated with the Ruby on Rails framework.

## Features
- Integrated with Rails 6

## Dependencies
- Ruby 3.0.0
- Rails 6

## Installation
To install SMUSRS-rails:
- Install all dependencies to set up rbenv:

```bash
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

- Install rbenv to install Ruby:

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.0.0
rbenv global 3.0.0
```

- Install Rails:

```bash
gem install rails -v 6.1.1
```

- Clone the repository (choose the best location on your machine):
```bash
git clone https://github.com/Grupinix/SMUSRS-rails.git
```
The first time you clone the repository, run ```yarn install``` so that Yarn can download all the necessary dependencies for the application.

## Running the Project
Whenever you want to run the project, make sure to pull the latest updates from the development branch:

```bash
git checkout development
git pull origin development
```

Additionally, run ```rails db:migrate``` as there may be new migrations to apply to your database.

To start the server, simply run ```rails s``` in one terminal tab, and in another tab, run Webpack, which manages all the CSS and JS for the application, by running ```./bin/webpack-dev-server```.

To access the home page of the project, go to  ```http:://localhost:3000```.
