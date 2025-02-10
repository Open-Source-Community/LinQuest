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
