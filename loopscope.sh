value="20250334";
echo $value

echo whoops

while [[ $(date -d $value 2>: 1>:; echo $?) -ne 0 ]]
do
    echo "$value inside"
    value="20250303"
    echo "$value inside after change"
done

echo $value out