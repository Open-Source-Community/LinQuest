# Level 1: The Maze of Secrets - Questions & Answers

## Step 1: Find the Compressed File
**Scenario:** Linox starts in the `/maze` directory. He needs to search for a compressed file named `maze_challenges.tar.gz`.

**Task:** Write the command to search for `maze_challenges.tar.gz` in the `/maze` directory.

**Answer:**
```sh
find /maze -name "maze_challenges.tar.gz"
```

---

## Step 2: Uncompress the File
**Scenario:** Linox finds the file in `/maze/secrets/maze_challenges.tar.gz`. He needs to uncompress it to reveal the challenges.

**Task:** Write the command to extract `maze_challenges.tar.gz` to the `/maze/secrets` directory.

**Answer:**
```sh
tar -xvzf /maze/secrets/maze_challenges.tar.gz -C /maze/secrets
```

---

## Step 3: Solve Challenge 1 - Discover Hidden Files
**Scenario:** After extracting the archive, Linox finds a file named `challenge1.txt`. The file contains a riddle:  
*"I am a command that lists files, but with the right option, I can show you hidden ones too. What am I?"*

**Task:** Write the command to list all files (including hidden ones) in the `/maze/secrets` directory.

**Answer:**
```sh
ls -la /maze/secrets
```

---

## Step 4: Solve Challenge 2 - Read a Locked File
**Scenario:** Linox finds another file named `challenge2.txt`. It contains a task:  
*"There is a file named `locked_door.txt` in `/maze/secrets`. However, you do not have permission to read it. Change its permissions so you can view its contents."*

**Task:** Write the command to grant read permission to `locked_door.txt`.

**Answer:**
```sh
chmod +r /maze/secrets/locked_door.txt
```

---

## Step 5: Solve Challenge 3 - Execute the Script
**Scenario:** After making the script executable, Linox runs it. The script provides a clue that says:  
*"Well done! But the logs contain more secrets. Check inside `/maze/secrets/logs` to find your next step."*

**Task:** Write the command to list the contents of `/maze/secrets/logs` and identify an important file named `hint.txt`.

**Answer:**
```sh
ls /maze/secrets/logs
```

---

## Step 6: Solve Challenge 4 - Compress the Logs
**Scenario:** Linox finds `hint.txt` inside `/maze/secrets/logs`. The file contains a task:  
*"To proceed, you must back up the logs. Compress the entire `/maze/secrets/logs` directory into a `.tar.gz` archive and name it `logs_backup.tar.gz`."*

**Task:** Write the command to compress the directory.

**Answer:**
```sh
tar -cvzf /maze/secrets/logs_backup.tar.gz /maze/secrets/logs
```

---

## Step 7: Solve Challenge 5 - Find the Key
**Scenario:** After compressing the logs, another message appears:  
*"Now that the logs are safe, the key will reveal itself. Search for a file named `key.txt` in `/maze/secrets`."*

**Task:** Write the command to search for `key.txt` in the `/maze/secrets` directory.

**Answer:**
```sh
find /maze/secrets -name "key.txt"
```

---

## Step 8: Escape the Maze
**Scenario:** Linox finds `key.txt` in `/maze/secrets/hidden/key.txt`. 

**Task:** Write the command to display the contents of `key.txt`.

**Answer:**
```sh
cat /maze/secrets/hidden/key.txt
