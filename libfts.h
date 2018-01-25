/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ademenet <ademenet@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/01/22 10:54:51 by ademenet          #+#    #+#             */
/*   Updated: 2018/01/25 17:14:28 by ademenet         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <unistd.h>
# include <stdlib.h>

/*
** MANDATORY PART
*/

int             ft_bzero(void *s, size_t n);
int             ft_isalnum(int c);
int             ft_isalpha(int c);
int             ft_isascii(int c);
int             ft_isdigit(int c);
int             ft_isprint(int c);
void			*ft_memcpy(void *dst, const void *src, size_t n);
void	        *ft_memset(void *b, int c, size_t len);
void	        ft_puts(char const *s);
char	        *ft_strcat(char *s1, const char *s2);
char	        *ft_strdup(const char *s1);
size_t			ft_strlen(const char *s);
int             ft_tolower(int c);
int             ft_toupper(int c);

#endif