# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jackson <jbeall@student.42.us.org>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/22 16:25:23 by jbeall            #+#    #+#              #
#    Updated: 2018/12/14 21:30:55 by jackson          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ./ft_memset.c ./ft_bzero.c ./ft_memcpy.c ./ft_memccpy.c ./ft_memmove.c \
./ft_memchr.c ./ft_memcmp.c ./ft_strlen.c ./ft_strdup.c ./ft_strcpy.c \
./ft_strncpy.c ./ft_strcat.c ./ft_strncat.c ./ft_strlcat.c ./ft_strchr.c \
./ft_strrchr.c ./ft_strstr.c ./ft_strnstr.c ./ft_strcmp.c ./ft_strncmp.c \
./ft_atoi.c ./ft_isspace.c ./ft_isalpha.c ./ft_isdigit.c ./ft_isalnum.c \
./ft_isascii.c ./ft_isprint.c ./ft_toupper.c ./ft_tolower.c ./ft_memalloc.c \
./ft_memdel.c ./ft_strnew.c ./ft_strdel.c ./ft_strclr.c ./ft_striter.c \
./ft_striteri.c ./ft_strmap.c ./ft_strmapi.c ./ft_strequ.c ./ft_strnequ.c \
./ft_strsub.c ./ft_strjoin.c ./ft_strtrim.c ./ft_strsplit.c ./ft_itoa.c \
./ft_putchar.c ./ft_putstr.c ./ft_putendl.c ./ft_putnbr.c ./ft_putchar_fd.c \
./ft_putstr_fd.c ./ft_putendl_fd.c ./ft_putnbr_fd.c ./ft_lstnew.c \
./ft_lstdelone.c ./ft_lstdel.c ./ft_lstadd.c ./ft_lstiter.c ./ft_lstmap.c \
./ft_strrev.c ./ft_wordcount.c ./ft_countseg.c \
./ft_lstappend.c ./ft_strsplit_lst.c ./ft_lstrev.c ./ft_lstcount.c \
./ft_strnjoin.c ./ft_ptoa.c
INCLUDES = ./libft.h
OBJECTS = $(SRC:.c=.o)
FLAGS = -Wall -Werror -Wextra

$(NAME):
	@echo "Building libft.a library..."
	@gcc $(FLAGS) -c $(SRC) -I.
	@echo "\033[92mdone!\033[0m"
	@ar -rc $(NAME) $(OBJECTS)
all: $(NAME)
clean:
	@rm -f $(OBJECTS)
fclean: clean
	@rm -f $(NAME)
	@echo "libft.a removed!"
re: fclean all
