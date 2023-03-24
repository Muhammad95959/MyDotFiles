#!/bin/bash

# Get the workspaces in use in i3
used_workspaces=( $(i3-msg -t get_workspaces | jq '.[] | .num') )

# Create an array of all possible workspace numbers from 1 to 10
all_workspaces=()
for ((i=1; i<=10; i++))
do
    all_workspaces+=($i)
done

# Get the unused workspaces by taking the difference between all_workspaces and used_workspaces
unused_workspaces=()
for i in "${all_workspaces[@]}"
do
    if [[ ! " ${used_workspaces[@]} " =~ " ${i} " ]]; then
        unused_workspaces+=("$i")
    fi
done

# Get the first element of the unused_workspaces array
first_unused_workspace=${unused_workspaces[0]}

echo "$first_unused_workspace"
