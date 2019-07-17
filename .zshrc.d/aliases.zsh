# set Bundler specific aliases.
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# set general aliases.
alias l='ls -alh'
alias lt='l -t | less'

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias redo='sudo \!-1' # When you forget to use 'sudo', just do 'redo' to rerun the last command using sudo.

# set AnnotatedModels aliases.
alias schemize='bundle exec annotate --position before --exclude tests,fixtures,factories'
