# for n in $(seq 500); do
#     if [ $[$n % 7] == 0 ]; then
#         echo $n
#     fi

# done

n=1

while [ $n -le 500 ]; do
    if [ $[$n % 7] == 0 ]; then
        echo $n
    fi

    let n+=1

done
