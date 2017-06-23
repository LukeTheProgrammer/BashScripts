#! /bin/bash

printf "Converting PPK to PEM...\n"
puttygen $1 -O private-openssh -o $2
printf "Done\n"
