#!/bin/bash
echo "Please enter the two numbers for the division:"
echo “Enter the numerator:”
read numerator
echo “Enter the denominator:”
read denominator

if [ "$denominator" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
else

    quotient=$(($numerator / $denominator))
    echo "Quotient: $quotient"
fi