NAME = libfts.a

SOURCES = 	ft_abs.s\
			ft_bzero.s\
			ft_cat.s\
			ft_isalnum.s\
			ft_isalpha.s\
			ft_isascii.s\
			ft_isdigit.s\
			ft_isprint.s\
			ft_memcpy.s\
			ft_memset.s\
			ft_putchar.s\
			ft_puts.s\
			ft_putsfd.s\
			ft_strcat.s\
			ft_strchr.s\
			ft_strclr.s\
			ft_strdup.s\
			ft_strlen.s\
			ft_strnew.s\
			ft_tolower.s\
			ft_toupper.s

OBJECTS = $(SOURCES:.s=.o)

CC = gcc

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

%.o: %.s ./libfts.h
	nasm -f macho64 $<

tests: $(OBJECTS) tests.c
	$(CC) tests.c libfts.a -o tests
	$(CC) ft_cat.c libfts.a -o ft_cat

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)
	rm -f tests ft_cat

re: fclean all

.PHONY: clean fclean re tests
