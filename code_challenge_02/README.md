Portland Code School
#Code Challenge 02
###Behavior-driven development of histogram script

Code challenge 02 is the beginning of a sequence of code challenges. Before we are done, we will create a command line utility that analyzes a text file for data patterns, then cleans the data to prepare it for input to a database. This is a very common activity when you're converting legacy systems to database-based systems

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
    │   └── analyze.rb
    └── spec
        ├── analyze_spec.rb
        └── spec_helper.rb
````
The *bin* folder is where the command line executable lives. This isn't functional yet and it won't be until a code challenge or two from now.

The *lib* folder is where you will put your first Ruby routine, *analyze.rb*.

The *spec* folder contains the specification for *analyze.rb* written for the test utility *rspec*.

## Why are we doing this?

In order to clean up the data, we have to understand a little bit more about what's in it. You eventually will be getting a gigantic file full of names, twitter handles, email addresses, and phone numbers. This data will be "dirty." Names will be in all sorts of forms and formats; you will need to write code that can understand them and put them into the kind of well-defined buckets that a database needs to function. This code will be simpler if you can give it some idea of which words are used as prefixes and which words are suffixes. Then, your future code can just figure out which parts of the names are first name, middle name, and last name.

So, in this code challenge, you will write a small routine that looks for patterns in the data. When you are done, you will be able to analyze a file of 5000 names and get an output like this:

    Miss 384
    Ms. 380
    Mr. 378
    Mrs. 373
    Dr. 350
    Delphine 7
    Maximillia 6
    Chester 5
    Kailey 5
    ...

Clearly, the most commonly-occurring words are prefixes, not first names.

# The Specification

Let's take a closer look at the specification of the analyze script. This will help you understand how to write the code for this challenge. It's written in the *rspec* domain-specific language (DSL). This is a form of Ruby where methods have been defined in such a way to make statements appear more like English.

Here's the whole file:
````ruby
require "spec_helper"

# First, define methods used to create the test files.
# We create the test files here
#   1) so that the test can be run on its own and
#   2) so the contents of the file are clear

def create_test_file (filename)
  File.open(filename, "w") do |f|
    5.times  {f.puts "Mr. Jones"}
    6.times  {f.puts "Miss Smith"}
    4.times  {f.puts "Mrs. Wesson"}
    10.times {f.puts "Dr. Roberts"}
    1.times  {f.puts "Jane Wintermute"}
    2.times  {f.puts "Frank Franklin"}
    3.times  {f.puts "Darleen Washington"}
 end
end

def create_prefix_expected_file (filename)
  # Note sort order - by count, not by word
  File.open(filename, "w") do |f|
    f.puts "Dr. 10"
    f.puts "Miss 6"
    f.puts "Mr. 5"
    f.puts "Mrs. 4"
    f.puts "Darleen 3"
    f.puts "Frank 2"
    f.puts "Jane 1"
  end
end

def create_suffix_expected_file (filename)
  File.open(filename, "w") do |f|
    f.puts "Roberts 10"
    f.puts "Smith 6"
    f.puts "Jones 5"
    f.puts "Wesson 4"
    f.puts "Washington 3"
    f.puts "Franklin 2"
    f.puts "Wintermute 1"
  end
end

describe "analyze" do

  # Set up the files need for the specifications
  # put them down in the spec folder so they don't clutter the project root folder

  before(:all) do
    create_test_file 'spec/testfile.txt'
    create_prefix_expected_file 'spec/expected_prefixes.txt'
    create_suffix_expected_file 'spec/expected_suffixes.txt'
  end

  # clean up after ourselves

  after(:all) do
    File.delete 'spec/testfile.txt'
    File.delete 'spec/expected_prefixes.txt'
    File.delete 'spec/expected_suffixes.txt'
    File.delete 'spec/histogram.txt'
  end

  # specify what the options and STDIN and STDOUT are supposed to do

  it "reads a file and prints a hash of prefixes when given the -p option" do
    `ruby lib/analyze.rb -p <spec/testfile.txt >spec/histogram.txt`
    IO.read('spec/histogram.txt').should == IO.read('spec/expected_prefixes.txt')
  end

  it "reads a file and prints a hash of suffixes when given the -s option" do
    `ruby lib/analyze.rb -s <spec/testfile.txt >spec/histogram.txt`
    IO.read('spec/histogram.txt').should == IO.read('spec/expected_suffixes.txt')
  end
end

````

## Discussion

Skip down to the line that reads,

    it "reads a file and prints a hash of prefixes when given the -p option" do

This is the first specification. It states what the code is supposed to do. Now, look at the line right after it. It looks like this:

    `ruby lib/analyze.rb -p <spec/testfile.txt >spec/histogram.txt`

This specifies how the script is supposed to be used. But it does more than that -- it actually uses the script and then determines if the script is behaving correctly. It becomes an *acceptance test*. When it passes, then you know the script meets its specification.

The backtick-enclosed string (`) runs the string as a command out in a shell, just like in one of your terminal shells. It runs Ruby, and hands it the *analyzed.rb* file that is sitting in the *lib* directory. It sets an option (-p) to tell the script to look for prefixes. It redirects STDIN from the *spec/testfile.txt* file and redirects STDOUT to the *spec/histogram.txt* file.

What do these files look like on the inside? For that, you can read the methods that are up earlier in the specification file. There are three methods that create the files and they are run before all the tests. This happens in the "before" block:

````ruby
 before(:all) do
    create_test_file 'spec/testfile.txt'
    create_prefix_expected_file 'spec/expected_prefixes.txt'
    create_suffix_expected_file 'spec/expected_suffixes.txt'
  end
````
*before* is a rspec method that makes up part of its DSL.

Take a minute to read the methods. You'll see that the test file includes a bunch of names like:

    Mr. Jones
    Miss Smith
    Mrs. Wesson
    Dr. Roberts
    Miss Smith
    Jane Wintermute
    Mrs. Wesson
    Frank Franklin

Most of them repeat a bunch of times. We use a method to create the file so we know exactly what to expect (and to document the file). By creating the files on the fly, we make these tests independent - they make sure that they create any data they need when they need it.

When in the *prefix mode* (as indicated by -p), the code is supposed to read these input lines from the file, extract the first word in each line, and then count how many times that first word appears in the file. It should output the count in the form of a "histogram", sorted from the most frequent word down to the least frequent word. 

The method that creates the expected file shows that it should look like this:

    Dr. 10
    Miss 6
    Mr. 5
    Mrs. 4
    Darleen 3
    Frank 2
    Jane 1

This means the script found the string "Dr." 10 times in the file, the string "Miss" 6 times, etc.

Once the application has analyzed the input file and created a histogram file, the specification goes from describing what should happen to ensuring that it actually *does* happen. It compares what the application created against its expected file. It uses the following line:

    IO.read('spec/histogram.txt').should == IO.read('spec/expected_prefixes.txt')

Read this as, "When I use the IO class to read to *spec/histogram.txt* file, it should be the same as when I use the IO class to read the *spec/expected_prefixes.txt* file."  Like all tests, the specification is simply comparing what it got to what it expected. If this expectation is met, the test passes.

As you read through the materials on testing and view the screencasts on rspec, you will get information on what the rest of the specification file is doing.


# Ruby language elements you will find useful

1. Using the ARGV array to read command line script options
1. Using regular expressions to find either the first or last word in a string
1. Storing regular expressions for use later
1. Reading from STDIN a line at a time in a loop
1. Counting how many times a word occurs using a hash 
1. Sorting a hash by value
1. Reverse sorting a hash by value
1. Writing a hash to STDOUT a line at a time

# Pseudocode to get you started

Here's some pseudocode (and a snippet) to get you started for the routine:

````ruby
# Read the command line argument and set up for either hunting prefixes or suffixes, like this:
case ARGV[0]
  when '-p'
    # set up some regular expression for prefixes
  when '-s'
    # set up some regular expression for suffixes
  else
    puts "unknown option"
    puts "usage: analyze.rb -p | -s < input_file > output_file"
    exit
end

# throw away the command line option in ARGV so we can get to STDIN

# go through STDIN line by line
#   use the regular expression to find the right word
#   count the word using a hash

# after you've read all the lines, sort the hash so the most frequent words are first

# write the hash to STDIN
````

# Instructions

1. Create a repository for code challenge two
1. Copy the *txt2csv* subtree into the repository and perform your initial commit
1. Install the rspec gem
1. In the txt2csv folder, run the acceptance tests using the command
    "rspec spec/analyze.rb" and watch them fail.
1. Write code until the tests pass. :)

<hr />
Copyright © 2013-2014 Alan Zimmerman <br />
Used by permission by Portland Code School