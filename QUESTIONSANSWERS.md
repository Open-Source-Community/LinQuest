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

## Q2
Place Here

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

## Q2 
Place Here your Question


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
Place here Your MCQ Question
