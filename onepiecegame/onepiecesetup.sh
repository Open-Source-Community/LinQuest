#!/bin/bash

# Function to check if a user exists
user_exists() {
    id "$1" &>/dev/null
}

# Function to check if a group exists
group_exists() {
    getent group "$1" &>/dev/null
}

# Check if the required group and users exist
if ! group_exists strawhats || ! user_exists luffy || ! user_exists keeper; then
    echo "❌ The legendary Straw Hats crew is incomplete!"
    echo "⚠️ You must create the 'strawhats' group and the 'luffy' and 'keeper' users first."
    echo "👉 Once they are created, rerun this script."
    exit 1
fi

echo "✅ The Straw Hats crew is assembled! Proceeding with the treasure hunt setup..."

# Ensure default shell is /bin/bash
usermod -s /bin/bash luffy
usermod -s /bin/bash keeper

# add password
echo "luffy:pirateking" | chpasswd
echo "keeper:gatekeeper" | chpasswd

# Step 4: Create game directories
echo "\U0001F4C2 Creating adventure locations..."
mkdir -p /laugh_tale/vault
mkdir -p /stronghold
mkdir -p /rogers_ship/captains_room
mkdir -p /grand_line/mystery_island

# Step 5: Set ownership and permissions
echo "\U0001F512 Setting up access permissions..."
chown luffy:strawhats /laugh_tale/vault /rogers_ship/captains_room /grand_line/mystery_island
chmod 770 /laugh_tale/vault /rogers_ship/captains_room /grand_line/mystery_island
chown keeper:strawhats /stronghold
chmod 770 /stronghold

# Step 6: Create hints and files
echo "\U0001F50E Hiding the golden key..."
echo "The golden key is hidden somewhere in the Stronghold. Keeper may have it..." > /laugh_tale/vault/hint.txt
chown luffy:strawhats /laugh_tale/vault/hint.txt
chmod 440 /laugh_tale/vault/hint.txt

touch /stronghold/.golden_key.zip
echo "SECRET_KEY" > /stronghold/.golden_key.zip
echo "Luffy, if you want the key, prove you're worthy!" > /stronghold/hint.txt
chown keeper:strawhats /stronghold/.golden_key.zip /stronghold/hint.txt
chmod 440 /stronghold/.golden_key.zip /stronghold/hint.txt

# Step 7: Create the next challenge
echo "\U0001F4B0 Placing the One Piece treasure..."
touch /laugh_tale/vault/one_piece
echo "Congratulations! You found the One Piece!" > /laugh_tale/vault/one_piece
echo "Only the one who holds the golden key can unlock the vault!" > /laugh_tale/vault/hint_2.txt
chown luffy:strawhats /laugh_tale/vault/one_piece /laugh_tale/vault/hint_2.txt
chmod 770 /laugh_tale/vault/one_piece
chmod 440 /laugh_tale/vault/hint_2.txt

# Step 8: Add a final mystery
echo "\U0001F30A Setting up the final puzzle..."
touch /grand_line/mystery_island/clue.txt
echo "The Pirate King's legacy is hidden in the captain's room..." > /grand_line/mystery_island/clue.txt
chown luffy:strawhats /grand_line/mystery_island/clue.txt
chmod 440 /grand_line/mystery_island/clue.txt

touch /rogers_ship/captains_room/legacy.txt
echo "This is the true treasure: the will of D!" > /rogers_ship/captains_room/legacy.txt
chown luffy:strawhats /rogers_ship/captains_room/legacy.txt
chmod 770 /rogers_ship/captains_room/legacy.txt

echo "✅ One Piece Treasure Hunt setup complete!"
echo "\U0001F449 Log in as 'luffy' and follow the hints to claim the treasure!"
