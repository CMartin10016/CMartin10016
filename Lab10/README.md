## Lab 10

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab10/Instructions.html

## Part 0 - Issues & Branches

**DO NOT DELETE YOUR BRANCHES.  DO NOT DELETE YOUR ISSUES**

**`git` branch guide**

| Task                                                    | Command(s) / Steps | Notes |
| ------------------------------------------------------- | ------------------ | ----- |
| **Create a branch**                                     | git branch [branch name]                   |       |
| **Change to branch**                                    | git switch [branch name]                   |       |
| **Add branch to remote if created locally (GitHub)**    | git push origin [branch name]                | "origin" could be something else depending on what remote source is called      |
| **Steps to `merge` changes from another branch to (`main`)** | 1. commit branch changes, 2. switch to main branch (git switch main), 3. git merge [branch name]|       |
| **Steps to resolve a `merge` conflict**                 | 1. examine listed conflicts, 2. edit file(s) so that conflict no longer occurs, 3. git add and git commit changes|       |


## Part 1 - Compilers

1. Command(s) to install the C compiler and `make` on Ubuntu: "sudo apt install build-essential"
2. Command(s) to confirm the installation of both on Ubuntu: "which gcc", gcc --version
3. Your computer's OS: Windows
4. Command(s) to install the C compiler and `make` on your computer's OS: Install MinGW through MSYS2, "pacman -S mingw-w64-x86_64-gcc make"
5. Command(s) to confirm the installation of both on your computer's OS: where gcc, gcc --version

## Part 2 - Compiling

1. Command(s) to download the `todo-lab.tar.gz` archive:
2. Command(s) to extract the files from the archive:
3. What `undefined reference` means and why the provided `Makefile` hit it:
4. Command(s) to compile `main.c` and `todo.c` into object files:
5. Command(s) to link the object files into `todo_app`:
6. Command(s) to run the program:

## Part 3 - Git Hygiene

Remove this statement and the exclamation point from the line below so TAs can click to check for a working `.gitignore` file.  Test that the link works - if it doesn't, fix the pathing.

![`.gitignore` file in root of repository](../.gitignore)

## Part 4 - Fix It

- Link to Pull Request:
- Link to fix commit:

## Part 5 - `makey makey`

Using `Makefile` to build executable:

Using `Makefile` to run program:

Using `Makefile` to remove compilation files:

After `touch todo.c`, why does `make build` only recompile `todo.c`, how does `make` know what to skip, and why is that useful?

## Part 6 - Libraries & Other OSes

**Build errors**

| Error | Stage (compiling or linking) | What you did to fix it |
| ----- | ---------------------------- | ---------------------- |
|       |                              |                        |
|       |                              |                        |

**`ldd` output for `todo_app`**

```
Paste output here
```

Line(s) for ncurses:

**Library equivalents**

| Library (Ubuntu)    | Ubuntu package | Link flag | macOS equivalent & how to get it | Windows (MSYS2) equivalent & how to get it |
| ------------------- | -------------- | --------- | -------------------------------- | ------------------------------------------ |
| **math**            | `libc6-dev`    | `-lm`     | Built in to the system, nothing to install | Built in to the C runtime, nothing to install |
| **ncurses**         |                |           |                                  |                                            |
| **pthreads**        |                |           |                                  |                                            |
| **readline**        |                |           |                                  |                                            |

What in your `Makefile` would need to change to build this program on your computer's OS?

## Part 7 - Citations & Resources

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.

## Extra Credit - Cross-Platform `Makefile`

OS(es) tested in addition to Ubuntu:

Differences your `Makefile` handles for each OS:

Screenshot proof of it in action!

![Insert screenshot here](path/to/screenshot)
