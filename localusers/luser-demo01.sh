#!/bin/bash

# This scripts displays various informatoin to the screen

# Display 'Hello'
echo 'Hello'

# Assign a value to variable
WORD='script'

# Display that value using the variable.
echo "$WORD"

# Demonstrate that single quotes cause variables to not get expanded.
echo '$WORD'

# Combine the variable with hard-coded text.
echo "This shell is a $WORD"

# Display the contents of the variable using an alternative syntax.
echo "This is a shell ${WORD}"

# Append text to the variable.
echo "${WORD}ing is fun"

# Show how NOT to append text to a variable.
# This doesn't work:
echo "{$WORD}ing is fun!"

# Pt.2 Show how NOT to append text to a variable.
# This doesn't work:
echo "$WORDing is fun!"

# This is a new variable
ENDING="ed"

# Combine the two variables
echo "This word is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable.  (Reassignment.)
ENDING='ing'
echo "${WORD}${ENDING}"

# Reassign value of ENDING to s
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class"

