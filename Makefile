.PHONY: clean fclean

NAME = libfts.a

ASMCC = nasm

CC = ld

SOURCES = ft_bzero.asm

OBJECTS = $(SOURCES:.c=.o)

$(NAME):
	nasm -f macho64 $(SOURCES)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)
	# ld -macosx_version_min 10.7.0 $(OBJECTS)

all: $(NAME)

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm $(NAME)

re: fclean all
