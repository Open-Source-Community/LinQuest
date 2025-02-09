#!/bin/bash

# Create Users and Groups
groupadd strawhats
useradd -m -G strawhats luffy
useradd -m keeper

# Set Passwords
echo "luffy:pirateking" | chpasswd
echo "keeper:gatekeeper" | chpasswd

# Create Game Directories
mkdir -p /laugh_tale/vault
mkdir -p /stronghold

# Set Ownership and Permissions
chown root:strawhats /laugh_tale/vault
chmod 770 /laugh_tale/vault

chown keeper:keeper /stronghold
chmod 700 /stronghold

# Create Story and Instruction Files
echo "🏴‍☠️ Welcome, Luffy! The treasure is hidden deep in Laugh Tale, but you need the golden key to access it.\n\nYour first challenge: Enter the Stronghold and find the golden key! But only the Keeper can access it..." > /home/luffy/README.txt

echo "🔒 The golden key is hidden here! But it's locked inside a secret file.\n\nFind a way to change permissions and extract it!" > /stronghold/README.txt

# Create the Golden Key (Locked File)
echo "Golden Key to One Piece" > /stronghold/.golden_key.zip
chown keeper:keeper /stronghold/.golden_key.zip
chmod 400 /stronghold/.golden_key.zip

# Create the Vault Hint
echo "You need the box key to unlock the One Piece!" > /laugh_tale/vault/clue.txt
chown root:strawhats /laugh_tale/vault/clue.txt
chmod 440 /laugh_tale/vault/clue.txt

# Create the Final Treasure
echo "🎉 Congratulations! You found the One Piece! 🎉" > /laugh_tale/vault/one_piece
chown roger:roger /laugh_tale/vault/one_piece
chmod 700 /laugh_tale/vault/one_piece

# Game Setup Complete
echo "✅ Game setup complete! Log in as Luffy and check your README.txt file to begin your adventure!"

