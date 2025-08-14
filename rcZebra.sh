for i in $(seq 1 5); do
loginctl lock-session
done
logout
