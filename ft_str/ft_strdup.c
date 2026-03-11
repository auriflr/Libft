/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: babyf <babyf@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/23 12:14:57 by afloris           #+#    #+#             */
/*   Updated: 2026/03/11 14:07:58 by babyf            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

char	*ft_strdup(const char *str)
{
	char	*dup;
	int		i;
	int		j;

	i = 0;
	while (str[i] != '\0')
		i++;
	dup = (char *)malloc((i + 1) * sizeof(char));
	if (!dup)
		return (NULL);
	j = 0;
	while (str[j] != '\0')
	{
		dup[j] = str[j];
		j++;
	}
	dup[i] = '\0';
	return (dup);
}
