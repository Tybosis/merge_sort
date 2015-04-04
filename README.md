Be sure to include in your README.md an explanation of your approach, and include all collaborators & sources

# Merge Sort

by Tyler Pottle

## Description

This program showcases multiple implementations of merge sort in Ruby,
using recursion and a iterative strategy.  The benchmarks file compares
the recursive method, a recursive method monkey-patched onto the built-in
array class, an iterative method, as well as the built in ruby sort
method.

## Approach

### Recursive

My approach was to use recursion to split the array in half and call a
method to merge the left and right sides of the array.  I used recursion
to keep calling the split method until there was only one element left
in the split arrays, and then keep merging the left and right sides
until we get back to the size of the beginning array.  Essentially this
method breaks the array all the way down to individual integers and then
uses the merge method to build it back up, but sorted this time.  My
implementation of the recursive formula was largely inspired by the merge
sort formula for Ruby at rosettacode: [Source](http://rosettacode.org/wiki/Sorting_algorithms/Merge_sort#Ruby)

### Iterative

After creating the recursive formula, I wanted to see if I could come up
with an iterative approach, that breaks the array down into individual
arrays of one interger each, and then loops through the array comparing
adjacent elements and merging them together.  then next time through it
creates arrays of two elements and loops through each two-element array
comparing the numbers inside with the numbers in the adjacent two-element
array and merges them together.  This process continues until the final
merge of two halves of the original array are meged together and the
array is fully sorted.
