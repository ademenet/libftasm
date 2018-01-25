#include <fcntl.h>
#include <unistd.h>
#include <libfts.h>

int			main(int argc, char **argv)
{
	int		fd;
	int		i = 0;

	if (argc > 1)
	{
		while (i < argc)
		{
			fd = open(argv[i], O_RDONLY);
			ft_cat(fd);
			close(fd);
			i++;
		}
	}
	return (0);
}