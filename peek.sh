if [[ -z $2 ]]
then
 echo Number of lines not provided; echo Default to 3
 n_lines=3
else
 n_lines=$2
fi

if [[ $(wc -l < $1) -le $((2*$n_lines)) ]]
then
 echo Total file\'s content
 cat $1
else
 echo !Warning:Number of input file lines greater than $((2*$n_lines))"(2x$n_lines)"
 echo First and Last $n_lines
 head -n$n_lines $1
 echo ...
 tail -n$n_lines $1
fi
