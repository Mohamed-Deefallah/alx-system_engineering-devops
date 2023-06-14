#!/bin/bash

# Step 1: Create a file
echo "Enter the name of the file to create:"
read filename
touch $filename

# Step 2: Define the filename as a variable
file=$filename

# Step 3: Write the first line to the file
echo "#!/bin/bash" > $file

# Step 4: Ask for the project command and write to the second line
echo "Enter the project command to save in the second line:"
read command
echo $command >> $file

# Step 5: Save the file
echo -e "\x1B: x" | ex $file

# Step 6: Change file permissions
chmod u+x $file

# Step 7: Git add, commit and push
git add .
git commit -m "vvv"
git push
