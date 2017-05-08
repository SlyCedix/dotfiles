# Extract any compressed file with the proper program.
function extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

function git-aio()
{
    git add *
    git add .
    echo "Please enter a description for this commit:"
    read commitMessage
    git commit -m "${commitMessage}"
    git push
}

fuction java-run()
{
    javaCompileDirectory=/tmp/javaclasses
    javaNoExtension="${1%.*}"

    mkdir ${javaCompileDirectory}
    javac -d ${javaCompileDirectory} ${javaNoExtension}.java
    cd ${javaCompileDirectory}

    java ${javaNoExtension}
    cd - > /dev/null 2>&1
}
