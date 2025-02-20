# Bash script used for node projects that can be run locally
#
# Opens a new tmux window or moves to it if it exists already,
# changes into the top level of the current project directory,
# and runs `npm run start` to start the app
path=$(expr $(pwd) : '\(\/Users\/pietarisulkava\/Projects\/[^\/]*\)')
echo $path
if ( tmux list-windows | grep -q "startit" ); then
    tmux select-window -t startit
else
    tmux new-window -n "startit" "cd $path ; npm run start"
fi
