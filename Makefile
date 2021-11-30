#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By:  nuo  <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: ____/__/__ __:__:__ by nuo               #+#    #+#              #
#    Updated: ____/__/__ __:__:__ by nuo              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	=	libft.a
HEADER	=	libft.h

SRC	=	$(filter-out $(wildcard ft_lst*.c), $(wildcard *.c))
OBJ	=	$(SRC:.c=.o)
#OBJ	=	*.o

BSRC	=	$(wildcard ft_lst*.c)
BOBJ	=	$(BSRC:.c=.o)

CC	=	gcc -c
CFLAGS	=	-Wall -Werror -Wextra

RM	=	/bin/rm -f

$(NAME)	:	$(OBJ) $(HEADER)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

all	:	$(NAME)

bonus	:	$(BOBJ) $(OBJ) $(HEADER)
		ar rc $(NAME) $(BOBJ) $(OBJ)
		ranlib $(NAME)

$(OBJ)	:	$(SRC) $(HEADER)
		$(CC) $(CFLAGS) $(SRC)

$(BOBJ)	:	$(SRC) $(BSRC) $(HEADER)
		$(CC) $(CFLAGS) $(SRC) $(BSRC)

clean	:
		$(RM) *.o

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

rebonus :	fclean bonus

.PHONY	:	all clean fclean re
