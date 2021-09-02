Function PrintArray{
    param([int[]]$array)

    foreach ($item in $array) {
        Write-Host $item
    }
}

Function SumArray{
    param([int[]]$array)

    $sum = 0
    for(($i=0); $i -le $array.Length; $i++){
        $sum = $sum + $array[$i]
    }
    return $sum
}

# Multidimensional Array
[int[,]]$array_2d = [int[,]]::New(4,4)
Write-Host "rank:" $array_2d.rank
Write-Host "length:" $array_2d.Length

# initalize
for(($i=0); $i -lt 4; $i++){
    for(($j=0); $j -lt 4; $j++){
        $array_2d[$i, $j] = 33
    }
}


for(($i=0); $i -lt 4; $i++){
    for(($j=0); $j -lt 4; $j++){
        $array_2d[$i, $j]
    }
}

# $a = 1..10
# $a_sum = SumArray -array $a

# Write-Host "Sum of Array: $a_sum"