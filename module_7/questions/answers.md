# Answer:

## Question 1
 1. __#create file "fishing_only_for_binka"__

           touch fishing_only_for_binka


2. __#add "Binka" as a user :__ 

        sudo useradd Binka


3. __#"Binka" will share file only with "lolly" => group : add "loly" as a group__
            
         sudo groupadd lolly 
4. __#make sure "lolly" is added__
         
         sudo cat /etc/group
5. __#add "Binka" to "lolly" group:__
          
         sudo usermod -aG  lolly Binka
6. __#to make sure that "Binka" is added to "lolly" group : shows all Binka's groups__
    
        groups Binka

7. __#change ownership only for "Binka" & "lolly"__
       
       sudo chown Binka:lolly fishing_only_for_binka

8. __#show details about file__
         
         ls -l fishing_only_for_binka

9. __#Symbolic mode is the best way for "Binka" , make her and lolly owners of this file only.__
  
         sudo chmod o-rwx fishing_only_for_binka 

   
   
            o: other cats , so finally "Binka" secured her info.
            "Binka": Meoow 
            it means: "Thanks!"

 ## Question 2  

 1. __#delete "Binka"__

         sudo userdel Binka
2. __# make sure "Binka" is deleted__

        sudo cat /etc/shadow
3. __#Rename the group "lolly"__

      
         sudo groupmod -n fish_for_all_cats lolly

4. __#add lolly__

         sudo useradd lolly

 5.  __#add "lolly" to "fish_for_all_cats" group:__  

        
        
           sudo usermod -aG  fish_for_all_cats lolly

6. __#change permissions of file: cats prefer using "Absolute mode"__
          
          
           sudo chmod 644 fishing_only_for_binka  => rw- r-- r-- 
               
           
7.  __#make sure of changes__
        
        
           ls -l fishing_only_for_binka
    
------------------------------------------------------------------
## Question 3
   1.  __#create folder__
   
       
            mkdir fish_heist

   2.  __#add kitty as a user__
            
        
           sudo useradd Kitty

   3. __#add "fish_lovers" group__
   
       
           sudo groupadd fish_lovers

   4. __#add kitty to fish_lovers__
          
          sudo usermod -aG  fish_lovers Kitty

   5. __#give permissions to kitty and the group__
           
           sudo chown Kitty:fish_lovers fish_heist/

   6.   __#change permissions__
   
          
          
            sudo chmod 760 fish_heist/

   7. __#make sure of the changes__
                
    
           ls -ld fish_heist/


-----------------------------------------------------------------

## Question 4



1.  __# change permissions__
         
         sudo chmod 600 misho_project.txt

2. __# comprise file__

         bzip2 misho_project.txt

3.  __# make sure of changes : permissions , comprission__   
    
      
         ls -l misho_project.txt          

---


1. **Scenario:** Your development team has a shared directory `/project` that should only be accessible by members of the `devs` group. You need to ensure that only `devs` members can read, write, and execute files in this directory.  
   **Question:** Write the command to change the directory ownership to the `devs` group and give the group full access while restricting others.  
   **Solution:**  
   ```bash
   chown :devs /project
   chmod 770 /project
   ```
---
2. **Scenario:** Sarah, a new team member, tries to run `deploy.sh` from the `project/scripts` directory, but the system denies execution. You check the file’s permissions and realize that the execute permission is missing. To avoid confusion in the future, you decide to grant execute permission to the file owner while keeping read-only access for others.  
   **Question:** Write the command to enable execution for the file owner while keeping it read-only for others.  
   **Solution:**  
   ```bash
   chmod 744 /project/scripts/deploy.sh
   ```
---
3. **Scenario:** During a routine security audit, you notice that a critical configuration file `/etc/app.conf` can be accessed by other users, which is a security risk. Since this file contains sensitive database credentials, only the root user should have read and write access, while others should have no permissions.  
   **Question:** What command will set the correct permissions to ensure that only the root user can access this file?  
   **Solution:**  
   ```bash
   chmod 600 /etc/app.conf
   ```
---
4. **Scenario:** Your teammate `john` left the team, and their home directory `/home/john` needs to be transferred to another teammate `mark`.  
   **Question:** Write the command to change the ownership of `/home/john` to `mark`.  
   **Solution:**  
   ```bash
   chown -R mark:mark /home/john
   ```
---
5. **Scenario:** A script `/scripts/deploy.sh` is not executing as expected. Upon investigation, you find that it lacks execute permissions.  
   **Question:** Write the command to grant execute permissions to the owner while keeping read-only access for everyone else.  
   **Solution:**  
   ```bash
   chmod 744 /scripts/deploy.sh
   ```
---
6. **Scenario:** Your team keeps an important **weekly report** in `/var/data/report.txt`. However, multiple users in the `staff` group accidentally **overwrite the file content**. You need to modify its permissions so that **only the owner can edit the file**, while the group and others **can only read it**.  
   **Question:** Write the command to change the permissions of `/var/data/report.txt` accordingly.  
   **Solution:**  
   ```bash
   chmod 644 /var/data/report.txt
   ```
---
7. **Scenario:** A junior administrator, trying to be helpful, accidentally changed all permissions on `/home/user/private.txt` to `777`, making it accessible to everyone. You need to restore its permissions so that only the owner has full access while others have **no access**.  
   **Question:** Write the command to reset the permissions and secure the file.  
   **Solution:**  
   ```bash
   chmod 700 /home/user/private.txt
   ```
---
8. **Scenario:** You and your team use a shared directory `/team_docs` to **collaborate** on documentation. However, every time someone adds a new file, it gets assigned to their personal group instead of the team group. You decide to ensure that all new files inside `/team_docs` automatically belong to the same group as the directory.  
   **Question:** What command will set up the directory to ensure consistent group ownership for all new files?  
   **Solution:**  
   ```bash
   chmod g+s /team_docs
   ```
---
9. **Scenario:** Your team is working in a **secure environment**, but you notice that every new file created by users has permissions set to `rw-rw-r--`. For security reasons, you want **all newly created files** to have permissions set to `rw-r-----`.  
**Question:** What **umask** value should be set to achieve this?  
   **Solution:**  
   ```bash
   umask 027
   ```

---