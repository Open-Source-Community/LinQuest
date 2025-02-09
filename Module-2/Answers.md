1. b) cd /var/log
2. d) Both b and c
3. 
```bash
    mv /home/user/Documents/sys_report.txt /var/log/reports/
```
4. 
```bash touch /home/user/Documents/report.txt
    mv /home/user/Documents/report.txt /home/user/Reports/
    mv /home/user/Reports/report.txt /home/user/Reports/final_report.txt
    ls /home/user/Reports/
```
5. 
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
