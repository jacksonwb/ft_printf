/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_countseg.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbeall <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/30 15:37:55 by jbeall            #+#    #+#             */
/*   Updated: 2018/10/30 16:49:39 by jbeall           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_countseg(char const *s, char c)
{
	size_t	size;

	size = 0;
	while (*s && *s != c)
	{
		++size;
		++s;
	}
	return (size);
}
