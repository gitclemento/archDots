#ps hf -opid -C $1 | awk '{ print $1 ; exit }'
ps hef -opid -C $1 | xargs echo
