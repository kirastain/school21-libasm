/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bbelen <bbelen@student.21-school.ru>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/04 12:43:54 by bbelen            #+#    #+#             */
/*   Updated: 2020/11/10 18:32:16 by bbelen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

static void	ft_read_do(int buff_size, char *path)
{
	int		fd;
	char	str[buff_size];
	
	if (buff_size < 1)
		return ;
	fd = open(path, O_RDONLY);
	ft_read(fd, str, buff_size);
	printf("ft_read: %s\n", str);
	close(fd);
	fd = open(path, O_RDONLY);
	read(fd, str, buff_size);
	printf("   read: %s\n", str);
	close(fd);
}

static void	ft_write_do(char *str)
{
	int		i;
	int		fd;

	i = 0;
	fd = open("./file1.txt", O_RDWR);
	while (str[i])
	{
		ft_write(fd, &str[i], 1);
		i++;
	}
	i = 0;
	ft_write(fd, "\n\n", 2);
	while (str[i])
	{
		write(fd, &str[i], 1);
		i++;
	}
	write(fd, "\n", 1);
	close(fd);
}

int		    main(int argc, char **argv)
{
    char    *dest;

	if (argc == 3)
	{
		if (strcmp("ft_strlen", argv[1]) == 0)
        {
            printf("   strlen: %lu\n", strlen(argv[2]));
        	printf("ft_strlen: %d\n", ft_strlen(argv[2]));
        }
		else if (strcmp("ft_strcpy", argv[1]) == 0)
        {
            dest = (char *)malloc(sizeof(char) * (strlen(argv[2]) + 1));
            printf("   strcpy: %s\n", strcpy(dest, argv[2]));
	        printf("ft_strcpy: %s\n", ft_strcpy(dest, argv[2]));
            if (dest)
                free(dest);
        }
		else if (strcmp("ft_read", argv[1]) == 0)
		{
			ft_read_do(atoi(argv[2]), "./file.txt");
        }
		else if (strcmp("ft_write", argv[1]) == 0)
		{
			ft_write_do(argv[2]);
        }
		else if (strcmp("ft_strdup", argv[1]) == 0)
		{
			printf("ft_strdup: %s\n", ft_strdup(argv[2]));
			printf("   strdup: %s\n", strdup(argv[2]));
        }
		else
			printf("Wrong input: please write ./testasm [function] [args]\n");
	}
	else if (argc == 4)
	{
		if ((strcmp("ft_strcmp", argv[1]) == 0) || (strcmp("strcmp", argv[1]) == 0))
        {
            printf("   strcmp: %d\n", strcmp(argv[2], argv[3]));
	        printf("ft_strcmp: %d\n", ft_strcmp(argv[2], argv[3]));
        }
		else
			printf("Wrong input: please write ./testasm [function] [args]\n");
	}
	else
		printf("Wrong input: please write ./testasm [function] [args]\n");
	return (0);
}