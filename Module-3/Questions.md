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

