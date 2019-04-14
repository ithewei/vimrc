#!/bin/bash

find . -name "*.h" -o -name "*.c" -o -name "*.hpp" -o -name "*.hpp" -o -name "*.cpp" -o -name "*.cc" > cscope.files
cscope -bq -i cscope.files

ctags -R --c++-kinds=+px --fields=+iaS --extra=+q
