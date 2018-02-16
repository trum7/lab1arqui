docker-compose build
docker-compose run --rm sa_students_ms rails db:create
docker-compose run --rm sa_students_ms rails db:migrate
docker-compose up
