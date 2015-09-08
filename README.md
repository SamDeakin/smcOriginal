# smcOriginal
A patched version of the original smc tool by devnull

This is what I could find of the original smc.c and smc.h created by devnull in 2006. I couldn't find the original tool anywhere so this will be a recreation of it.

The original tool had a couple bugs which will be fixed, and poor support for printing floats, which will be added in.

# Data Formats

Note that this may not be an exhaustive list of every format you may come across on your machine. Since I only have one to test with this is simply a list of all types that appear on my machine.
Types preceded with { are usually structures.

| Data Name | Data Type | Explanation |
| ------ | ------ | ------ |
| [{alc] | | |
| [{ali] | | |
| [{alp] | | |
| [{alv] | | |
| [{fds] | | |
| [{hdi] | | |
| [{lim] | | |
| [{lkb] | | |
| [{lks] | | |
| [{mss] | | |
| [{rev] | | |
| [ch8*] | String of 8 bit characters | Not necessarily words or null terminated |
| [flag] | Bit flag | |
| [fpXX] | 16 bit unsigned floating point | Each X is one hex number. First X is exponent, second is significand |
| [hex_] | Hexadecimal number? | Length of data will vary |
| [siXX] | signed int | signed int of length XX. Eg. [si8 ]=8 bits, [si16]=16 bits |
| [spXX] | 16 bit signed floating point | same as [fpXX] but with one sign bit at the front |
| [uiXX] | unsigned int | unsigned int of length XX. Eg. [ui8 ]=8 bits, [ui32]=32 bits |