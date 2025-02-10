# One Piece Treasure Hunt - README

## 🏴‍☠️ Overview
This is an interactive Linux-based treasure hunt inspired by *One Piece*! You must follow the clues, navigate the system, and use your Linux skills to unlock the legendary **One Piece**!

## 🚀 How to Start
1. Run the setup script:
   ```bash
   sudo bash setup_script.sh
   ```
2. If you see an error about missing users or groups, follow the instructions to create them and rerun the script.
3. Once setup is complete, log in as *Luffy*:
   ```bash
   su - luffy
   ```

## 🏆 Your Goal
- Find the **golden key**
- Unlock the **One Piece vault**
- Discover the **true treasure of the Pirate King**

## 🗺️ Step-by-Step Guide

### 🔍 Step 1: Follow the First Hint
- Start by checking the hint in **Laugh Tale Vault**:
  ```bash
  cat /laugh_tale/vault/hint.txt
  ```
- It mentions that the golden key is in the **Stronghold** with *Keeper*.

### 🔑 Step 2: Get the Golden Key
- You need access to **/stronghold**
- Try listing the directory:
  ```bash
  ls -l /stronghold
  ```
- Check the hint inside:
  ```bash
  cat /stronghold/hint.txt
  ```
- To get the **golden key**, you may need *Keeper’s* help...
- Log in as **Keeper**:
  ```bash
  su - keeper
  ```
- Locate the **hidden key**:
  ```bash
  ls -la /stronghold
  ```
- Read the key file:
  ```bash
  cat /stronghold/.golden_key.zip
  ```
- Note down the **SECRET_KEY**.

### 💰 Step 3: Unlock the Vault
- Switch back to *Luffy*:
  ```bash
  su - luffy
  ```
- Try accessing **One Piece**:
  ```bash
  cat /laugh_tale/vault/one_piece
  ```
- If access is denied, you might need to use the **golden key**.

### 🏝️ Step 4: The Final Clue
- Look inside **Mystery Island** for another clue:
  ```bash
  cat /grand_line/mystery_island/clue.txt
  ```
- It leads you to **Captain Roger’s Room**.

### ⚡ Step 5: Discover the True Treasure
- Navigate to the **Captain’s Room**:
  ```bash
  ls /rogers_ship/captains_room
  ```
- Read **Roger’s Legacy**:
  ```bash
  cat /rogers_ship/captains_room/legacy.txt
  ```
- You’ve uncovered the **Will of D!** 🎉

## 🎯 Victory!
- If you followed all steps and read **legacy.txt**, you have completed the treasure hunt!
- You are now worthy of the title **Pirate King!** 👑

Enjoy your adventure, Captain! 🏴‍☠️

