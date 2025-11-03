for arg in "$@"
do
 if [[ $arg == *.txt ]]
 then
  n_lines=$(wc -l < "$arg")
  if [[ $n_lines -eq 0 ]]
  then
   echo "File $arg has 0 lines"
  elif [[ $n_lines -eq 1 ]]
  then
   echo "File $arg has 1 line"
  else
   echo "File $arg has $n_lines lines"
  fi
 fi
done
