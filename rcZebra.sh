if [ "$DESKTOP_SESSION" = "plasma" ]; then
    for i in $(seq 1 5); do
        loginctl lock-session
    done
else
    while true; do
        loginctl lock-session
    done
fi

logout
