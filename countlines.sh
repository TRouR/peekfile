n_lines=$(wc -l < $1); if [[ $n_lines -eq 0 ]]; then echo File $1 has 0 lines; elif [[ $n_lines -eq 1 ]]; then echo File $1 has 1 line; else echo File $1 has $n_lines lines; fi
