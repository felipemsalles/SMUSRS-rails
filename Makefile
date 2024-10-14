.ONESHELL:

dependencies:
	yarn upgrade webpack@^4.0.0
	yarn install

start:
	foreman start

kill:
	killall "foreman: master"

migrate:
	rails db:migrate
