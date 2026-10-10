## Lab 06

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab06/Instructions.html

## Part 1 - bash aliases

It is important that the following is added to or exists in the user's `.bashrc` file
```
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

What this section does:
> Reads from '.bash_aliases' for aliases, if it exists. If this was not here, you would have to add all aliases to '.bashrc'.

## Part 2 - Dot Install Script

## Part 3 - Retrospective

1. Getopts allows you to create your own options (like the -lah in ls -lah) for your commands, which you can then define similarly to a switch case.
2. I had a lot of trouble with figuring out how to create a symbolic link with the same time without creating a link that just pointed to itself. I had to look at forums online to figure out what the problem was, which helped a lot.
3. There could be an option that allows you to see what aliases currently exist (cat .bash_aliases).

## Part 4 - `dotinstall` Usage Guide

### `.bash_aliases`

.bash_aliases is a file within the current directory that keeps a record of every alias that the user inputs, and allows them to be used. Aliases added using **-a** will be put here and will then be able to be used until removed with **-r**.

### `dotinstall`

dotinstall is a command that allows the user to manipulate the .bash_aliases file. **-a** creates user inputted aliases in a .bash_aliases file within the current directory, while **-r** removes aliases that the user provides. **-s** creates a link from .bash_aliases to the user's home directory, allowing the aliases to be used, while **-d** unlinks it. **-h** can be used to show all options and their effects.

### Examples

```
bash dotinstall -sa "alias fortune_teller=fortune | cowsay -f tux"
No .bash_aliases file found in home
Creating symbolic link in home named .bash_aliases
Adding alias to .bash_aliases...
User should the following to reload the shell:
  source ~/.bashrc
```

```
bash dotinstall -r "alias fortune_teller='fortune | cowsay -f tux'"
Found alias for alias fortune_teller='fortune | cowsay -f tux' in .bash_aliases...
Alias for alias fortune_teller='fortune | cowsay -f tux' removed from .bash_aliases
```

```
bash dotinstall -d
Removing symbolic link in home named .bash_aliases
```

```
bash dotinstall -h
Usage: dotinstall [-OPTION] [ARG]
        -s setup - attempts to create a symbolic link .bash_aliases file to user's home directory
        -d disconnect - removes symbolic link
        -a append - adds a new alias to .bash_aliases file
        -r remove - removes an alias from .bash_aliases file
```

## Part 5 - Citations / Resources

.bash_aliases & .bash_rc: https://www.redhat.com/en/blog/how-create-alias-linux
> Explained how to create aliases and reference them.

getopts: https://ostechnix.com/parse-arguments-in-bash-scripts-using-getopts/
> Explained how to pass in arguments to functions using getopts.
