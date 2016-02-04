# smcOriginal
A patched version of the original smc tool by devnull

This is what I could find of the original smc.c and smc.h created by devnull in 2006. I couldn't find the original tool anywhere so this will be a recreation of it.

The original tool had a couple bugs which will be fixed, and poor support for printing floats, which will be added in.

# Data Formats

Note that this may not be an exhaustive list of every format you may come across on your machine. Since I only have one to test with this is simply a list of all types that appear on my machine.
Types preceded with { are usually structures.

| Data Name | Data Type | Explanation |
| ------ | ------ | ------ |
| [ch8*] | String of 8 bit characters | Not necessarily words or null terminated |
| [flag] | Bit flag | |
| [fpXX] | 16 bit unsigned fixed point | Each X is one hex number. First X is the number of digits before the decimal, second X is the number after |
| [hex_] | Hexadecimal number? | Length of data will vary |
| [siXX] | signed int | signed int of length XX. Eg. [si8 ]=8 bits, [si16]=16 bits |
| [spXX] | 16 bit signed point | same as [fpXX] but with one sign bit at the front |
| [uiXX] | unsigned int | unsigned int of length XX. Eg. [ui8 ]=8 bits, [ui32]=32 bits |
| [{alC] | struct | Structure related to the analog light sensors. 'C' is one of 'a', 'c', 'i', 'p', 'r', 't', 'v'. 'a' is calculation information. 'c' is configuration. 'i' is sensor information. 'p' is unknown. 'r' is thermal coefficient and baseline temperature. 't' is the calculation threshold. 'v' is the latest reading from the sensor. |
| [{fds] | struct | Fan description |
| [{hdi] | struct | Unknown. Probably related to a hard drive. |
| [{lim] | struct | Has to do with plimits between SMC and OS |
| [{lkb] | | |
| [{lks] | | |
| [{mss] | enumeration | Enumerated state of the SMC's state machine. |
| [{rev] | | Revision number. |