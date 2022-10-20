
> 使用install.sh后请在终端中使用一下命令使brew处于可用的状态：

```
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
brew install hello
```

> 命令在终端中执行结束后使用“brew update”命令，确保brew处于最新状态    
使用“hello”命令，确保brew处于可用状态

