# 我的Emacs配置

## 说明
本配置以[https://github.com/tuhdo/emacs-c-ide-demo](https://github.com/tuhdo/emacs-c-ide-demo)为基础，并加入了我早年收集的若干配置而成。安装和使用的package主要有helm, projectile, cedet等，主要配置了C/C++，Golang和Python的开发环境。

## 安装
首先请备份你的`~/.emacs.d`目录，然后

    git clone https://github.com/mawenbao/emacs.d ~/.emacs.d

初次启动需要安装各种package，需要等一会。

每次安装package后建议手动运行下`sh tool/gen-package-list.sh`，将已安装的package名称记录到packages.list里，以后迁移的时候即可自动安装。

### 安装错误
1. Trying to parse HTTP response code in odd buffer

    重启emacs

## 依赖
当前配置仅适用于Emacs24+，已在Linux和Win7上测试过。

为了支持go-mode下的自动补全，需要安装gocode

    go get -u github.com/nsf/gocode

为了启用jedi，需要手动安装jedi

    # jedi的版本可能有更新，目录名称里的时间可能不是这个
    cd ~/.emacs.d/elpa/jedi-20140321.1323
    sudo python setup.py install

在Windows系统上使用时，建议运行`python tool/install-emacs-registry.py`安装下Emacs的注册表配置。

## 目录结构说明

* init.el       配置文件入口
* elpa/         从melpa下载的package包统一放置于此
* save.d/       各种package的本地存储统一放在该目录
* site-lisp/    手动安装的第三方package
* custom/
    * custom-funcs.el   自定义的function或macro
    * custom-save.el    保存emacs的界面选项(font, theme等)
    * setup-misc.el     各种emacs的配置
    * setup-packages.el 各种package的简单配置
    * package-config/   该目录下存放一些比较复杂的package配置
    * setup-prog.el     编程和编辑方面的配置
    * setup-keys.el     快捷键方面的配置(部分package的快捷键配置位于package-config目录里面)
* packages.list 记录已安装的package名称，由`tool/gen-package-list.sh`自动生成
* tool/         各种工具
    * gen-package-list.sh   更新已安装的package列表
