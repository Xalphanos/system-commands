# Reference solution script for the oppe_2.5 task.
BEGIN {
    FS = ","   # input fields separated by commas
    OFS = ","  # output fields also separated by commas
}

{
    row_sum = 0

    # Go through all columns in this row
    for (i = 1; i <= NF; i++) {
        row_sum += $i          # add this day's production to the row sum
        col_sum[i] += $i       # add to the running total for this column/day
    }

    row_avg = row_sum / NF     # average for this week (this row)
    total_rows++               # count how many weeks/rows we saw

    # Print original row plus the weekly average
    # print with OFS automatically puts commas between fields
    print $0, row_avg
}

END {
    # Now print the final row: average per day (per column)
    # There are always 7 days/columns as per the question.
    line = ""
    for (i = 1; i <= 7; i++) {
        day_avg = col_sum[i] / total_rows

        if (i == 1)
            line = day_avg
        else
            line = line OFS day_avg
    }
    print line
}
