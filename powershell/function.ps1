Function SumRange{
    param([int]$high)

    $sum = 0
    for(($i = 0); $i -le $high; $i++){
        # sum of even numbers
        if($i % 2 -eq 0){
            $sum = $sum + $i
            Write-Host $i
        }
    }
    return $sum
}


$s = SumRange -high 100
Write-Host "Sum: $s" 