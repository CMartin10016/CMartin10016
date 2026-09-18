## Lab 03

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab03/Instructions.html

## Part 1 - git Guide

| git command         | Description |
| ---                 | ---         | 
| `git clone repo_URI`| copies repo to current machine            |
| `git status`        | shows current status of repo and if changes exist to be committed/pushed            |
| `git add filename`  | stages file to be committed            |
| `git commit`        | saves changes to local repo            |
| `git push`          | uploads changes to remote repo            |
| `git pull`          | gets files from remote repo            |

## Part 2 - clone

1. Command to generate an SSH key with ed25519: ssh-keygen -t ed25519 -C "martin782@wright.edu"
2. Command(s) to read & copy text of the *public* key: "cd .ssh", then "cat 'id_ed25519.pub'", ctrl-c what gets printed to console
3. Summary of steps to place *public* key in user profile: Go to settings, then SSH and GPG keys, and add new key, pasting the public key text and giving it a name.
4. Command to *clone* your `ceg2350s25-YOURGITHUBUSERNAME` with SSH for authentication: git clone git@github.com:CMartin10016/CMartin10016.githttps://github.com/CMartin10016/CMartin10016

## Part 3 - IO Redirection

1. `printenv HOME > thishouse`
   - Explanation: Displays the value of the HOME variable, then redirects this output into thishouse in the current directory, creating it if it does not already exist.
2. `cat doesnotexist 2>> hush.txt`
   - Explanation: Tries to read from file doesnotexist, then appends the resulting error message to hush.txt
3. `cat nums.txt | sort -n >> all_nums.txt`
   - Explanation: Displays the contents of nums.txt, then sorts that result numerically and appends the sorted contents to all_nums.txt
4. `cat << "DONE" > here.txt`
   - Explanation: 
5. `ls -lt ~ | head`
   - Explanation: Shows all items in the current directory in long form sorted by time last edited, then filter those down to only displaying the first ten items, so the last ten items that were modified.
6. `history | grep ".md"`
   - Explanation: Looks for the history of previous commands, then shows commands that contain ".md" in them.

## Part 4 - Rolling the Dice

Verify that `roll` made it to your GitHub repository for this course and is in your `Lab03` folder.  No answers will be written here unless you would like to leave a note to the TAs

## Part 5 - Retrospective Answers

1. Where and when did it go wrong while working on your script tasks?
> When starting on step 2, the shebang was wrong, which caused about half an hour of testing because the error messages were misleading.
2. Was anything familiar working with a new language compared to one you are used to?
> Your reflection here
3. Did you write good `commit` messages that refer to what tasks were completed at each commit?  What would you improve?
> Your reflection here

## Part 6 - Citations / Resources

Git: https://www.freecodecamp.org/news/learn-the-basics-of-git-in-under-10-minutes-da548267cc91/ 
   Showed how to use the git commands, including add/commit/push and fetch/merge/pull.
   
Clone: pattonsgirl.github.io/CEG2350/Topics/GitHubClassroom/
   Explained how to generate and find an ssh key and how to clone your repository.
   
IO Redirection: https://www.geeksforgeeks.org/linux-unix/input-output-redirection-in-linux/
   Showed what all of the redirection symbols do, with examples.
   
Bash scripting: https://ioflood.com/blog/bash-random-number/
   Showed how to generate random numbers within bash.
   
Bash syntax: https://www.w3schools.com/bash/bash_syntax.php
   Explains command running order, comments, and semicolons for bash scripts.
