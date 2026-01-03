if status is-interactive
# Commands to run in interactive sessions can go here
end

# disable fish greeting
set -g fish_greeting

# initialize oh-my-fish
if test -f ~/.local/share/omf/init.fish
    if not set -q OMF_PATH
        set -gx OMF_PATH ~/.local/share/omf
    end
    source $OMF_PATH/lib/require.fish
    source ~/.local/share/omf/init.fish
end
