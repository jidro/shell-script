# 华为开源镜像站新手指导（Pypi篇）

## 基本介绍

> `Pypi`（`Python Package Index`）是管理`python`包第三方软件。    
所有由`python`开发出来的包的[网址](https://pypi.python.org/pypi)。    
因为`Pypi`是`python`的包管理软件。    
故此，在使用`Pip`之前需要先行检验系统是否安装`python`，再安装`pip`。     

## 检验python是否安装 

### windows系统

windows系统不会默认安装`python`。    
需要自行安装。    


### Linux系统       
Linux系统下，会默认安装`python`。    
用户可直接打开Linux系统的终端，输入指令 `python --version`查看所安装的`python`版本。     

## Python安装

`python2.x`和`python3.x`两个版本是不兼容的。    
`python3.x`引入了`python2.x`中许多不兼容的特性。    
至于具体要选择哪个版本的`python`，用户可以根据自己的项目兼容性来考虑。     

### windows系统

**1、`python`下载[官网](https://www.python.org/downloads/)**
       

> 目前的`python-windows`版本，官方上已经支持多种格式的文件下载。    
例如：提供压缩的zip文件、以及windows程序的格式进行下载。    
其中安装包名中含有64数字的代表该包支持64位的操作系统。    
这里以 `Windows x86-64 executable installer`为例说明，代表windows的可执行文件。    
依据安装向导安装完成即可。    
选择简单的install now.里面其中会安装出      

-->  `python Launder` ，`python`的`IDE`，通过它可以直接运行`python`指令和`python`程序    
（缺点：每次运行`python`只能够通过`python launder`进行）
      
-->  默认会安装在系统的用户目录下。
      
--> 默认情况下会安装好`pip`。用户可以通过打开`pythonIDE`输入指令：
a) `import pip`     
b) pip.__version__ 来查看所安装的Pip版本号    

**2、查看`python`安装路径是否已经添加在系统变量`path`之中，方便直接在`windows`终端中输入`python`指令，使用`python`。**        
同样地，若要系统能够识别`Pip`，也需要将用户的pip的目录添加至系统变量Path之中，若不添加则需要使用`python -m pip`来使用`pip`指令。    
（我这里的`python`安装路径为：    
`C:\Users\我是马赛克\AppData\Local\Programs\Python\Python37`，    
`pip`的安装路径为：`C：\Users\我是马赛克\AppData\Local\Programs\Python\Python37\Scripts`)    
              
--> 打开`windows`终端，输入`echo %Path%`
              
-->添加`python`路径。
                    
计算机 -> 属性 -> 高级系统设置 -> 环境变量 -> 找到系统变量Path -> 将`python`的安装路径添加至该变量末尾即可    
（注意以英文分号为分隔符）

### Linux系统 
> Linux下默认会安装`python`。
