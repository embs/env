# Setup

    $ ./setup

# Add a new bash alias file

    $ touch .something_aliases
    $ echo "ln -s /home/embs/git/embs/env/.something_aliases /home/embs/.something_aliases" >> setup
    $ ./setup
    $ . ~/.bashrc
