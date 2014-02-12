Portland Code School
#Code Challenge 03
###Behavior-driven development of name parser and cleaner

Code challenge 03 continues a sequence of code challenges. Before we are done, we will create a command line utility that analyzes a text file for data patterns, then cleans the data to prepare it for input to a database. This is a very common activity when you're converting legacy systems to database-based systems

This utility will eventually be called "txt2csv". You can see the beginnings of this application in the txt2csv subfolder of this code challenge.

That subfolder has the following structure:

````
$ tree .
.
└── txt2csv
    ├── README.md
    ├── bin
    │   └── txt2csv
    ├── lib
    │   ├── analyze.rb
    │   └── parse_names.rb       <-- This is new
    └── spec
        ├── analyze_spec.rb
        ├── name_parser_spec.rb  <-- This is new
        └── spec_helper.rb
````

The *lib* folder is where you will continue design and construction of your second Ruby routine, *parse_names.rb*.

The *spec* folder contains  a new file: *name_parser_spec.rb*, the specification for *parse_names.rb*. These tests have all been written for you so you can run then one at a time to build your code.

# Ruby language elements you will find useful

1. Splitting lines into an array of words
1. Storing parts of names in a hash
1. Converting hashes to arrays
1. Nested branching structures to handle different cases
1. Refactoring code to keep it simple and easily explainable as you add features.

# Pseudocode to get you started

Here's some pseudocode to get you started for the routine:

````ruby
# Break the given string into a set of words.
# You can be certain that the last name exists, so 
#   check the last word in the string to see if it's a suffix
#   if it is, store it and put the next-to-last word as the last name.
#   otherwise, store the last word as the last name
#   remove the words from the set as you store them
# If there are more words, check the first word.
# If the first word is a prefix, store it and remove it from the set of words.
#   Otherwise store it as the first name and remove it from the set
# How many words are left? What should you do with them? Fill in the blanks:
# If there is one word left, then ___________________
# If there are two words left, then __________________
````

# Instructions

1. Create a repository for code challenge three
1. Copy the *txt2csv* subtree into the repository and perform your initial commit
1. In the txt2csv folder, run the acceptance tests using the command
    "rspec spec" and watch them succeed or fail.
1. Remove the 'pending' directive from one test at a time. You don't have to take them in order.
1. Write code until that test passes. Make sure you don't break any existing tests.
1. Repeat with each new test, refactoring your code relentlessly to keep it looking slim and simple as you add features. 
1. Only work one test at a time. Only write enough code for that one test to run.
1. When all the tests pass, you are done!

<hr />
Copyright © 2013-2014 Alan Zimmerman <br />
Used by permission by Portland Code School