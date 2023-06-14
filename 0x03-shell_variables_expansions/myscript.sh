#!/bin/bash

# Step 1: Create a file
echo "Enter the name of the file to create:"
read filename
touch $filename

# Step 2: Write the filename to a variable
file=$filename

# Step 3: Write the first line to the file
echo "#!/bin/bash" > $file

# Step 4: Ask for the project command and write to the file
echo "Enter the project command to save in the file:"
read project_command
echo $project_command >> $file

# Step 5: Save the file in current directory
mv $file ./

# Step 6: Make the file executable
chmod +x $file

# Step 7: Add, commit and push the file to git
git add $file
git commit -m "first comment"
git push

# Step 8: Automatically enter the username
echo "Mohamed-Deefallah" | git config --global user.name --stdin

# Step 9: Automatically enter the password (without displaying input)
echo "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" | git config --global user.password --stdin
