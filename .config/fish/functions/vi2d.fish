function vi2d --wraps='vim (date +%m-%d)' --wraps='vim (date +%Y-%m-%d)' --wraps='vim (date +%Y-%m-%d).md' --description 'alias vi2d=vim (date +%Y-%m-%d).md'
  vim (date +%Y-%m-%d).md $argv
        
end
