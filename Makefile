# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbeall <jbeall@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/14 10:09:01 by jbeall            #+#    #+#              #
#    Updated: 2018/11/29 12:02:45 by jbeall           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Werror -Wextra
SRC = ft_printf.c parse.c handler.c handler2.c utils_handle.c handlef.c \
utils_handlef.c utils_handlef_2.c utils_handlef_3.c utils.c utils_parse.c
OBJECTS = $(SRC:.c=.o)
LIBRARIES = libftprintf.a ./libft/libft.a

$(NAME):
	@make -C ./libft --no-print-directory
	@cp ./libft/libft.a $(NAME)
	@echo "creating ft_printf objects..."
	@gcc $(FLAGS) -c $(SRC)
	@echo "\033[92mdone!\033[0m"
	@echo "creating libftprintf.a library..."
	@ar -rc $(NAME) $(OBJECTS)
	@echo "\033[92mdone!\033[0m"
all: $(NAME)
test: $(NAME)
	rm -f ./printf_tester
	gcc -o printf_tester -g ft_printf_tester.c $(SRC) ./libft/libft.a
	./printf_tester
clean:
	@echo "cleaning..."
	@make clean -C ./libft
	@echo "libft objects removed!"
	@rm -f $(OBJECTS)
	@echo "ft_printf objects removed!"
fclean: clean
	@make fclean -C ./libft
	@rm -f $(NAME)
	@echo "libftprintf.a removed!"
re: fclean all