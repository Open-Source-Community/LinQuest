# Module [3] : **"Creating Links & Finding Files"**
### [1] Soft links:
1. **Scenario:** Minty is organizing his project files and accidentally deletes a file named `IMPORTANT.txt`. However, he remembers creating a soft link to it named `important_link`.  
**Question:** What happens when he tries to access `important_link`?  

    - **a)** It opens the original `IMPORTANT.txt` file.  
    - **b)** It displays an error because the target file is missing.   
    - **c)** It creates a new file named `IMPORTANT.txt`.  
    - **d)** It redirects to the nearest file with a similar name.  

<br>

2. **Scenario:** Minty was playing with his sister Poppy, but she hit him so hard that he now suffers from long-term memory loss, and now he forgot how to make soft links completely.  
**Question:** Minty wants to make a soft link to a file named `My_Diary.txt` but he forgot how to do it. Can you help Minty and write the command for this task?

<br>

3. **Scenario:** Minty now began to recover, so he creates a soft link named `data_link` pointing to `/var/data/files/data.txt`. He then moves data_link to his home directory.  
**Question:** What happens when he tries to access data_link from his home directory?

    - **a)** It works because soft links store the full path.  
    - **b)** It breaks because the relative path changes.  
    - **c)** It creates a new file in the home directory.  
    - **d)** It redirects to the root directory.  

<br>

4. **Scenario:** Poppy wants to make a soft link named `fun_stuff` pointing to `/home/brother/best_bro.txt`, but she receives an error.  
This is the command she wrote:  
    ```bash
    ln -S /home/brother/best_bro.txt fun_stuff
    ```  
    **Question:** What is the error and how should she fix it?  

<br>

5. **Scenario:** Minty was plaing with soft links and wanted to try out something. He created a soft link named `linkA` pointing to `linkB`, and `linkB` points back to `linkA`.  
**Question:** What happens when he tries to access `linkA`?  

    - **a)** It opens `linkB` successfully. 
    - **b)** It enters an infinite loop.
    - **c)** It displays an error because recursive links are not allowed.
    - **d)** It creates a new file named `linkB`.

<br>

6. **Scenario:** You're name is Abel and you lost your memory. You find a weird note and you try to read it. 
**Question:** How can you read the file?  

<br>

7. **Scenario:** After reading note, you find a part of your data or to be exact, memory and more about who you are. You gotta find a way to remember your powers. So, you gotta listen to the note.
**Question:** How can you find the hidden folder?

<br>

8. **Scenario:** Now, you knew your first power, you gotta use it, you know? Your next goal is to link two portals in a way that if you changed or removed the main portal, the one that you made won't work also.
**Question:** How will you be able to link the portal to your home to your current location? (name the link "Earth")  

<br>

9. **Scenario:** You forgot to close the portal but gladly, the note reminded you. Go and remove the portal 
**Question:** remove the Earth portal

<br>

10. **Scenario:** You can't stop thinking about the reason why would removing the Earth portal
**Question:** Why or how is that possible?

    - **a)** Because Abel is a genius
    - **b)** Because removing the main file stops the soft link from working
    - **c)** Because a portal can't work if one side is missing
    - **d)** Idk

<br>

11. **Scenario:** After a long day escaping, you think "I'm hungry" so, you go to a restaurant but you're lazy to walk and thought "I can make portals". You have to make a portal to the restuarant that stays if you closed one from any side 
**Question:** How will you be able to link the portal to restuarant to your home so that if you removed the main portal, the other stays?

### [2] Finding files:
12. **Scenario:** Nora opened her friend Sara's device to find that all files are hidden, she wants to list all hidden files.
**Question:** Which ls option should she use?

    - **a)** `ls -a`
    - **b)** `ls -l`
    - **c)** `ls -h`
    - **d)** `ls ~`

<br>

13. **Scenario:** Khalid wants to find all the files that start with the letter *M* (manager files) with details.
**Question:** What command should he use?

    - **a)** `ls M*`
    - **b)** `ls -M`
    - **c)** `ls -l M*`
    - **d)** `A & C`

<br>

14. **Scenario:** Minty created a new vertion of Tetris named `tetris.exe` but it is lost in `/games` directory.
**Question:** Which command will take you directly to the games directory?

    - **a)** `cd games`
    - **b)** `cd /usr/games`
    - **c)** `cd ../usr/games`
    - **d)** `cd ~/usr/games`

<br>

15. **Scenario:** Minty gave you a secret code in `Konami.txt` (first 'konami' letters) in `/games` (you are in `~`).
**Question:** how to find the code?

    - **a)** `cd /games` then `head -c 6 Konami.txt`
    - **b)** `head -c 6 /games/Konami.txt`
    - **c)** `tail -c 6 /games/Konami.txt`
    - **d)** A & B

<br>

16. **Scenario:** Minty (for some reason) downloaded an app that allows others to control his caps lock key remotely, and now there is a file in his directory called `mint.txt` (or `miNt.txt` we don't know). you need to find it now.
**Question:** What will you do to find it?

<br>
