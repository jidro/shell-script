## 安装`zsh`

- **`Debian`/`Ubuntu`安装**

```shell
$ sudo apt-get install -y zsh
```

> 安装好了,但是连高亮都没有,    </br>
> 
> 所以接下来就是美化了

## 安装`oh-my-zsh`

> `oh-my-zsh`中整理了常用的`zsh`扩展和主题,所以先安装`oh-my-zsh`

- ### 使用`curl`安装 :

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- ### 使用`wget`安装 :

```shell
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

> **注意：** 
> 
> 这两个地址都已经变更，该文章不再跟进，具体的以`OhMyZsh`官网的地址为准

## 安装主题

> [`zsh`的主题列表,选一个自己喜欢的吧](https://links.jianshu.com/go?to=https%3A%2F%2Fgithub.com%2Frobbyrussell%2Foh-my-zsh%2Fwiki%2FTemes)

### 安装:

> **在安装之前先保证自己电脑上有`powerline font`,**    
> **因为主题会使用到这些特殊的字符,**
> 
> **使用下面语句检测是否存在该主题需要的特殊字符**    

```shell
$ echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
```

> 若没有,就安装该字体库:    

```shell
$ sudo apt-get install fonts-powerline
```

主题在安装`oh-my-zsh`时已经下载,    

> 直接在`oh-my-zsh`的配置文件中配置使用的主题即可    
> **配置文件是`~/.zshrc`,打开编辑**

> 为了启用主题，在采购`Oh My Zsh`之前，将其设置`ZSH_THEME`为主题的名称`~/.zshrc`。    
> *例如：`ZSH_THEME=robbyrussell` 若不想启用任何主题，*    
> *只需将其设置`ZSH_THEME`为空白即可：`ZSH_THEME=""`*    

## 将`zsh`设置为系统默认终端

> 执行这条语句:    

```shell
chsh -s `which zsh`
```

重新登录系统即可    
