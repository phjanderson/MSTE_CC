# MSTE_CC - Atari Mega STE cache control

This project contains small utilities to control the CPU speed and cache of an Atari Mega STE.
The "official" way is through XControl, but I wanted to be able to control it without XControl.

I use personally use it in XBoot to set different speeds and cache settings for different profiles.
XBoot has a built in option to enable or disable cache, but there is no specific option to control the CPU speed.
Instead I added all 3 utilities to my auto folder, sorted them to the top and enable only one of them in each boot profile.
This has the additional benefit of increasing the boot speed as it will process the rest of the boot sequence in 16mhz with cache.

I'm sure that tools like this already exist, but I couldn't find them so I decided to write it myself.

_The program doesn't check if you actually have a Mega STE, so it will produce an error if you run it on any other machine. Feel free to improve the code to add a check if machine is a Mega STE and add a more gentle error message instead. Just share your improvement back using a fork and pull request._

## Uaage

By defaul the Atari Mega STE boots in 8mhz with cache disabled.

* 16MHZ_CH.PRG - switch to 16MHz with cache enabled
* 16MHZ.PRG - switch to 16MHz with cache disabled
* 8MHZ.PRG - switch to 8MHz with cache disabled
