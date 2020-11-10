# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbelen <bbelen@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/02 19:55:35 by bbelen            #+#    #+#              #
#    Updated: 2020/11/10 18:37:20 by bbelen           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
FLAGS = -Wall -Wextra -Werror
SRC = ./srcs/ft_strlen.s ./srcs/ft_strcpy.s ./srcs/ft_strcmp.s ./srcs/ft_read.s ./srcs/ft_write.s ./srcs/ft_strdup.s
OBJS = $(SRC:.s=.o) 

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)
	@echo libasm.a compiled

%.o: %.s 
	@nasm -f elf64 $<

clean:
	@rm -f $(OBJS)
	@echo files cleaned, srcs is squeaky clean

fclean: clean
	@rm ./testasm
	@rm -f $(NAME)
	@echo testasm and libasn.a cleaned

re: fclean all

test: all
	@clang $(FLAGS) -o testasm test.c $(NAME)
	@echo test ready to go in ./testasm

.PHONY: all clean fclean re test