function cfg --wraps='/usr/bin/git --git-dir=$(ghq root)/github.com/atxr/hotfiles --work-tree=$HOME' --description 'alias cfg=/usr/bin/git --git-dir=$(ghq root)/github.com/atxr/hotfiles --work-tree=$HOME'
  /usr/bin/git --git-dir=$(ghq root)/github.com/atxr/hotfiles --work-tree=$HOME $argv; 
end
