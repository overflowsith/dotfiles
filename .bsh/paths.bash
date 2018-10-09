# set PATH so it includes user's private bin if it exists
if [ -d ~/.local/bin ] ; then
    PATH=~/.local/bin:$PATH
fi

if [ -d ~/.composer/vendor/bin ] ; then
    PATH=~/.composer/vendor/bin:$PATH
fi

if [ -d ~/.local/bin/heroku/bin ] ; then
    PATH=$PATH:~/.local/bin/heroku/bin
fi

if [ -d ~/.gem/ruby ] ; then
    PATH=$PATH:~/.gem/ruby
fi

if [ -d ~/.gem/ruby/2.4.0/bin ] ; then
    PATH=$PATH:~/.gem/ruby/2.4.0/bin
fi

if [ -d ~/.gem/ruby/2.5.0/bin ] ; then
    PATH=$PATH:~/.gem/ruby/2.5.0/bin
fi

export GOPATH=~/.local/go
if [ -d $GOPATH/bin ] ; then
    PATH=$PATH:$GOPATH/bin
fi

if [ -d ~/Android/Sdk/tools ] ; then
    PATH=$PATH:~/Android/Sdk/tools
fi
if [ -d ~/Android/Sdk/platform-tools ] ; then
    PATH=$PATH:~/Android/Sdk/platform-tools
fi

NODE_PATH=~/.local/lib/node_modules:$NODE_PATH
