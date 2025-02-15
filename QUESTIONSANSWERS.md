# Scenario-Based Questions

## Q1
You're managing a server with multiple (`alice`, `bob`) user groups, and you need to create a new group for developers. You also need to assign a user to this group and set the appropriate permissions on a project folder.

### Question:
1. Once the group is created, how would you add an existing user (`alice`, `bob`) to this `dev` group?
2. The project folder `/projects/dev` should only be accessible by the `dev` group. Write the command to set the correct permissions so only members of `dev` can read and modify the contents.

### Solution:
```bash
sudo groupadd dev
sudo usermod -a -G dev alice
sudo chown :dev /projects/dev
sudo chmod 770 /projects/dev
```

## Q2
You are a cybersecurity officer at "CyberShield Corp." and have discovered that an intern, bob, accidentally got sudo privileges! Your manager wants you to fix this issue and secure the server.
### Tasks:
1. Find which groups bob is a part of.
2. Remove bob from the sudo group.
3. Create a new group called interns and add bob to it.
4. Verify that bob can no longer use sudo.
### Solution:
```bash
groups bob
# Ubunto only 
# sudo deluser bob sudo
sudo gpasswd --delete bob sudo
sudo groupadd interns
sudo usermod -aG interns bob
su bob
sudo ls /root  # Should return a "permission denied" error
```

## Q3 
You are the Professor, planning a digital heist. You need to create restricted accounts for your team members while ensuring only specific users can access the confidential plans.
### Tasks:
1. Create three users: tokyo, denver, and rio.
2. Create a group named heist_team and add all three users.
3. Set permissions so that only heist_team can access /vault/plan.txt (others should be denied).
4. Ensure that rio is the only one who can edit /vault/plan.txt, while others in heist_team can only read it.
### Solution
```bash 
sudo useradd -m tokyo
sudo useradd -m denver
sudo useradd -m rio
sudo groupadd heist_team
sudo usermod -aG heist_team tokyo
sudo usermod -aG heist_team denver
sudo usermod -aG heist_team rio
sudo chown rio:heist_team /vault/plan.txt
sudo chmod 640 /vault/plan.txt  # rio can edit, others in the group can read
```

## Q4 
You are the King of Linuxland, and you must manage access to the castle’s secret files. The kingdom has three ranks:
- Lords (lord_group) – Full access
- Knights (knight_group) – Read-only

### Tasks 
1. Create three users: tyrion, jaime, and jonsnow.
2. Create two groups: lord_group (for tyrion) and knight_group (for jaime and jonsnow).
3. Set correct permissions on /castle/scrolls/secret.txt based on rank.
4. Ensure that jonsnow can enter the /castle directory but cannot list other files inside it.
### Solution
```bash 
#1
sudo useradd -m tyrion
sudo useradd -m jaime
sudo useradd -m jonsnow
#2
sudo groupadd lord_group
sudo groupadd knight_group
sudo usermod -aG lord_group tyrion
sudo usermod -aG knight_group jaime
sudo usermod -aG knight_group jonsnow
#3
sudo chown tyrion:lord_group /castle/scrolls/secret.txt
sudo chmod 774 /castle/scrolls/secret.txt  # Only tyrion (owner) can edit, knights can read.
#4
sudo chmod 771 /castle  #  others can execute but can't read or write
```

# commands Debugging 
## Q1
You’re reviewing a script written by a colleague to set up a new user and group. However, it seems there is an error in the commands.
```bash
groupadd dev
useradd -g dev alice
chmod g+rwx /projects/dev
```
### Solution:
The useradd command is missing the -m option to create the home directory for alice.


# Hands-On Challenges
## Q1
You're assigned to create new users for a team of developers. You need to ensure each user has their own home directory and that their primary group is `dev`.
Task:
Write the command to create a user bob with the following conditions:
    1. Set bob's primary group to dev.
    2. Create a home directory for bob.

### Solution:
```bash
sudo useradd -m -g dev bob
```


# Multiple Choice Questions (MCQ)
## Q1
You’ve just been assigned to administer a server where multiple users from different departments need access to certain resources. You need to know which of the following commands is used to modify a user’s group memberships.
### Question:
Which of the following commands allows you to modify a user’s group memberships?

- **A)** `usermod -a -G groupname username`  
- **B)** `groupmod -G groupname username`  
- **C)** `useradd -g groupname username`  
- **D)** `usermod -g groupname username`  

### Answer:
✅ **A) `usermod -a -G groupname username`**

## Q2 
Which command creates a new user with a home directory? (select all possiblities)
- **A)** `useradd -m username`  
- **B)** `useradd username`  
- **C)** `createuser -m username`  
- **D)** `mkuser -m username`  

### Answer:
✅ **`A, B`**

## Q3
What happens when you execute userdel -r username?
- **A)** The user is deleted, but the home directory remains
- **B)** The user and home directory are deleted
- **C)** Only the password is reset
- **D)** The user is locked but not deleted
### Answer 
✅ Answer: B

