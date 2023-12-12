# use qemu cmd to enable ssh in virsh
function s
	set --function domain $argv[1]
	if test -z "$domain"
		echo "Missing domain"
		return
	end
	virsh start $domain 
	virsh qemu-monitor-command $domain --hmp --cmd "hostfwd_add tcp::2222-:22"
end

function t
    set --function result (command tere $argv)
    [ -n "$result" ] && cd -- "$result"
end


# setup command completions
complete -c cht.sh -xa '$(cht.sh :list)'
complete -c tldr -xa (tldr --list | sed 's/\W/ /g')

# set ledger journal path
set --global LEDGER_FILE "$HOME/Notes/Finance/hledger/journal/current.journal"
