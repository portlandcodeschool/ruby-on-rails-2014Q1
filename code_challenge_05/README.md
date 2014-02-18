Portland Code School
#Code Challenge 05
### Command line scripting

## Overview

This code challenge is going to be complicated. You are going to do several things:

1. Continue in the txt2csv repository you used in Code Challenge 05. If you are unhappy with your code compared to another pair, feel free to borrow theirs and provide attribution in the comments where you got it.
1. Call your string parsing methods from previous code challenges from one over-all method that calls these parsing methods. As you refactor your methods to work in the new environment, you need to also refactor your unit tests to remain current and to ensure that your methods still work as well as they did before.
1. That overall method will read a line, break it into fields, parse each field by calling one of the methods you have already created, then output the parsed line as comma-separated values.
1. Use the *thor* gem to control your code using a standard command line interface
1. Your script will have two commands: *analyze* and *convert*
    1. The *analyze* command will analyze the incoming file for name prefixes and name suffixes.
    1. The *convert* command will use edited prefix and suffix files to convert the incoming file into a nice, clean CSV file
1. The output of your scripts MUST use the CSV standard library to make sure that the CSV file has correctly-formatted column headings and column values. This format will be used in the next code challenge


## Command line interface.

Use the *thor* gem to create a command line interface for your script. Use the demo program shown in class as an example scaffold to modify.

1. Name your program "txt2csv"

1. Create two commands, "analyze" and "convert"

1. The "analyze" command takes these options:

    * -p (--prefix) OR -s (--suffix) to tell it whether to analyze for prefixes or suffixes
    * -i (--input) to identify an input file 
    * -o (--output) to identify the output histogram file.

1. The "convert" command takes these options:

    * -p (--prefix) to identify the prefix file
    * -s (--suffix) to identify the suffix file
    * -i (--input)  to identify an input file 
    * -o (--output) to identify the output histogram file.

    Notice how the two command take similar options but the options have different behavior. How do you handle this in "thor?"

1. Your command line interface should provide comprehensive usage help and documentation 



## "analyze" file processing

Customer data looks like this:

*name_string* \t *phone_string* \t *twitter_handle* \t *email_address*

The four fields are separated by a tab character. Here is some pseudocode to help you get started on the overall "analyze" loop:

````
# Get the input filename from the command line interface, and open the file for reading
# Get the output filename from the command line interface and open a histogram file for writing
# Get the prefix or suffix suffix option from the command line interface
# For each line in the incoming file,
#   Split the line on tabs
#   Hand the name field to the analyze method
#   collect the reverse-sorted histogram returned from the method
#   output the histogram to the output file.
# Close all open files
````

After you get the prefix and suffix histogram files from the analyze command, manually edit them to remove any proper names. Leave only the prefixes and suffixes.

The command line interface for this operation looks like this:

````
txt2csv analyze {--name_prefix | -p} -i textfile.txt -o prefix_histogram.txt
txt2csv analyze {--name_suffix | -s} -i textfile.txt -o suffix_histogram.txt
````


## "convert" file processing

Customer data looks like this:

*name_string* \t *phone_string* \t *twitter_handle* \t *email_address*

The four fields are separated by a tab character. Here is some pseudocode to help you get started on the overall "convert" loop:

````
# Get the input filename from the command line interface, and open the file for reading
# Get the prefix and suffix histogram files from the command line interface and open them.
# Read the histogram files to create prefix and suffix words arrays. 
# 
# Get the output filename from the command line interface and open a CSV file for writing
# Write the column headers to the file
# For each line in the incoming file,
#   Split the line on tabs,
#   Hand each field to the appropriate method. Use the word arrays for the name parser.
#   collect the arrays returned from the methods
#   output the concatenated arrays as a string to the CSV file
# Close all open files
````
The command line interface for the convert command is as follows:

````
txt2csv convert -p prefixfile.txt -s suffixfile.txt -i textfile.txt -o namefile.csv
````

## Testing

Be sure to write unit tests for the overall method that parses the incoming line and outputs the CSV line. Keep your unit tests for the other methods up to date as you modify them to work in the new environment.

For acceptance testing, see below.

## Process Learning

It is very important that you become aware of your own coding velocity and practice making estimates. These are both difficult, so the sooner you start, the better.

In this assignment, HOW you code is as important as WHAT you code. In addition to the coding instructions at the bottom of the page, please also perform these process instructions.

1. Review the code challenge with your new partner. 

1. Discuss your abilities, your familiarity with the problem to be solved, and how long it has taken you to accomplish earlier challenges.

2. Discuss what has worked and what hasn't in previous pairings, and agree on expectations for how you want to pair on this challenge.

3. Look at your calendar for the coming week and estimate how much time you can devote to classwork.

4. Estimate when your pair will finish this code challenge. Be careful, it's bigger than ever before. Email your instructor with this estimate before 10am, the day after tomorrow.

1. Your instructor will collect all the pair estimates and establish a "drop dead" deadline for the class, at which time we will release the next code challenge.

Can your pair complete this in a week? What would it take in terms of effort to do it as fast as possible?

# Things you will need to research to be successful

1. File operations. See the Pickaxe sections: 

    *PART IV, Ruby Library Reference, Chapter 27, Built-in Classes and Modules, Class: File* and the documentation at http://www.ruby-doc.org/core-2.1.0/File.html

    See also the relevant Treehouse videos: http://teamtreehouse.com/library/ruby-foundations/ruby-core/io

1. The _thor_ gem. Start here: http://whatisthor.com
1. How to isolate internal classes and methods from the user interface details. Your parsing methods were getting input strings from STDIN last week. They are getting them from files now. In two weeks, they'll be getting them from a web application. How can you refactor them now so they don't care where the input comes from?


# Above and beyond

The attentive student will notice there are no acceptance testing requirements for this assignment. Shame on your instructor! The fact of the matter is, testing thor-based command line interfaces is intricate -- here's a blog post to give you some idea: http://www.arailsdemo.com/posts/57

*I will buy lunch* for the first pair that meets all the above specifications AND that can write a complete set of rspec-based acceptance tests for the txt2csv command line interface as specified above.

What's more, the skeptical student will notice that there are no error handling requirements for this assignment. Oh the horrible ignominy you must suffer to have such an incompetent instructor!

*I will buy lunch* for any pair that that meets all the above specifications (not including the tests) AND can deliver the following:

1. For each method, document what can go wrong (corrupted files, etc) using comments, then have the method return an error or throw an exception if it encounters problems.
1. For each method, check any methods it calls for returned errors and handle those errors or catch those exceptions correctly.
1. For the entire script, gracefully handle errors and exceptions  and return an appropriate error code to the shell

Finally, *I will buy dinner* for any pair that does all three:

1. Makes the script work as specified
1. Has complete acceptance tests for the command line interface
1. Has robust error handling

Number 1 is required. Lunch for (1) plus (2) *or* (3).  Dinner for all three.

Good luck!


<hr />
Copyright © 2013-2014 Alan Zimmerman <br />
Used by permission by Portland Code School