# 🏴‍☠️ One Piece Treasure Hunt – Setup & Play Guide

## **1️⃣ Step 1: Create Users & Group**
Before running the script, you **must manually create** the required users and group.  
Run the following commands:

```bash
sudo groupadd strawhats
sudo useradd -m -G strawhats luffy
sudo useradd -m keeper```

---

## **2️⃣ Step 2: Run the Setup Script**
Once users are created, run the script to set up the treasure hunt environment.

\`\`\`bash
chmod +x onepiecesetup.sh
sudo ./onepiecesetup.sh
\`\`\`

If the setup is successful, you’ll see:
\`\`\`
✅ One Piece Treasure Hunt setup complete!
👉 Log in as 'luffy' and follow the hints to claim the treasure!
\`\`\`

---

## **3️⃣ Step 3: Log in as Luffy**
Switch to **Luffy** to begin your adventure:

\`\`\`bash
su - luffy
\`\`\`
(Password: \`pirateking\`)

---

## **4️⃣ Step 4: The Hunt Begins!**
Start by checking **your first hint**:

\`\`\`bash
ls -l /laugh_tale/vault/
cat /laugh_tale/vault/hint.txt
\`\`\`

📜 **Hint:**  
> "The golden key is hidden somewhere in the Stronghold. Keeper may have it..."

---

## **5️⃣ Step 5: Enter the Stronghold**
Try accessing the **Stronghold**:

\`\`\`bash
ls -ld /stronghold
\`\`\`
🚫 **Access Denied!**

🔑 **Solution:**  
Log in as **Keeper** to check for the golden key:

\`\`\`bash
su keeper
\`\`\`
(Password: \`gatekeeper\`)

Now, check inside the **Stronghold**:

\`\`\`bash
ls -la /stronghold/
cat /stronghold/hint.txt
\`\`\`

📜 **Hint:**  
> "Luffy, if you want the key, prove you're worthy!"

Find and unlock **\`.golden_key.zip\`**:

\`\`\`bash
chmod 444 /stronghold/.golden_key.zip
cat /stronghold/.golden_key.zip
\`\`\`
🔑 **The golden key password is revealed!**

---

## **6️⃣ Step 6: Unlock the One Piece Treasure!**
Now, return to **Luffy** and unlock the treasure vault.

\`\`\`bash
su - luffy
cd /laugh_tale/vault/
ls -l
\`\`\`

You’ll see **one_piece.zip**, but it’s locked!

Use the password from \`.golden_key.zip\` to open it:

\`\`\`bash
unzip -P "onepiece123" one_piece.zip
cat one_piece.txt
\`\`\`

🎉 **Congratulations! You found the One Piece!** 🎉

---

## **🏆 Achievements & Rewards**
🏅 **"Treasure Hunter"** – Found the **Golden Key**  
🏅 **"Lockpicker"** – Unlocked **One Piece**  
🏅 **"Pirate King"** – Discovered **Roger’s Legacy**  

⏳ **Speedrun Challenge:** Complete within **5 minutes** to earn **"Fastest Pirate"** 🏴‍☠️  
