cat input.txt | awk 'BEGIN{FS=OFS=","} {$7 = "+"$5"-"$7; print}' | cut -d',' -f-4,6-