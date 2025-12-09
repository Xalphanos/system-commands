#!/bin/bash
# Reference solution script for the oppe_1.5 task.


BEGIN{
    FS=','
    OFS=','
}

{   if (NR == 1){
    num_days=NF
}


week_sum=0

    for(i =1; i<=NF; i++){
        value=$i + 0
        week_sum= week_sum + value
        day_sum[i]+=value
    }

    print $0, week_sum

}



END {
# print the final "total per day" row
    for (i=1; i<= num_days; i++){
        if (i==1){
            # first value wothout any comma

            printf "%d". daysum[i]
        }else{
        printg "%s%d". OFS, daysum[i]
        }
    }
    printf "\n"

}


