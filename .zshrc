setxkbmap -option caps:escape

bindkey -v
bindkey "^?" backward-delete-char

setopt sharehistory

stty -ixon

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="murilasso"
ZSH_THEME="lukerandall"
RPROMPT=''
DISABLE_UNTRACKED_FILES_DIRTY="true"

FZF_BASE="$(which fzf)"
plugins=(git zsh-autosuggestions zsh-completions colored-man-pages fzf)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="${PATH}:$HOME/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin/"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Ctrl+Q to delete whole word
my-backward-delete-word () {
    local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>|'
    zle backward-kill-word
}
zle -N my-backward-delete-word
bindkey '^q' my-backward-delete-word

. $HOME/.config/z/z.sh

###########
# ALIASES #
###########

alias tldr="tldr -t base16"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vimn="vim -c NERDTree"
alias grepr="grep -r"
alias python="python3"
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias df='df -x squashfs -x tmpfs -x devtmpfs'
alias walog='watch -n1 -t --color git alog'
alias llth="ll -t | head"
alias rf="readlink -f"
# alias rm="trash"
alias pduon="pduclient --hostname 192.168.1.100 --daemon localhost --port 1 -H --command on"
alias pduoff="pduclient --hostname 192.168.1.100 --daemon localhost --port 1 -H --command off"

alias bblaysr="bitbake-layers show-recipes"
alias bblaysl="bitbake-layers show-recipes"
alias bblaysa="bitbake-layers show-appends"

alias cdtemp="cd $(mktemp -d)"

alias gs="gst"
# alias kas='SHELL=/usr/bin/bash kas'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send -a alert --urgency=critical -i "$([ $? = 0 ] && echo terminal || echo error)"'

alias cwd="pwd | xclip -selection clipboard"

alias snooze="kill -SIGUSR1 $(pidof dunst)"
alias unsnooze="kill -SIGUSR2 $(pidof dunst)"

alias xc="xclip -selection clipboard"
alias setx="setxkbmap -option && setxkbmap -option caps:escape"

#####################
# Witekio shortcuts #
#####################

alias vactivate="source ./.venv/bin/activate"

# FMU
alias  fmu="$HOME/dev/FullMetalUpdate/fullmetalupdate.perso"
export fmu="$HOME/dev/FullMetalUpdate/fullmetalupdate.perso"

# Trixell
alias  trix="/data/txl/md20xx"
export trix="/data/txl/md20xx"
alias  tws="$trix/workspace"
export tws="$trix/workspace"
alias  trepos="$tws/repos"
export trepos="$tws/repos"
alias  ttests="$tws/tests"
export ttests="$tws/tests"
alias  tbsp="$tws/wyld/bsp"
export tbsp="$tws/wyld/bsp"
alias  tbuild="$tws/wyld/build"
export tbuild="$tws/wyld/build"
alias  tdeploy="$tbuild/build/tmp/deploy"
export tdeploy="$tbuild/build/tmp/deploy"
alias  tlayers="$tbsp/sources"
export tlayers="$tbsp/sources"
alias  tmeta="$tlayers/custom/meta-txl"
export tmeta="$tlayers/custom/meta-txl"
alias  tkernelpatches="$tmeta/txl-bsp/recipes-kernel/linux/linux-xlnx"
export tkernelpatches="$tmeta/txl-bsp/recipes-kernel/linux/linux-xlnx"
alias  tkernelfragments="$tmeta/txl-bsp/recipes-kernel/linux/linux-xlnx/txl_kernel_fragments"
export tkernelfragments="$tmeta/txl-bsp/recipes-kernel/linux/linux-xlnx/txl_kernel_fragments"

# declare -A t_paths
# t_paths[trix]="/data/txl/md20xx"
# t_paths[ws]="${t_paths[trix]}/workspace"
# t_paths[repos]="${t_paths[tws]}/repos"
# t_paths[tests]="${t_paths[tws]}/tests"
# t_paths[bsp]="${t_paths[tws]}/wyld/bsp"
# t_paths[build]="${t_paths[tws]}/wyld/build"
# t_paths[deploy]="${t_paths[tbuild]}/build/tmp/deploy"
# t_paths[meta]="${t_paths[tbsp]}/sources/custom/meta-txl"

# Morphosense
alias mmorph="/data/morphosense"
export mmorph="/data/morphosense"
alias mws="$mmorph/workspace"
export mws="$mmorph/workspace"
alias mbsp="$mws/bsp"
export mbsp="$mws/bsp"
alias mbuild="$mbsp/build"
export mbuild="$mbsp/build"
alias mwork="$mbuild/tmp/work"
export mwork="$mbuild/tmp/work"
alias mmach="$mws/bsp/build/tmp/deploy/images/morpho-gateway-v3"
export mmach="$mws/bsp/build/tmp/deploy/images/morpho-gateway-v3"
alias mlayers="$mbsp/layers"
export mlayers="$mbsp/layers"
alias mmeta="$mlayers/meta-morphosense"
export mmeta="$mlayers/meta-morphosense"

function mkasbuild () {
    env -C $mbsp kas build kas/user-specific.yml "$@"
}

function mkasshell () {
    env -C $mbsp kas shell kas/user-specific.yml
}


# declare -A m_paths
# m_paths[morph]="/data/morphosense"
# m_paths[ws]="${m_paths[morph]}/workspace"
# m_paths[bsp]="${m_paths[ws]}/bsp"
# m_paths[mach]="${m_paths[ws]}/bsp/build/tmp/deploy/images/morpho-gateway-v3"
# m_paths[layers]="${m_paths[bsp]}/layers"
# m_paths[meta]="${m_paths[layers]}/meta-morphosense"
# for k in ${(k)m_paths}; do
#     alias m$k="${m_paths[$1]}"
# done
# function m () {
#     cd ${m_paths[$1]}
# }



# Pluma
alias  plws="/work/data/pluma/tests"
export plws="/work/data/pluma/tests"


tshell () {
    cd "$tbuild" && BSP_DIR="$tbsp" make shell
}

tmach () {
    cd "$tdeploy/images/$1"
}

#############
# FUNCTIONS #
#############

# function dem () {
#     cd $fmu/$1/fullmetalupdate-yocto-demo
#     export dem=$fmu/$1/fullmetalupdate-yocto-demo
# }
# function ybu () {
#     cd $fmu/$1/fullmetalupdate-yocto-demo/build/yocto/build
#     export ybu=$fmu/$1/fullmetalupdate-yocto-demo/build/yocto/build
# }
# function yso () {
#     cd $fmu/$1/fullmetalupdate-yocto-demo/build/yocto/sources
#     export yso=$fmu/$1/fullmetalupdate-yocto-demo/build/yocto/sources
# }
# function c () {
#     cd $fmu/$1/fullmetalupdate-cloud-demo
#     export yso=$fmu/$1/fullmetalupdate-cloud-demo
# }

function mkcd () {
	mkdir -p $1 && cd $1
}

function grepR () {
	grep -Ir \
		--exclude-dir=.git \
		--exclude-dir='build*' \
		--include='*.bb*' \
		--include='*.inc*' \
		--include='*.conf*' \
		--include='*.py*' \
		"$@"
 }

function findf () {
    find . -type f -iname "*$1*"
}

function findd () {
    find . -type d -iname "*$1*"
}

# git config add commit
function gconfac () {
	config add $1 && config commit -m "$2"
}

# function sync_fmu () {
#     scp -r $fmu/fullmetalupdate/fullmetalupdate.py root@$1:$2/fullmetalupdate/
#     scp -r $fmu/fullmetalupdate/fullmetalupdate/{updater,fullmetalupdate_ddi_client}.py root@$1:$2/fullmetalupdate/fullmetalupdate/
#     scp -r $fmu/fullmetalupdate/scripts/send_feedback.sh root@$1:$2/fullmetalupdate/scripts/
# }

# function switch_repo () {
#     if [ "$(basename $(pwd))" = "meta-fullmetalupdate-extra" ]; then
#         cd ../meta-fullmetalupdate
#     elif [ "$(basename $(pwd))" = "meta-fullmetalupdate" ]; then
#         cd ../meta-fullmetalupdate-extra
#     fi
# }

function treel () {
    tree -L $1
}

function im () {

    local conf="./conf/local.conf"
    cd $BUILDDIR;
    if [[ -e "$conf" ]]; then
        machine=$(grep -E "^MACHINE" $conf | tr -d '? ' | awk -F '=' '{print $2}' | tr -d '"')
    fi
    cd $BUILDDIR/tmp/deploy/images/$machine

}

function sb () {

    # eval exp="\$$1"

    # if [[ -d "$1" ]]; then
    #     source $1/../bsp/sources/standard/poky/oe-init-build-env $1/build
    # elif [[ -d "$exp" ]]; then
    #     source $exp/../bsp/sources/standard/poky/oe-init-build-env $exp/build
    # fi


    # cd $trix/witekio/workspace
    # make shell

    if [[ "$1" = "linwit" ]]; then

        export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE BSP_DIR"
        export BSP_DIR="$trix/witekio/bsp"

        . "$trix/witekio/bsp/buildtools/environment-setup-x86_64-pokysdk-linux"

        TEMPLATECONF=$trix/witekio/bsp/sources/custom/meta-txl/txl-bsp/conf \
            source $trix/witekio/bsp/sources/standard/poky/oe-init-build-env \
            $trix/witekio/workspace/build
    fi

}

function pvnc () {

    pv "$1" | nc -l -p 12345

}

# Yocto
function b () {
    cd "${BUILDDIR}/${1}"
}
function s () {
    cd "${BSP_DIR}/sources/${1}"
}
function w () {
    cd "${BUILDDIR}/../${1}"
}
function ws () {
    cd "${BUILDDIR}/workspace/sources/${1}"
}
function tmp () {
    cd "${BUILDDIR}/tmp/${1}"
}
function dep () {
    cd "${BUILDDIR}/tmp/deploy/${1}"
}

function rm_work_task () {
    bitbake -g "$1"
    bitbake -k -c rm_work $(cat pn-buildlist)
}

# vim the nth file listed in git status --short
function vimg () {
    local index="$1"

    if [[ "$index" == "" ]]; then
        index="1"
    elif [[ ! "$index" =~ [0-9]+ ]]; then
        printf "Index isn't a number\n"
        return
    fi
    
    file="$(git status --short \
        | awk '{$1=""; print $0}' \
        | head -$index | tail +$index \
        | xargs)" 

    vim "$file"
}

###########################
#  Shell startup control  #
###########################

# If currently in $linwit, execute sb linwit. Don't print anything
# [[ "`pwd`" =~ "`basename $linwit`" ]] && sb linwit > /dev/null && cd - > /dev/null
