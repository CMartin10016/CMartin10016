## Lab 04

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab04/Instructions.html

## Part 1 - Task Tracker

Remember your `tt` script **must have a minimum of 3 commits** for credit.  The commits should show you making tested progress towards the final solution.

Verify that `tt` made it to your GitHub repository for this course and is in your `Lab04` folder.  No answers will be written here unless you would like to leave a note to the TAs

## Part 2 - User Guide & Sample Runs

### User Guide

## Task Tracker Commands:

### ADD:
> bash tt.sh add [TASK] | bash tt.sh add

Adds given argument to list of tasks, or if no argument is given, asks for input and adds task.

### REMOVE:
> bash tt.sh remove [TASK] | bash tt.sh remove

Removes given argument or input to list of tasks, or if task does not exist, reports error.

### VIEW:
> bash tt.sh view

Outputs all current tasks.

### CLEAR:
> bash tt.sh clear

Prompts for confirmation, then clears all current tasks.

### Sample runs

Example of using `add` task
```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh add
Input task to add:
TASK1
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh add TASK2
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh view
TASK1
TASK2
```

Example of using `remove` task
```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh remove
Input task to remove:
TASK2
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh view
TASK1
```

Example of using `view` tasks
```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh view
TASK1
TASK2
```

Example of using `clear` tasks
```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh clear
Really delete all tasks? (input y to clear)
y
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh view
cat: /home/ubuntu/.tasks: No such file or directory
```

Example of using `help`
```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab04$ bash tt.sh help
Task Tracker Commands:
ADD:
bash tt.sh add [TASK] | bash tt.sh add
Adds given argument to list of tasks, or if no argument is given, asks for input and adds task.

REMOVE:
bash tt.sh remove [TASK] | bash tt.sh remove
Removes given argument or input to list of tasks, or if task does not exist, reports error.

VIEW:
bash tt.sh view
Outputs all current tasks.

CLEAR:
bash tt.sh clear
Prompts for confirmation, then clears all current tasks.
```

## Part 3 - PATH for all

- Chosen PATH directory: /usr/bin 
- Link preference (hard or symbolic): hard
   - Justification of preference for this use case: I would like the link to refer to the inode directly, instead of tt.sh, so changes to tt.sh do not change the link
- Command to create link: sudo ln ~/git/CMartin10016/Lab04/tt.sh testtracker
- Notes about permissions modified: chmod 751 testtracker
- How you tested that you can run `tt` from anywhere on filesystem: cd to home directory, then run bash testtracker view
- How you tested that other users can run `tt`: Switch users to CMartin10016, then run bash testtracker view

## Part 4 - Citations / Resources

Scripting: https://www.geeksforgeeks.org/linux-unix/sed-command-in-linux-unix-with-examples/
   Explained how to use the sed command.
Markdown: https://www.markdownguide.org/basic-syntax/
   Explained how to format markdown text.
PATH and Linking: https://askubuntu.com/questions/108771/what-is-the-difference-between-a-hard-link-and-a-symbolic-link
   Explained the difference between hard and symbolic links.
