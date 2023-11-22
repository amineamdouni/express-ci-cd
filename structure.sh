#!/bin/bash

# Function to print tree structure
print_tree() {
    find "$1" -type d | sed -e "s;[^/]*/;|---;g;s;---|; |;g"
}

# Exclude .sh files and .git folder
exclude_pattern="*.sh|.git"

# Print tree structure for the current folder
echo "Tree structure for the current folder:" > structure.md
print_tree . >> structure.md

# Loop over files in the current directory
for file in *; do
    # Ignore .sh files and .git folder
    if [[ "$file" != *.sh && "$file" != ".git" ]]; then
        # Print content of the file
        echo -e "\nContent of $file:" >> structure.md
        cat "$file" >> structure.md

        echo -e "\n-------------------------\n" >> structure.md
    fi
done

echo "Output has been saved to structure.md"
