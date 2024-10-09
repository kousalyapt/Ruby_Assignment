In Ruby, repetition is achieved through loops and iterators. 

For Loops in Ruby:

Ruby handles for loops differently. Instead of specifying a starting and ending value, 
Ruby’s for loop works by iterating over a list of items. Each item in the list is assigned to a 
loop variable, and the loop runs until all items in the list are processed.

Example:

for i in [1, 2, 3] do
  puts(i)
end

Here, the loop variable i takes each value from the array [1, 2, 3], and the loop executes for each element.

Non-integer Iteration:

Ruby’s for loop isn’t limited to integers. You can iterate over any collection, such as arrays of strings:

for s in ['one', 'two', 'three'] do
  puts(s)
end

When to Use for vs. each

Use each: In most Ruby code, each is preferred because it is more consistent with the Ruby style. 
It’s more explicit about its purpose and fits with Ruby’s block-oriented approach.

Use for: If you're transitioning from another language or want simpler-looking syntax, 
you might find for loops easier to read initially. However, Rubyists tend to avoid for in favor of each.

while:'

In Ruby, a while loop repeatedly executes code as long as a given condition evaluates to true. 
The basic structure of the while loop can be written in different ways, but the logic remains the same: 
the loop keeps running until the condition is no longer met (i.e., when the condition becomes false).

until:

The until loop in Ruby is the opposite of the while loop. While while loops run as long as a condition 
is true, until loops run as long as a condition is false. This makes an until loop essentially a 
"while not" loop.

loop:

In Ruby, the loop method provides an infinite loop by default. 
It continuously executes the block of code inside it until you explicitly tell it to stop using 
the break keyword. This is different from while or until loops, where a condition is checked to 
determine whether the loop should continue.