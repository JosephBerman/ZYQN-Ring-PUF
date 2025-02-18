# ZQYN Ring Oscillating Physical Unclonable Function


## Abstract

To create a secure randomly generated number, Physical Unclonable Functions (PUFs), are used. In this project, using a Ring Oscillating (RO) PUF was used to create a random yet repeatable bit. By using a Field Programable Gate Array (FPGA), a RO PUF was synthesized to compare the speed of Look Up Tables (LUTs). The speed of the LUTs will be slightly different due to the entropy in the formation of silicon. These LUTs then would create a clock signal at ever so slightly different frequency. By counting the clock signals and selecting the fastest a random bit is created. 

## Background

For computers, it is important to be able to generate a random number that are truly random. When computers use pseudorandom functions, they seem to get a random number, however, if the seed for said functions is found out, then you can find the output. For day-to-day uses, this is acceptable (I.E. Rolling Dice), but for security purposes you never want your initial seed to be known. If the pseudorandom function was used to create an AES key, an attacker can work backwards to find the seed that was used to create the key. This is where PUFs come into play. 

What makes PUFs special is even to the manufacturer of them, the output will be unknown. They will generate a random output based off the minute differences in silicon during IC fabrication. An interesting thought is when given a challenge should always return the same answer. This may seem contradictory to creating randomness however, the random comes from the fact that every chip will return a different, yet re-creatable answer.  For example, take a hard drive that has an onboard encryption chip. When mass produced every hard drive will have the same chip, however, they all will have a different encryption key that is derived from the PUF. 









#### References
___
Created in Vivado

[Used digilent .xdc constraints file for zedboard for guidance](https://github.com/Digilent/digilent-xdc/blob/master/Zedboard-Master.xdc)
