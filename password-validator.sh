# Color
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' #No Color
password="$1"
len="${#password}"
if test $len -ge 10 ; then
    echo "$1" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$1" | grep -q [A-Z]
                if test $? -eq 0 ; then
                    echo "$1" | grep -q [a-z]
                       if test $? -eq 0 ; then                
						echo "$1" | grep -q [#,%,!,$,@]
                           if test $? -eq 0 ; then
                             echo -e "\x1B[01;92m (0) \x1B[0m"
                           else
                             echo -e "\x1B[31m (1) weak password include special chars \x1B[0m"
                           fi
                       else
                         echo -e "\x1B[31m (1) weak password include lower case char \x1B[0m "
                       fi
                   else
                     echo -e "\x1B[31m (1) weak password include capital char \x1B[0m" 
                 fi
          else
       echo -e "\x1B[31m (1) please include the numbers in password it is weak password \x1B[0m"
     fi
else
    echo -e "\x1B[31m (1) password length should be greater than or equal 10 hence weak password \x1B[0m"
fi
