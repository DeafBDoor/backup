#!/bin/sh

# Remember to set var LNX with the path to the kernel you want to extract the files

find  $LNX                                                                \
	-path "$LNX/arch/*" ! -path "$LNX/arch/arm*" -prune -o               \
	-path "$LNX/tmp*" -prune -o                                           \
	-path "$LNX/Documentation*" -prune -o                                 \
	-path "$LNX/scripts*" -prune -o                                       \
	-path "$LNX/tools*" -prune -o	\
	-path "$LNX/samples*" -prune -o	\
	-name "*.[chxsS]" -print >cscope.files
