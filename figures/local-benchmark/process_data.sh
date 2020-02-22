#!/bin/bash
awk 'NF && $1!~/^#/' local_benchmark.dat | \
awk 'BEGIN { FS="," }
    {sum_cp += $1;
      sum_rs += $2;
      sum_tot += $3;
      sum_tot_2 += $3 * $3
    } (NR%5) == 0 {
        avg = sum_tot/5;
        print sum_cp/5, sum_rs/5, avg, sum_tot_2/5 - avg * avg;
        sum_cp = 0;
        sum_rs = 0;
        sum_tot = 0;
        sum_tot_2 = 0;
    }' 
