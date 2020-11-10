#!/bin/sh

echo "------------Test 1: ft_strlen--------------"
./testasm ft_strlen "there is"
echo "------------------end----------------------"
echo "------------Test 2: ft_strcpy--------------"
./testasm ft_strcpy "never"
echo "------------------end----------------------"
echo "------Test 3: ft_read with buff_size=30----"
./testasm ft_read 30
echo "The actual file"
cat ./file.txt
echo "------------------end----------------------"
echo "------------Test 4: ft_write---------------"
./testasm ft_write "too much coffee"
echo "File1.txt"
cat ./file1.txt
echo "------------------end----------------------"
echo "------------Test 5: ft_strdup--------------"
./testasm ft_strdup "Monday is crap"
echo "------------------end----------------------"
echo "------------Test 6: ft_strcmp--------------"
echo "badumtss badumtss"
./testasm ft_strcmp badumtss badumtss
echo "basum baduma"
./testasm ft_strcmp basum baduma
echo "------------------end----------------------"