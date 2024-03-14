curl -s -o response.txt http://localhost:9889
md5sum_response=$(md5sum response.txt | awk '{ print $1 }')
md5sum_index=$(md5sum index.html | awk '{ print $1 }')
if [ "$md5sum_response" == "$md5sum_index" ]; then
    ./telegram.sh  163689317 "md5 sum is ok"
else
    ./telegram.sh 163689317  "md5 sum is not ok"
fi
