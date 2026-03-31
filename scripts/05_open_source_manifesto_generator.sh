#!/bin/bash

echo "Answer three questions to generate your manifesto."

# Take inputs
read -p "1. Name one open-source tool you use every day: " tool
read -p "2. In one word, what does 'freedom' mean to you? " freedom
read -p "3. Name one thing you would build and share freely: " idea

# File name
filename="manifesto_abeer_saxena_$(date +%Y%m%d_%H%M%S).txt"

# Save manifesto
cat <<EOF > $filename
Open Source Manifesto
Generated on: $(date)

I rely on $tool every day, and it reminds me that software can be both practical and shared.
To me, freedom means $freedom: the ability to learn from code, improve it, and pass that value forward.
If given the chance, I would build $idea and share it openly so others can adapt it to their own needs.
This is my commitment to open collaboration and responsible technology.

— Abeer Saxena (24BCE10987)
VIT Bhopal
EOF

# Output message
echo ""
echo "Manifesto saved to $filename"
echo "------------ Manifesto Preview ------------"
cat $filename
