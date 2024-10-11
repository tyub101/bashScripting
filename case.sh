#!/bin/bash
read -p "Enrer y or n : " ANSWER 
case "$ANSWER" in 
  [yY]|[yY][eE][sS])
    echo "You Answered YES"
  ;;
  [nN]|[nN][oO])
    echo "You Answered No"
  ;;
  *)
   echo " Invalid Answer "
  ;;
esac

