## Lab 05

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab05/Instructions.html

## Part 1 - grep

1. How many logs use a client IP that starts with `192`?
    - `grep` command: grep -cE "^192" access.log
    - Number of matched lines: 28
    - Explanation of pattern: "^192" catches only starting instances of 192
2. How many logs request page `/faq`?
    - `grep` command: grep -cE "GET\s\/faq" access.log
    - Number of matched lines: 2
    - Explanation of pattern: Searching for GET and then a space and then a / makes sure that the page is specifically being requested and not posted to.
3. How many logs have a client IP that contains `1` in the third octet?
    - `grep` command: grep -cE "^[\d]+[.]+[\d]+[.]+[1]|^[\d]+[.]+[\d]+[.]+[1]|^[\d]+[.]+[\d]+[.]+[0-9]+[1]|^[\d]+[.]+[\d]+[.]+[0-9]+[0-9]+[1]" access.log
    - Number of matched lines: 84
    - Explanation of pattern: The first two octets can be any number, and then a period. The third needs 1 in the hundreds, tens, or ones place of the third octet, so there needs to be three alternate paths for each of those possibilities.
4. How many logs contain `GET` requests to look for a page that begins with `c`?
    - `grep` command: grep -cE "GET\s\/c|GET\s\/+[\w]+\/+c" access.log
    - Number of matched lines: 10
    - Explanation of pattern: Two alternate paths exist to check if the page is immediate or within a folder, which can be skipped by checking for \w+\/ (any word and another /) and then looking for a c.
5. How many logs contains request between 1:20 PM and 1:30 PM?
    - `grep` command: grep -cE "\d+[:]+13+[:]+2+[0-9]|\d+[:]+13+[:]+30" access.log
    - Number of matched lines: 22
    - Explanation of pattern: Gets all lines that have any number, then a colon, then a 13, and either a 2 followed by any number or a 30.

## Part 2 - sed

1. `place your sed commands between backtick characters`
2. `sed command goes here`
3. `sed command goes here`
4. `sed command goes here`
5. `sed command goes here`
6. `sed command goes here`

## Part 3 - awk

1. `awk command goes here`
2. `awk command goes here`
3. `awk command goes here`
4. `awk command goes here`
5. `awk command goes here`

## Part 4 - Citations / Resources

Add citations / resources for each core topic covered in this lab

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.
