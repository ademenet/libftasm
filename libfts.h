/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ademenet <ademenet@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/01/22 10:54:51 by ademenet          #+#    #+#             */
/*   Updated: 2018/01/22 17:11:07 by ademenet         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

/*
** MANDATORY PART
*/

int             ft_bzero(void *s, size_t n);
int             ft_isalnum(int c);
int             ft_isalpha(int c);
int             ft_isascii(int c);
int             ft_isdigit(int c);
int             ft_isprint(int c);
void	        ft_puts(char const *s);
char	        *ft_strcat(char *s1, const char *s2);
int             ft_tolower(int c);
int             ft_toupper(int c);

#endif