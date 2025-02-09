**Scenario:** Your development team has a shared directory `/project` that should only be accessible by members of the `devs` group. You need to ensure that only `devs` members can read, write, and execute files in this directory.  
**Question:**  
Write the command to change the directory ownership to the `devs` group and give the group full access while restricting others.  

**Solution:**  
```bash
chown :devs /project
chmod 770 /project
```

---

**Scenario:** Sarah, a new team member, tries to run `deploy.sh` from the `project/scripts` directory, but the system denies execution. You check the file’s permissions and realize that the execute permission is missing. To avoid confusion in the future, you decide to grant execute permission to the file owner while keeping read-only access for others.  
**Question:**  
Write the command to enable execution for the file owner while keeping it read-only for others.  

**Solution:**  
```bash
chmod 744 /project/scripts/deploy.sh
```

---

**Scenario:** During a routine security audit, you notice that a critical configuration file `/etc/app.conf` can be accessed by other users, which is a security risk. Since this file contains sensitive database credentials, only the root user should have read and write access, while others should have no permissions.  
**Question:**  
What command will set the correct permissions to ensure that only the root user can access this file?  

**Solution:**  
```bash
chmod 600 /etc/app.conf
```

---

**Scenario:** Your teammate `john` left the team, and their home directory `/home/john` needs to be transferred to another teammate `mark`.  
**Question:**  
Write the command to change the ownership of `/home/john` to `mark`.  

**Solution:**  
```bash
chown -R mark:mark /home/john
```

---

**Scenario:** A script `/scripts/deploy.sh` is not executing as expected. Upon investigation, you find that it lacks execute permissions.  
**Question:**  
Write the command to grant execute permissions to the owner while keeping read-only access for everyone else.  

**Solution:**  
```bash
chmod 744 /scripts/deploy.sh
```

---

**Scenario:** Your team keeps an important **weekly report** in `/var/data/report.txt`. However, multiple users in the `staff` group accidentally **overwrite the file content**. You need to modify its permissions so that **only the owner can edit the file**, while the group and others **can only read it**.  
**Question:**  
Write the command to change the permissions of `/var/data/report.txt` accordingly.  

**Solution:**  
```bash
chmod 644 /var/data/report.txt
```

---

**Scenario:** A junior administrator, trying to be helpful, accidentally changed all permissions on `/home/user/private.txt` to `777`, making it accessible to everyone. You need to restore its permissions so that only the owner has full access while others have **no access**.  
**Question:**  
Write the command to reset the permissions and secure the file.  

**Solution:**  
```bash
chmod 700 /home/user/private.txt
```

---

**Scenario:** You and your team use a shared directory `/team_docs` to **collaborate** on documentation. However, every time someone adds a new file, it gets assigned to their personal group instead of the team group. You decide to ensure that all new files inside `/team_docs` automatically belong to the same group as the directory.  
**Question:**  
What command will set up the directory to ensure consistent group ownership for all new files?  

**Solution:**  
```bash
chmod g+s /team_docs
```

---

**Scenario:** Your team is working in a **secure environment**, but you notice that every new file created by users has permissions set to `rw-rw-r--`. For security reasons, you want **all newly created files** to have permissions set to `rw-r-----`.  
**Question:**  
What **umask** value should be set to achieve this?  

**Solution:**  
```bash
umask 027
```