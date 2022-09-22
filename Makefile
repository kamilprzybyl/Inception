NAME = inception

all: $(NAME)

$(NAME):
	mkdir -p /home/kprzybyl/data/wordpress
	mkdir -p /home/kprzybyl/data/mariadb
	sudo docker compose -f srcs/docker-compose.yml up --build

clean:
	sudo docker compose -f docker-compose.yml down

fclean:
	sudo docker compose -f srcs/docker-compose.yml down --volumes
	sudo rm -rf /home/kprzybyl/data/mariadb
	sudo rm -rf /home/kprzybyl/data/wordpress

reload:
	sudo docker compose -f srcs/docker-compose.yml up

re: fclean all
