# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

# Terminal
alias c='clear'

# Git
alias gs='echo "git status";git status'
alias ga='echo "git add .";git add .'
alias gc='echo "git commit";git commit'
alias gk='echo "git checkout";git checkout'

alias gp='echo "git pull";git pull'
alias gpo='echo "git pull origin";git pull origin'

alias gps='echo "git push";git push'

alias gm='git commit -m'
alias wip='echo "git add .;git commit -m wip";git add .;git commit -m wip'
alias wips='echo "git add .;git commit -m wip;git push";git add .;git commit -m wip;git push'
alias hotf='echo "git add .;git commit -m hotfix;git push";git add .;git commit -m hotfix;git push'
alias alt='echo "git add .;git commit -m alt;git push";git add .;git commit -m alt;git push'
alias refactor='echo "git add .;git commit -m refactor;git push";git add .;git commit -m refactor;git push'
alias empty='echo "git add .;git commit -m empty;git push";git add .;git commit -m empty;git push'
alias hreset='echo "git reset --hard HEAD";git reset --hard HEAD'
alias reset='echo "git reset --hard";git reset --hard'
alias gclean='echo "git clean -fxd";git clean -fxd'
alias gl='echo "git log";git log'
alias gam="git add .; git commit -m"
alias gb='echo "git branch";git branch'
alias gtree='echo "git log --graph --simplify-by-decoration --pretty=format:%d --all";git log --graph --simplify-by-decoration --pretty=format:%d --all'
alias glol='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'



# Laravel artisan
alias a='php artisan'

# Laravel Migrations
alias mfs='a migrate:fresh --seed'
alias mf='a migrate:fresh'
alias mr='a migrate:rollback'
alias m='a migrate'

# Laravel Clear Cache
alias allcc='a cache:clear; a config:clear; a route:clear; a view:clear'
alias acc='a cache:clear; a config:clear'
alias avc='a view:clear'
alias arc='a route:clear'

# Laravel queues
alias rl='a route:list'
alias ql='a queue:listen'
alias qw='a queue:work'

# Laravel Makes
alias amm='a make:migration'
alias model='a make:model'
alias control='a make:controller'

# Laravel Tests
alias t='a test'
alias tf='a test --filter= '
alias tp='a test --parallel'

# Commands
alias stan='vendor/bin/phpstan analyse'

#windows path

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
