## Lab 01

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab01/Instructions.html

## Part 1 - GitHub Profile

1. (https://github.com/CMartin10016)

## Part 2 - Research

| Windows | Linux / Mac | Action |
| ---     | ---         | ---    |
| help    | man         | explains given command       |
| Get-Location | pwd    | shows current directory       |
| Get-ChildItem | ls    | shows all items within current directory       |
| mkdir   | mkdir       | creates a directory within current directory       |
| Set-Location | cd     | moves user to a given directory       |
| New-Item | touch      | creates new item within directory       |
| Move-Item | mv        | moves given item to a different directory       |
| Copy-Item | cp        | copies given item       |
| Remove-Item | rm      | deletes given item       |
| notepad.exe | vim     | writes in a given item       |

## Part 3 - Command Line Navigation

My OS is:
- [x] Windows
- [] Linux
- [] Mac

My Command Line Shell is: PowerShell

### Navigating My OS on the Command Line

1. Full / absolute path to your user's home directory: pwd
2. Create a directory named `DirA`: mkdir "DirA"
3. Create a directory named `Dir B`: mkdir "Dir B"
4. Go into `DirA`: cd "DirA"
5. Go into `Dir B` from `DirA`: cd "C:\Users\YOUR USERNAME\Dir B\"
6. Return to your user's home directory: cd ~
7. Create a file named `test.txt`: New-Item "text.txt"
8. Move the file named `test.txt` into `DirA`: Move-Item .\text.txt .\DirA\ 
9. Contents of `test.txt`: notepad.exe .\text.txt
```
Typed "blah blah blah blah"
```
10. Make a copy of `test.txt` named `copy.txt` in `DirA`: Copy-Item .\text.txt "copy.txt"
11. View the contents of `DirA`: ls
12. Make a copy of `test.txt` in `Dir B` named `fodder.txt`: Copy-Item .\text.txt "fodder.txt", then Move-Item .\fodder.txt  "C:\Users\YOUR USERNAME\Dir B\"
13. Delete / remove both `fodder.txt` AND `Dir B`: rm ".\Dir B\" - r

## Citations

N/A




