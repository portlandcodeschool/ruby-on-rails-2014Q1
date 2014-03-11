*Portland Code School*

Web Development with Ruby on Rails

#Code Challenge 08

## Overview

Welcome to refactoring. This is a constant task in software development and a large part of your professional life. You will become quick and fearless at refactoring, knowing you are in the right because your tests provide a strong bulwark against mistakes.

### The story so far...

Long ago, you developed some code that parsed strings. You refactored this code to clean up data in a text file and save it in a CSV file. Then you refactored this code so both the string parsing routines and the CSV file could be used in a web application. Now, you take another step to refactor your code to use a database instead of a CSV file. 

Some of these steps where easier that others. Along the way, you made choices about what to preserve and what to change. Each of these choices influenced how hard it was to isolate your refactoring to just one part of the system.

In our last exciting episode, you updated your working Sinatra web application so that it accepted data from a form, stored it in a file, then used the file to retreive information and display it.

In this code challenge, you will swap out the file and insert a database. Depending on how you structured the code, this could either be an easy task or a... uh... opportunity for more refactoring.

### Refactoring tests as you refactor code

At the end of this code challenge, you should have a full suite of tests that include acceptance tests that verify a round-trip of form data to the database and back out to the list and then to details. You should include functional level tests that verify your parsing methods, your form handling, your data displaying, and your database operations. And, of course, you should have a full set of any unit tests needed for methods used by these operations. 

As you re-use code, bring the tests along and update them so that they still run and still verify your code. If you are using an existing routine in a new environment, re-run the tests and make sure they pass to eliminate any translation errors.

As you alter code to work differently, first re-write the tests to expect the new behavior, then code the new behavior. 

And , of course, write new tests to test new code.

### And always... do it in style.

Whatever code you write must adhere to [this style guide](https://github.com/bbatsov/ruby-style-guide) so use [the checker that goes with it](https://github.com/bbatsov/rubocop) as you code.  You must check your code as part of your commit process and either fix all problems or clear your exceptions with me before proceeding. You will have to document your exceptions in your code as comments.

## Object oriented design

Along the way, let's clean up the design a little bit:

### Modularize properly

When you started out, you created procedures to parse strings. Some idiot told you to put all of these in a Parse class but, the more you looked at it, the less sense this made. There wasn't really a need for any objects of class Parse in the architecture. The class was just a convenient way to collect up the string-parsing methods.

It would be better and much more Rubyish to put these methods in a [module](http://ruby-doc.org/core-2.1.0/Module.html).

Learn about modules in Pickaxe Chapter 5. (The old book's material is [here](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html)) Review the introductory TreeHouse videos in the [Methods badge.](http://teamtreehouse.com/library/ruby-foundations#methods)

Then, put the Parse methods in a module and use them in the Sucker class as needed.

### Sucker class

The web app collects suckers, stores them, and then displays them. Clearly, there should be a Sucker class so you can treat the stuff you get, store, and display as objects. It is the "Model" of the Model-View-Controller architecture

The app form collects data and the app creates a sucker. The sucker should know how to clean the strings and store the data fully parsed in some internal data structure that isn't exposed to other parts of the software. Define it in the DataMapper model DSL and hide it from everybody else.

The app stores suckers in a database. This should be a simple ```sucker.save``` instance method (and, if you set things up correctly, should be provided by the DataMapper ORM).

The app gets suckers out of the database. You should use DataMapper methods to ```Sucker.find()``` records. Notice that this is a class method. For example, the sucker we just entered would be ```Sucker.last``` 

The app displays suckers. The Sucker class should be able to recreate strings of various sorts from its internal data structure. Then the app puts these strings in the views as needed using an appropriate hash

### Benefits of OOD

If your code is already structured like this, you'll have a much easier time replacing the persistence layer with a different technology. If your code isn't structured like this, you'll have a concrete example of the simplifying benefits of Object-Oriented Design. A well-structured object-oriented design has simpler interfaces, less code (especially in Ruby) and is easier to maintain because of its encapsulation and modularity.


## Process notes

### Working in parallel

Depending on your team's approach, it might be useful to use branches in your git process. If, for example, you give one team the job of refactoring the front end and the other team of refactoring the backend, they could each branch to their own feature branch and then deliver back to the master branch. You might have a team go off and refactor the Parse class into a module. It all depends on how you want to work.

A couple of tips: Isolate and Integrate

Isolate - Don't change the same thing somebody else is changing. Don't have both teams change the same lines in any given file. In a larger project, you could separate functions into separate files to make this easier.

Integrate - make changes is chunks that others can use immediately. Pull from your teammates frequently. Don't wait to integrate.

## Deadline

Consult with your team and review the work required in your particular project. Send your estimate to your instructor as soon as possible. If your estimate is past next Tuesday at 6pm, let's talk.


## Instructions

Stay in the same teams and repo as now.

Before you change anything, benchmark your current app. Use Google Dev Tools to measure how long your code takes to do the following:

0. Accept a new sucker when your CSV file is empty.
1. Accept a new sucker when your CSV file has 20 lines.
2. Accept a new sucker when your CSV file has 10,000 lines.
3. Display a list of suckers when your CSV file has 20 lines.
4. Display a list of suckers when your CSV file has 10,000 lines.

Keep your acceptance tests. They should always pass as you add, change, or delete code.

Create a Sucker class. Move any sucker-handling code in there. Refactor your tests as you go.

Move the parsing methods to a Parse module.Update your tests to verify that they still work when packaged differently.  Use them in the Sucker class to manage your strings. 

Move the CSV file into a database using the seed routine supplied in the sample app. Examine the seed routine for helpful tips for working with the CSV library.

Replace the CSV file with a SQLite database, interfaced via a DataMapper ORM. Look at the sample app for hints on how to write the Sucker model. Install a SQLite client to watch your code work and aid in debugging.

When your code works, run your benchmarks again (all five cases) and see if there is any change.







<hr />
Copyright © 2014 Alan Zimmerman <br />
Used by permission by Portland Code School

