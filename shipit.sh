# Bash script for projects that need to be run on a remote server
#
# Copies the current project files to a directory with the same name
# at the root level on the given remote destination (my docker vm by default),
# then opens a new tmux window or moves to it if it already exists,
# finally ssh's to the remote server and changes into the projects directory
dir=$(expr $(pwd) : '\/Users\/psulkava\/Projects\/[^\/]*\/\([^\/]*\)')
path=$(expr $(pwd) : '\(\/Users\/psulkava\/Projects\/[^\/]*\/[^\/]*\)')
dest=${1:-url here}
rsync -avz --exclude .git/ --exclude node_modules/ $path/ $dest:~/$dir/
if ! { [ "$TERM" = "screen-256color" ] && [ -n "$TMUX" ]; } then
    tmux
fi
if ( tmux list-windows | grep -q "shipit" ); then
    tmux select-window -t shipit
else
    tmux new-window -n "shipit" "ssh -t $dest 'cd $dir ; bash'"
fi
