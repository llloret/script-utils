#/bin/sh
path=${1-.}
size=${2-10M}

find $path -type f -size +$size -printf "%s %p\n" | sort -nr
