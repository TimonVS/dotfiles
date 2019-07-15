#!/bin/bash

input="./vs-code-extensions.txt"

while IFS= read -r line
do
  code --install-extension "$line"
done < "$input"