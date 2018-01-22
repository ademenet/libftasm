NAME = libfts.a

SOURCES = \
			ft_isalnum.s\
			ft_isalpha.s\
			ft_isascii.s\
			ft_isdigit.s\
			ft_isprint.s

OBJECTS = $(SOURCES:.s=.o)

CC = gcc

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)
	# ld -macosx_version_min 10.7.0 $(OBJECTS)

%.o: %.s ./libfts.h
	nasm -f macho64 $<

tests: $(OBJECTS) tests.c
	$(CC) tests.c libfts.a -o tests

clean:
	rm -rf $(OBJECTS)

tclean:
	# rm tests.o
	# rm a.out

fclean: clean tclean
	rm $(NAME)

re: fclean all

.PHONY: clean fclean re tests
