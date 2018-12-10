# ft_printf @ 42
This is a partial printf reimplementation for 42 Silicon Valley

## Description
ft_printf handles the following conversions: `cspdouxXf%`.
And the following flags: `#+-0` and `space`.
With the following modifiers: `hh`, `h`, `l`, `ll`.
ft_printf also correctly handles input for minimum field width and precision, specified with `.`

Note: I tried to adhere as closely as I could to how printf handles undefined behaviour, but some behaviour is different.
Note on floats: I tried to handle floats with correct round-to-even behaviour as well as I could. Behaviour is perfect for a very large range of doubles and long doubles. However with numbers with very high precision (~30 decimal places) rounding behaviour is not functional. Additionally with extremely high numbers conversion becomes inaccurate.

For more information on why this behaviour occurs see the following excellent article:
http://www.ryanjuckett.com/programming/printing-floating-point-numbers/

## Using this library
Run `make`
This will build the `libftprintf.a` library
Then include the `ft_printf.h` header in your project and compile with the library

## ft_printf in Libft
The ft_printf function is included in my 42 SV library libft available here: [42-libft](https://github.com/jacksonwb/42-libft)