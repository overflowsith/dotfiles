function google()
{
    w3m "https://www.google.com/search?q=$1";
}

function wttr()
{
  curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-Milan}"?0m
}

