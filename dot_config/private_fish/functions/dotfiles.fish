function dotfiles --wraps='/usr/bin/git --git-dir=/home/leo/.dotfiles/ --work-tree=/home/leo' --description 'alias dotfiles=/usr/bin/git --git-dir=/home/leo/.dotfiles/ --work-tree=/home/leo'
  /usr/bin/git --git-dir=/home/leo/.dotfiles/ --work-tree=/home/leo $argv
        
end
