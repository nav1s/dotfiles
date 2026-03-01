function t
	set --function result (command tere $argv)
	[ -n "$result" ] && cd -- "$result"
end

function xc
	echo $argv | xclip -sel clipboard
end

function while1
	set --function cmd $argv  
	while test 1 -eq 1
    eval $cmd
    if test $status -eq 0
      break
    end
    sleep 1
    end
end

# setup command completions
complete -c cht.sh -xa '$(cht.sh :list)'
# complete -c tldr -xa (tldr --list | sed 's/\W/ /g')
# from https://gist.github.com/soraxas/00b7e3f8342e81d2b1908e91c0eb2a9d
complete -x -c tldr -a '(printf "%s\n" ~/.cache/tldr/pages/**/*.md | sed -r "s:^.*/([^/]*)/([^/]*)\.md:\2\t\1:")'

## Variables ##
# set the shell to fish to drop into it when using ranger, su and tmux
set --global --export SHELL "/usr/bin/fish"
# set ledger journal path
set --global --export LEDGER_FILE ~/Notes/finance/hledger/journal/current.journal

## Abbreviations ##

# general
abbr --add -- wget 'wget --hsts-file=~/.local/share/wget-hsts'
abbr --add -- l lsd
abbr --add -- ll 'lsd -lah'
abbr --add -- ls 'lsd -lah'
abbr --add -- rm trash
abbr --add -- st 'env TERM=xterm-256color ssh'
abbr --add -- rwd 'cd (cat /tmp/termwd)'
abbr --add -- ssh-keygen 'ssh-keygen -t ed25519'
abbr --add -- cp 'cpg -g'
abbr --add -- mv 'mvg -g'
abbr --add -- lsb 'lsblk -f'

# utils
abbr --add -- c cht.sh
abbr --add -- td tldr
abbr --add -- radeontop 'radeontop --color'
abbr --add -- swd 'pwd > /tmp/termwd'
abbr --add -- hx helix

# zfs
abbr --add -- zlt "zfs list -t snapshot | rg --invert-match 'var'"
abbr --add -- zl "zfs list | rg --invert-match 'var'"

# docker
abbr --add -- d 'docker'
abbr --add -- dc 'docker compose'
abbr --add -- dco 'docker compose up --detach --pull always --remove-orphans'
abbr --add -- dcp 'docker compose pull'
abbr --add -- dcl 'docker compose logs'

# hledger
abbr --add -- h hledger
abbr --add -- ha 'hledger iadd'

# yadm
abbr --add -- y yadm
abbr --add -- ya 'yadm add'
abbr --add -- ys 'yadm status'
abbr --add -- yr 'yadm reset'
abbr --add -- yap 'yadm add -p'
abbr --add -- yp 'yadm push'
abbr --add -- yc 'yadm commit -m'
abbr --add -- yd 'yadm diff'

# git
abbr --add -- g git
abbr --add -- gcl 'git clone'
abbr --add -- gcm 'git commit -m'
abbr --add -- ga 'git add'
abbr --add -- gl 'git log'
abbr --add -- gst 'git status'
abbr --add -- gap 'git add -p'
abbr --add -- gcd 'git clone --depth 1'
abbr --add -- gr 'git reset'
abbr --add -- gp 'git push'
abbr --add -- gd 'git diff'

# adb
abbr adi adb install
abbr add adb devices   
abbr ads adb shell   
abbr adp adb pull

# pacman
abbr pf pacman --files
abbr ps pacman --sync
abbr pss pacman --sync --search
abbr psi pacman --sync --info
abbr pr pacman --remove
abbr pu pacman --upgrade
abbr pq pacman --query
abbr pqs pacman --query --search
abbr pqi pacman --query --info
abbr pql pacman --query --list

# yay
abbr ysi yay --sync --info

abbr bi "bluetoothctl info | grep -i battery"
abbr ci codium-insiders
