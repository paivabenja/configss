powerOff='power off'
reboot='reboot'
lock='lock'

selected=$(printf '%s;%s;%s' "$powerOff" "$reboot" "$lock" | rofi -dmenu -sep ';')

case "$selected" in
  "$powerOff")
    shutdown now
    ;;
  "$lock")
    betterlockscreen -l --off 5
    ;;

  "$reboot")
    reboot
    ;;
  *) exit 1 ;;
esac
