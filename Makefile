# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jackson <jbeall@student.42.us.org>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/14 10:09:01 by jbeall            #+#    #+#              #
#    Updated: 2018/12/14 21:41:52 by jackson          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Werror -Wextra
SRC := ft_printf.c parse.c handler.c handler2.c utils_handle.c handlef.c \
utils_handlef.c utils_handlef_2.c utils_handlef_3.c utils.c utils_parse.c
SRC_DIR = ./src
OBJECTS := $(SRC:.c=.o)
LIBRARIES = libftprintf.a ./libft/libft.a
SRC := $(addprefix $(SRC_DIR)/, $(SRC))
INC_DIR = ./includes/
LIB_DIR = ./libft/

(NAME):
	@make -C ./libft --no-print-directory
	@cp ./libft/libft.a $(NAME)
	@echo "creating ft_printf objects..."
	@clang $(FLAGS) -c $(SRC) -I$(INC_DIR) -I$(LIB_DIR)
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
	@make clean -C ./libft --no-print-directory
	@echo "libft objects removed!"
	@rm -f $(OBJECTS)
	@echo "ft_printf objects removed!"
fclean: clean
	@make fclean -C ./libft --no-print-directory
	@rm -f $(NAME)
	@echo "libftprintf.a removed!"
re: fclean all