################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.2                                                #
# There is more updates soon..                                 #
################################################################
#
#!/bin/bash

for i in $(cat $1); do
whatweb -v -a $i
done
