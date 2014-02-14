Portland Code School
#Code Challenge 04
###Behavior-driven development of field parser and cleaner

In Code Challenge 03, you wrote code to match some tests (and found some bugs in the tests as well!). The code parsed a _name_ field: it took in a text string and broke it into an array of strings so they could be easily inserted into a database.

In Code Challenge 04, you will write your own tests, then write code to make those tests pass. You will also write code to interpret three fields, not just one. The three fields are: phone number, twitter name, and email. 


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

# Specification

Let's look at each of the methods you must write, one for each field, in detail

## Phone number

When we ran 10,000 phone numbers through an analysis program, we found the following patterns. ( This is a histogram. 'd' stands for a digit. All other characters are literal.)

````
ddd-ddd-dddd            1022
(ddd)ddd-dddd           987
d-ddd-ddd-dddd          967
ddd.ddd.dddd            959
ddd.ddd.dddd xddddd     543
ddd-ddd-dddd xdddd      523
d-ddd-ddd-dddd xdddd    515
d-ddd-ddd-dddd xddd     511
ddd-ddd-dddd xddd       510
(ddd)ddd-dddd xdddd     510
d-ddd-ddd-dddd xddddd   505
ddd.ddd.dddd xddd       505
ddd.ddd.dddd xdddd      501
(ddd)ddd-dddd xddddd    500
ddd-ddd-dddd xddddd     475
(ddd)ddd-dddd xddd      467
````

You need to write tests that allow you to build software can interpret all of these patterns, then write code to parse a phone number into the following components:

country_code
area_code
prefix
line
extension

In this example: 1-234-456-7890 x999


*    1   is the country code
*  234   is the area code
*  456   is the prefix
* 7890   is the line
*  999   is the extension

Output the parsed data as an array of strings, just as with the names.

## twitter name

There are two forms:

* @_string_

* _string_

For example, 

* @poohbear

* tigger

Strip the ampersand if present. Output the result as a single element array. (Note that all the parsing methods return an array, even if it's just one element. Why do you think this is?)

## Email

Email takes the form _name_@_domain name_

We don't know if all the email strings are well-formed and we certainly don't know if the addresses are valid. Determining if an email is valid is NOT part of the scope. However, write several tests to return the string, "Not Found" if the email is malformed.

````
@domain.com     -- no name
domain.com      -- no '@' or name
name            -- no '@' or domain
namedomain.com  -- no '@'
````

Return either the email string or the "Not Found" string as a single-element array.


# Coding Instructions


1. Use the same repository as for Code Challenge 03
1. In the txt2csv folder, run the acceptance tests using the command
    "rspec spec" and watch them succeed or fail. All of your current tests should pass.
1. For each of the three additional fields (phone, twitter, email) use BDD to create a parsing method as you did for names, using the guidelines described above.
    1. Create a new test for each possible input (and some impossible ones). Group the tests into files, one for phone, one for twitter, one for email. See the tree diagram below for names
    1. Write code in the Parse class until that test passes. Make sure you don't break any existing tests.
    1. Repeat with each new test, refactoring your code relentlessly to keep it looking slim and simple as you add features. 
    1. Only work one test at a time. Only write enough code for that one test to run.
1. When all the tests pass, you are done!

Begin with your code challenge 03 file & folder structure
Change the repo so it has the following structure:

````
$ tree .
.
└── txt2csv
    ├── README.md
    ├── bin
    │   └── txt2csv
    ├── lib
    │   ├── analyze.rb
    │   └── parse_names.rb         <-- change this name to be meaningful: ("parse.rb")
    └── spec 
        ├── analyze_spec.rb 
        ├── name_parser_spec.rb    <-- change the require
        ├── phone_parser_spec.rb   <-- add this
        ├── twitter_parser_spec.rb <-- add this
        ├── email_parser_spec.rb   <-- add this
        └── spec_helper.rb
````


<hr />
Copyright © 2013-2014 Alan Zimmerman <br />
Used by permission by Portland Code School