host="google.com"
ping -c 1 $host
if [ "$?" -eq "0" ]
then 
  echo "$HOST reachable."
else 
    echo "$HOST unreachable."
fi
