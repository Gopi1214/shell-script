#!/bin/bash

FRUITS=("Apple", "Banana", "Mango")

echo "First Fruit is : ${FRUITS[0]}"

echo "Second Fruit is : ${FRUITS[1]}"

echo "Third Fruit is : ${FRUITS[2]}"

echo "All fruits in the array are : $FRUITS[@], ${#FRUITS[@]}"