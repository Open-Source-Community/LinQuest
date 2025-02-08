# 📂 Questions on File Compression and Archiving  
---
## 1️⃣ Recovering Space on a Full Disk  

### **Scenario:**  
Your Linux system is running out of disk space, and you notice that the `/home/files` directory contains old files that are no longer needed daily. To save space, you decide to **compress the entire directory** while keeping it available for future reference.  

### **Questions:**  
1. What command should you use to compress the `/home/files` directory into a `.tar.gz` archive named `files_backup.tar.gz`?  
2. After compressing, how would you remove the original `/home/files` directory to free up space?  

---

## 2️⃣ Extracting a Specific File  

### **Scenario:**  
You need to extract only `important.txt` from `project.tar.gz` without extracting everything.  

### **Task:**  
Write the command to extract only this file.  

### **Hint:**  
Use the `tar` command with options that allow selective extraction.  

---

## 3️⃣ Compressing a Large File  

### **Scenario:**  
You have a large file named `data.txt`, and you need to compress it while achieving the **maximum compression** to minimize storage space.  

### **Task:**  
Which is the best command to compress a large file?  

**A.** `bzip2 data.txt`  
**B.** `bzip2 -d data.txt`  
**C.** `tar -cvjf data.txt.bz2 data.txt`  
**D.** `gzip data.txt`  

---

## 4️⃣ Compressing a File Using gzip  

### **Scenario:**  
You are working with large log files on a Linux server, and you need to free up disk space. One of the log files, `access.log`, is taking up a significant amount of storage. You decide to **compress it using the `gzip` command**.  

However, you also want to ensure that the **original file is not lost immediately** in case you need to reference it before deletion.  

### **Task:**  
Write the appropriate `gzip` command that allows you to:  
✅ Compress `access.log` to save space.  
✅ Keep the original file intact for reference.  

### **Hint:**  
By default, `gzip` replaces the original file. Use an option that allows you to **retain** the original file.  

---
