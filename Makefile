# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbelen <bbelen@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/02 19:55:35 by bbelen            #+#    #+#              #
#    Updated: 2020/11/04 14:43:36 by bbelen           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
FLAGS = -Wall -Wextra -Werror

SRC = ./srcs/ft_strlen.s #./srcs/ft_strcpy.s ./srcs/ft_strcmp.s ./srcs/ft_write.s \
		./srcs/ft_read.s ./srcs/ft_strdup.s
#SRC = hello.s
#ld -m elf_x86_64 -s -o hello $(OBJS)
OBJS = $(SRC:.s=.o) 

all: $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

%.o: %.s 
	nasm -f elf64 $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

fclean_test: fclean
	rm testasm

re: fclean all

test:
	clang $(FLAGS) -o testasm test.c $(NAME)

.PHONY: all clean fclean re test fclean_test