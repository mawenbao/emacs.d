#!/bin/bash
# @author: mawenbao@hotmail.com
# @date: 2014-11-19
# @desc: 列出elpa下的package并按mtime排序后写入packages.list

USER_EMACS_DIR=`emacs --batch -Q --eval '(princ (file-truename user-emacs-directory))'`
if [ ! -f ${USER_EMACS_DIR}/init.el ]; then
    USER_EMACS_DIR=$APPDATA/.emacs.d
fi
cd ${USER_EMACS_DIR}

find elpa -maxdepth 1 -type d |
    #xargs ls -1dtr |
    sort |
    sed 's|^elpa/||' |
    grep -v '^elpa$' |
    grep -v '^gnupg$' |
    grep -v '^archives$' |
    rev |
    cut -d '-' -f 2- |
    rev > packages.list

