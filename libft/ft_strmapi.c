/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbeall <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/25 16:41:21 by jbeall            #+#    #+#             */
/*   Updated: 2018/10/30 20:44:31 by jbeall           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	char	*str;
	int		i;

	i = 0;
	str = NULL;
	if (s && f)
	{
		if (!(str = (char*)malloc(ft_strlen(s) + 1)))
			return (NULL);
		while (*s)
		{
			str[i] = f(i, *s++);
			i++;
		}
		str[i] = '\0';
	}
	return (str);
}
