#!/bin/sh

binfolder=$HOME/.local/bin/

# IFS=$'\n'

flatpak list --app | while read -r app
do
  appname="$(echo "$app" | awk -F '\t' '{print $1}')-Flatpak"
  applaunchname=$(echo "$app" | awk -F '\t' '{print $2}')
  appdir="$binfolder$appname"
  echo "$applaunchname"
  touch "$appdir"
  echo "#!/bin/sh

flatpak run $applaunchname

  " > "$appdir"
  echo "$appdir"
  # echo "$appname   $applaunchname"
  chmod +x "$appdir"
done

