# Files Permissions & Ownership

## Question 1:

"Binka" the cat is working on a secret project about how to catch fish to eat them all by herself, without the other cats getting any information about that. However, she allows a few trusted cats, like "Lolly" to see the file. "Binka" needs to change the ownership of the "fishing_only_for_binka" file so that it's owned only by her and "Lolly", and nobody else should be able to read or modify the file.

Required:
"Binka" needs to modify the file's permissions so that only she and "Lolly" have access to it, with full control (read/write permissions), while all other cats should be denied any access. What commands should "Binka" use to change the file's ownership and permissions accordingly?
note: "Binka" does not prefer to deal with the binary system

"Binka" does not know how to create file , can you help her?


## Question 2:


"Lilo" found out about Binka's secret plan from "Lolly", and they decided to remove "Binka" as a user and make "Lolly" the owner of everything as a reward. They also agreed that they would allow all the other cats to see the contents of Binka's file so they could share the fish and eat them together. However, they are not prefer  working with characters and prefer working with numbers. They need help to add Lolly as a user and gain full control over Binka's file.

Required:
How can Lilo and Lolly remove "Binka" as a user and make Lolly the new owner of everything, including the "fishing_only_for_binka" file? Also, how can they ensure that all other cats can read the contents of this file?

-------------------------------------------------------------------
## Question 3:


"Kitty" the cat is collaborating with her friends on a project called "The Great Fish Heist". She wants to create a folder called "fish_heist" that she wants to share with the group "fish_lovers", but she doesn’t want anyone outside the group to see the files. She also wants every member of the group to have read and write access.


Required:
How can "Kitty":
Change the ownership of the "fish_heist" folder to the group "fish_lovers"?
    Set permissions so that everyone in the group has read and write access, but no one outside the group can access it?

---------------------------------------------------------------------

## Question 4:

"Misho" the cat was working on a project related to his school and decided to create a file to store information about his project, such as his name and year of study. After adding the information to the file, he wanted to set the file permissions so that only he could access it. However, when he tried to upload the file, he discovered that it was too large. He asked his teacher, "Loza" the cat, how to compress the file, but she didn't provide him with any details.
 Now, "Misho" is asking you how he can secure his file and how he can compress it to make it smaller in size

---------------------------------------------------------------------

# Scenarios

## **Scenario 1:** 

Your development team has a shared directory `/project` that should only be accessible by members of the `devs` group. You need to ensure that only `devs` members can read, write, and execute files in this directory.

**Question:** Write the command to change the directory ownership to the `devs` group and give the group full access while restricting others.

---
## **Scenario 2:** 

Sarah, a new team member, tries to run `deploy.sh` from the `project/scripts` directory, but the system denies execution. You check the file’s permissions and realize that the execute permission is missing. To avoid confusion in the future, you decide to grant execute permission to the file owner while keeping read-only access for others.

   **Question:** Write the command to enable execution for the file owner while keeping it read-only for others.

---
## **Scenario 3:** 

During a routine security audit, you notice that a critical configuration file `/etc/app.conf` can be accessed by other users, which is a security risk. Since this file contains sensitive database credentials, only the root user should have read and write access, while others should have no permissions.

   **Question:** What command will set the correct permissions to ensure that only the root user can access this file?

---

## **Scenario 4:** 

 Your teammate `john` left the team, and their home directory `/home/john` needs to be transferred to another teammate `mark`.

   **Question:** Write the command to change the ownership of `/home/john` to `mark`.

---

## **Scenario 5:** 

A script `/scripts/deploy.sh` is not executing as expected. Upon investigation, you find that it lacks execute permissions.

   **Question:** Write the command to grant execute permissions to the owner while keeping read-only access for everyone else.

---

## **Scenario 6:** 

Your team keeps an important **weekly report** in `/var/data/report.txt`. However, multiple users in the `staff` group accidentally **overwrite the file content**. You need to modify its permissions so that **only the owner can edit the file**, while the group and others **can only read it**.

   **Question:** Write the command to change the permissions of `/var/data/report.txt` accordingly.

---

## **Scenario 7:** 

A junior administrator, trying to be helpful, accidentally changed all permissions on `/home/user/private.txt` to `777`, making it accessible to everyone. You need to restore its permissions so that only the owner has full access while others have **no access**.

   **Question:** Write the command to reset the permissions and secure the file.

---

## **Scenario 8:** 

You and your team use a shared directory `/team_docs` to **collaborate** on documentation. However, every time someone adds a new file, it gets assigned to their personal group instead of the team group. You decide to ensure that all new files inside `/team_docs` automatically belong to the same group as the directory.

   **Question:** What command will set up the directory to ensure consistent group ownership for all new files?

---

## **Scenario 9:** 

Your team is working in a **secure environment**, but you notice that every new file created by users has permissions set to `rw-rw-r--`. For security reasons, you want **all newly created files** to have permissions set to `rw-r-----`.

   **Question:** What **umask** value should be set to achieve this?