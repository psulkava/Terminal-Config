# Bash script used for node projects that can be run locally
#
# Opens a new tmux window or moves to it if it exists already,
# changes into the top level of the current project directory,
# and runs `npm run start` to start the app
path=$(expr $(pwd) : '\(\/Users\/psulkava\/Projects\/[^\/]*\/[^\/]*\)')
if ( tmux list-windows | grep -q "runit" ); then
    tmux select-window -t runit
else
    tmux new-window -n "runit" "cd $path ; npm run start"
fi
