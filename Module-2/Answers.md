## Answer 1:

b)
```bash 
    cd /var/log
```


---

## Answer 2:

d) Both b and c


---

## Answer 3:

```bash
    mv /home/user/Documents/sys_report.txt /var/log/reports/
```
---

## Answer 4:

**Task 1:**
```bash 
    touch /home/user/Documents/report.txt
```

**Task 2:**
```bash
    mv /home/user/Documents/report.txt /home/user/Reports/
```

**Task 3:**
```bash
    mv /home/user/Reports/report.txt /home/user/Reports/final_report.txt
```

**Bouns Task:**
```bash
    ls /home/user/Reports/
```


---

## Answer 5:

First, you check if the file is present in your current directory by listing all files:
```bash
    ls -l

```

Seeing that logs.tar.gz is there, you decide to look up how to extract .tar.gz files. You open the manual page for the tar command:
```bash
    man tar

```
From the manual, you learn that the correct command to extract the file is:
```bash
    tar -xvzf logs.tar.gz

```
After extraction, a new folder named logs/ appears. You navigate into it:
```bash
    cd logs

```
Inside, you find multiple log files. You need to open system.log, but you’re unsure which command to use. So, you check the help manual for cat:
```bash
    man cat

```
Now, you confidently display the contents of system.log:
```bash
    cat system.log

```
If the file is too long to read at once, you use a better approach to scroll through it:
```bash
    less system.log

```


---

## Answer 6:

```bash
    pwd
```


---

## Answer 7:

```bash
    man ls
```
**OR**
```bash
    ls --help
```


---

## Answer 8:

To check the overall disk space, you can use:
```bash
    df -h
```

To find out which folders/files in your current directory are the biggest, you can run:
```bash
    du -sh *
```


---

## Answer 9:

**Task 1:**
```bash 
    touch ~/notes.txt
```

**Task 2:**
```bash
    mv ~/notes.txt ~/Documents/
```

**Task 3:**
```bash
    mv ~/Documents/notes.txt ~/Documents/meeting_notes.txt
```

**Bouns Task:**
```bash
    ls ~/Documents/
```


---

## Answer 10:

**Task 1:**
```bash 
    mkdir project_A
```

**Task 2:**
```bash
    touch project_A/README.md
```

**Task 3:**
```bash
    cp -r project_A project_backup
```

**Bouns Task:**
```bash
    ls project_backup
```