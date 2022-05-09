# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sejeon <sejeon@student.42seoul.kr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/09 20:15:35 by sejeon            #+#    #+#              #
#    Updated: 2022/05/09 20:15:37 by sejeon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libftprintf.a

CC			=	gcc
CFLAG		=	-Wall -Wextra -Werror

RM			=	rm -f

AR			=	ar rcs

SRCS		=	ft_printf.c\
				function.c

OBJS		=	$(SRCS:.c=.o)


%.o		:	%.c
			$(CC) $(CFLAG) -c -o $*.o $<
	

$(NAME)		: 	$(OBJS)
			@ $(AR) $(NAME) $(OBJS)
all			:	$(NAME)

clean		:
				$(RM) $(OBJS)

fclean		:	clean
				$(RM) $(NAME)

re			:	fclean all

.PHONY		:	all clean fclean re
