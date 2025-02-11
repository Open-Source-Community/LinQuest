<!--Question 1-->
<!--Strong-->
### Question 1 
###### Hiro Hamada, a young robotics genius, has just finished creating a new invention—an upgraded version of Baymax, his robotic assistant, designed to help him with personal projects. As Baymax becomes more integrated into Hiro's world, Hiro realizes that Baymax needs access to the lab’s files and tools on his computer,he want to **check about his users aaccounts in his computer and then make user account to *"Baymax"* and set password to the account** . as hamada being forgetful he can't remember the commands so he ask your help .


###### Once **the user account is created , hamada transforms** to it and takes a moment to explain how groups are essential for managing access to different sections of the lab's files.
###### Hiro knows that organizing users into groups will make it easier to manage who can access what information. He decides to **create a specific group** just for Baymax  and other trusted assistants with name **"Baymax"** .

###### After Hiro sets up the group and **get "Baymax"** into it , Baymax —curious as always— asks if he can also access **hamada**’s account to **check out which groups he belongs to**. Baymax doesn’t know how to view this information, so he turns to you for help. He wants to understand more about groups, specifically the ones Hiro is a part of.

<!--Answer 1-->

### Answer 1 
###### cat /etc/passwd
###### sudo useradd Baymax
###### sudo passwd Baymax 
###### su - Baymax
###### sudo groupadd Baymax
###### usermod -a -G Baymax Baymax
###### su - hamada
###### groups hamada


### Question 2


###### Monsters, Inc. has decided to upgrade their security system! Only the top-rated scarers will get access to the main computer—but there’s a catch... they need user accounts first!

###### Since you're a Linux wizard, they’ve asked you to:

###### Create accounts for the top scarers **"andel" "washweshnie" "shalaby"**.
###### Set up an exclusive VIP group and add them to it **(the name of group "scarers")**.
###### But plot twist... Andel was caught cheating! So now you have to kick him out of the group ASAP!
###### Hurry up and get it done before Andel realizes what’s happening!


### Answer 2 

###### sudo useradd andel
###### sudo useradd washweshnie
###### sudo useradd shalaby
###### sudo passwd andel
###### sudo passwd washweshnie
###### sudo passwd shalaby
###### sudo groupadd scarers
###### sudo usermod -aG scarers andel
###### sudo usermod -aG scarers washweshnie
###### sudo usermod -aG scarers shalaby
###### sudo deluser andel scarers