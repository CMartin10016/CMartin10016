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

Make sure you copied your `.bash_aliases` file to your GitHub repository.

## Part 2 - Dot Install Script

Nothing to write here, just a reminder to make sure your `dotinstall` script is in 
your GitHub repository

## Part 3 - Retrospective

1.
2.
3.

## Part 4 - `dotinstall` Usage Guide

### `.bash_aliases`



### `dotinstall`

Describe your script in plain English, nothing too technical.  Think about this as describing what you made over the dinner table.

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

Add citations / resources for each core topic covered in this lab

## Extra Credit - Improvements

Note here *what* you did to the script for the extra credit, resources referenced, and provide additional demonstrations or user guide updates


