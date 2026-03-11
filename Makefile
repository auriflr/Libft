NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror -fPIE
RM = rm -f
AR = ar rcs
MKDIR = mkdir -p

FT_FD := ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c  ft_putstr_fd.c

FT_IS := ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c

FT_MEM := ft_bzero.c ft_calloc.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
    ft_memmove.c ft_memset.c

FT_STR := ft_split.c ft_strdup.c ft_strjoin.c ft_strlcpy.c ft_strmapi.c \
	ft_strnstr.c ft_strtrim.c ft_strchr.c ft_striteri.c ft_strlcat.c \
    ft_strlen.c ft_strncmp.c ft_strrchr.c ft_substr.c

FT_TO := ft_atoi.c ft_itoa.c ft_tolower.c ft_toupper.c

FT_LST := ft_lstadd_back.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
    ft_lstsize.c ft_lstadd_front.c ft_lstdelone.c ft_lstlast.c ft_lstnew.c

SRCS := $(addprefix ft_is/, $(FT_IS)), $(addprefix ft_fd/, $(FT_FD)), \
	$(addprefix ft_mem/, $(FT_MEM)), $(addprefix ft_str/, $(FT_STR)), \
	$(addprefix ft_to/, $(FT_TO)), $(addprefix ft_lst/, $(FT_LST))

OBJS_DIR = objs

OBJS = ($(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o)))

$(OBJS_DIR)/%.o: %.c
	$(MKDIR) $(dir @)
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJS)
	 $(AR) $@ $^

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re