/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbeall <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 10:51:37 by jbeall            #+#    #+#             */
/*   Updated: 2018/10/30 10:37:37 by jbeall           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strncat(char *s1, const char *s2, size_t n)
{
	char *str1;

	str1 = s1;
	while (*str1)
		str1++;
	while (n-- && *s2)
		*str1++ = *s2++;
	*str1 = '\0';
	return (s1);
}
