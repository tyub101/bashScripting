host="google.com"
ping -c 1 $host
if [ "$?" -eq "0" ]
then 
  echo "$HOST reachable."
  
else 
    echo "$HOST unreachable."
    exit 1
fi
exit 0
