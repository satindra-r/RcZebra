logout
if [ "$DESKTOP_SESSION" = "plasma" ]; then
    for i in $(seq 1 5); do
        loginctl lock-session
    done
elif [ "$DESKTOP_SESSION" = "cinnamon" ]; then
    while true; do
        cinnamon-screensaver-command --lock
    done
else
    while true; do
        gdbus call --session --dest org.gnome.ScreenSaver --object-path /org/gnome/ScreenSaver --method org.gnome.ScreenSaver.Lock
    done
fi
