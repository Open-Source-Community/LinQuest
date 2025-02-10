### How the Story Progresses

1️⃣ Luffy finds the first hint in /laugh_tale/vault/hint.txt

    Clue: "The golden key is hidden somewhere in the Stronghold. Keeper may have it..."

2️⃣ Luffy checks /stronghold/hint.txt

    Clue: "Luffy, if you want the key, prove you're worthy!"
    (Perhaps he needs to persuade Keeper!)

3️⃣ If he gets the .golden_key.zip, he can open /laugh_tale/vault/one_piece

    Clue: "Only the one who holds the golden key can unlock the vault!"

4️⃣ He finds another clue in /grand_line/mystery_island/clue.txt

    Clue: "The Pirate King's legacy is hidden in the captain's room..."

5️⃣ Final step: Inside /rogers_ship/captains_room/legacy.txt

    "This is the true treasure: the will of D!"

Now Luffy has completed the treasure hunt!

### Commands to Solve the One Piece Treasure Hunt

---

#### **Step 1: Read the First Hint**

**Location:** `/laugh_tale/vault/hint.txt`  
**Clue:** _"The golden key is hidden somewhere in the Stronghold. Keeper may have it..."_

🔹 **Command to read the hint:**

```bash
cat /laugh_tale/vault/hint.txt
```

---

#### **Step 2: Check the Stronghold for the Key**

**Location:** `/stronghold/hint.txt`  
**Clue:** _"Luffy, if you want the key, prove you're worthy!"_

🔹 **Command to check the hint:**

```bash
cat /stronghold/hint.txt
```

🔹 **Command to list all hidden files (to find the key):**

```bash
ls -la /stronghold
```

🔹 **Expected Output (hidden file found):**

```
-r--------  1 keeper keeper  11 Feb 10 01:39 .golden_key.zip
```

🔹 **Luffy tries to open it, but permission is denied!**

```bash
cat /stronghold/.golden_key.zip
```

_Permission denied!_

---

#### **Step 3: Convince Keeper to Give the Key**

**Solution:** `keeper` owns the `.golden_key.zip`, so Luffy must ask Keeper to move the file for him.

**Keeper (or root) moves the key to Luffy’s home directory**

```bash
sudo mv /stronghold/.golden_key.zip /home/luffy/
```

**Change ownership so Luffy can open it**

```bash
sudo chown luffy:strawhats /home/luffy/.golden_key.zip
sudo chmod 400 /home/luffy/.golden_key.zip
```

**Luffy reads the key’s contents**

```bash
cat /home/luffy/.golden_key.zip
```

**Key Found:** `SECRET_KEY`

---

#### **Step 4: Use the Key to Unlock the Final Treasure**

**Location:** `/laugh_tale/vault/one_piece`  
**Clue:** _"Only the one who holds the golden key can unlock the vault!"_

**Luffy needs to change the permissions to access the treasure**

```bash
sudo chmod 700 /laugh_tale/vault/one_piece
sudo chown luffy:strawhats /laugh_tale/vault/one_piece
```

**Luffy reads the final message**

```bash
cat /laugh_tale/vault/one_piece
```

**Output:**

```
Congratulations! You found the One Piece!
```

---

### **Final Summary: Command Order**

```bash
cat /laugh_tale/vault/hint.txt
cat /stronghold/hint.txt
ls -la /stronghold
sudo mv /stronghold/.golden_key.zip /home/luffy/
sudo chown luffy:strawhats /home/luffy/.golden_key.zip
sudo chmod 400 /home/luffy/.golden_key.zip
cat /home/luffy/.golden_key.zip
sudo chmod 700 /laugh_tale/vault/one_piece
sudo chown luffy:strawhats /laugh_tale/vault/one_piece
cat /laugh_tale/vault/one_piece
```
