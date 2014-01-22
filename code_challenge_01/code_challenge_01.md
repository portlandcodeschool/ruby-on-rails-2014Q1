#Code Challenge - Growing Madlibs

In this code challenge, it's not so much *what* you build as *how* you build it. You and a partner will write a very small program that will use many of the concepts you learned last week, but you will do it as if you were writing something much larger. 

* You will write it in increments, starting simple, gradually adding functionality, and refactoring your earlier code as you learn more.
* You will use full version control: working in a shared repository, committing and pushing each increment, and being able at any time to reproduce any earlier version.
* You will use pair programming with one developer "driving" and the other helping, alternating between increments.
* You will keep track of all your time spent on the project and report how many hours you spend.
* You will demo your work for your peers and answer questions about your design choices and construction methods.

Some notes:

* You do not have to complete all increments, but you must be prepared to demo the last increment you completed.

* Along the way, if you and your partner get stuck, ask for help from other teams. It's not a race or a competition. And, if you are asked for help, mentor the people who are asking. Don't just give them your code. See the [article on mentoring](../articles/mentoring.md).

* When you are finished, both you and your partner will have a git repository that tells the story of how you both developed the program and that allows you to go back to earlier commits and reconstruct history.

* This exercise must be performed with a partner. The point of this exercise is not the code - it's the coding. 

* For information about debugging, see [the article on debugging with *pry*](../articles/debugging.md).

**Warning!! Read through this assignment with your partner before you begin work. Since this is the first time you may be doing some of these things, it might be useful to make a copy of the assignment and annotate it with the git commands or ruby syntax you'll want to use for that step. Any time you spend preparing with be saved later.**

#Increment 0 - Setting up the environment

Follow these steps:

1. Verify that both partners are using machines with the same version of Ruby and compatible versions of git.
1. One partner should set up a git repository named "pcs_code_challenge_01" and make sure both partners can use it by cloning it to their local machines. 
1. Add the other partner as a collaborator to the github repo.
1. Create a README.md in the repository and make sure both partners can modify it, commit changes, push to, & pull from the origin to their local repos.

#Increment 1 - Simple string interpolation

1. Choose a driver. Work in their local repository and have them do the typing.
1. Create a file named, "madlibs.rb" in the repo and use it to store the following code.
1. Write a small snippet of ruby code that meets this specification:
	1. It must prompt on the command line using the following text, "Please enter a noun or noun phrase:"
	1. It must accept text from the user, remove leading and trailing whitespace, and store it in a variable.
	1. It must insert the noun or noun phrase in the following sentence template using interpolation.

		*"The (noun or noun phrase) went to sea in a sturdy ship."* 

	1. It must display the resulting sentence to the user and exit.

1. Verify that the code works for a variety of words and phrases.
1. Update *README.md* to document what the program currently is able to do.
1. Commit the changes to *madlibs.rb* and *README.md*.
1. Tag the commit with the tag, "increment_01"
1. Push the changes and the tag to the orgin repo.

#Increment 2 - parts of speech

1. Switch drivers
1. Switch local repositories & pull down the work from the previous increment into a local repository.
1. Modify *madlibs.rb* to meet the following specification:
	1. Write one method that must gather the following parts of speech from the user (each can be a word or phrase):
		* Noun 
		* Adjective
		* Verb
		* Adverb
		* Object
	1. The method must return all of these in a hash where the index is the name of the part of speech, represented as a symbol. For example, *:noun* or *:verb*.

	1. Create a second method that takes the hash as a parameter and has an internal string variable named *template* that contains the following string:

			"The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."

	1. It must replace the parenthetical words in the template with the parts of speech in the hash. For example, it might result in:

			"The large dog suddenly and adroitly had to catch the ball."


	1. It must print out the template and the sentence and exit.

1. As you develop this program, be able to put a breakpoint in the program after the user input has been gathered and display the contents of the hash before continuing with execution.
1. Verify that the code works for a variety of words and phrases.
1. Update *README.md* to document what the program currently is able to do.
1. Commit the changes to *madlibs.rb* and *README.md*.
1. Tag the commit with the tag, "increment_02"
1. Push the changes and the tag to the origin repo.

# Increment 3 - More complexity!

1. Switch drivers
1. Switch local repositories & pull down the work from the previous increment into a local repository.
1. Modify *madlibs.rb* to meet the following specification:
	1. It must gather and store the parts of speech as before.
	1. It must have three sentence templates (one from above and two of your devising), some of which use *all* parts of speech, some of which only use *some* parts of speech (for example, just the *noun* and the *verb*), and it should store these templates in an array.
	1. It must iterate through the array, inserting parts of speech into the templates and displaying them in turn.

1. As you develop this program, be able to put a breakpoint in the program after each sentence is prepared but before it is output and display the sentence before continuing with execution.
1. Verify that the code works for a variety of words and phrases.
1. Update *README.md* to document what the program currently is able to do.
1. Commit the changes to *madlibs.rb* and *README.md*.
1. Tag the commit with the tag, "increment_03"
1. Push the changes and the tag to the orgin repo.

# Increment 4 - Refactor!

1. Switch drivers
1. Switch local repositories & pull down the work from the previous increment into a local repository.
1. Modify *madlibs.rb* to meet the following specification:
  1. Use object-oriented design: 
  	1. Use one object that represents the user interface, named *UI*.  Put the code that prompts, gathers, and stores parts of speech into a method that returns the hash. Name the method "prompt". So. it might work out
  	1. Make SentenceTemplate class, instantiate a bunch of templates, and store them in an array.
  	1. Put the code that inserts parts of speech into a sentence template into its own method in the sentence template object. Name the method "insert". If you are clever, you can write this method so that it doesn't need to know what parts of speech are contained in the hash or used in the template. It will use what is given. It should return a sentence with the parts of speech inserted, ready for printing to the screen.
	1. Use the two classes and their methods to reproduce the exact behavior of the previous increment.

1. As you refactor, make the following decisions:
	1. Where should the array of sentence templates be stored?
	1. How should the array of sentence templates be initialized?
	1. How can you both use idiomatic ruby (knowing what you know so far) and use the minimum amount of code?

1. As you develop this program, be able to put a breakpoint in the program before and after each method is called to verify that it is getting the correct parameters and delivering the correct results.
1. Verify that the code works the same as the previous increment using the same inputs you used to test it last time.
1. Update *README.md* to document what the program currently is able to do.
1. Commit the changes to *madlibs.rb* and *README.md*.
1. Tag the commit with the tag, "increment_04"
1. Push the changes and the tag to the orgin repo.

# Increment 5 - "Can you add this one little last feature before we ship?"

1. Switch drivers
1. Switch local repositories & pull down the work from the previous increment into a local repository.
1. Modify *madlibs.rb* to meet the following specification:
	1. It should prompt the user for a "mode of transportation" by displaying a simple, numbered text menu and having the user choose one of the menu items by entering a number. For example

		    Choose one of the following:

			1. in a boat
			2. on a bus
			3. inside a whale
			4. clinging under a speeding truck

		    by typing the number of your choice: __

	1. Modify the "prompt" method so that it encapsulates the change and hides it from the rest of the program, just adding a new item to the hash
	1. Modify the templates as follows:
		1. Add a new sentence template that uses the new "mode of transportation" phrase. 
		1. Modify one of the old sentence templates to use the new "mode of transportation" phrase. 
		1. Leave two sentence templates untouched.
	1. Modify the "insert" method so that it uses the new templates and new hash. It should produce the same output for untouched templates. If you were clever in the last increment, you should not have to modify this method at all. 

1. As you develop this program, be able to put a breakpoint in the program before and after each method is called to verify that it is getting the correct parameters and delivering the correct results.
1. Verify that the code works the same as the previous increment using the same inputs you used to test it last time. Verify that the new feature works with the new templates and new input.
1. Update *README.md* to document what the program currently is able to do.
1. Commit the changes to *madlibs.rb* and *README.md*.
1. Tag the commit with the tag, "increment_05"
1. Push the changes and the tag to the orgin repo.


# Demo time!!

In the next session, be prepared to present your work with your partner. In particular, be able to:

1. Demonstrate the final form of the program that you were able to complete.
	1. Show the README as an introduction to the program
	1. Run the program using input from the audience
	1. Show the source code and answer audience questions about any part of it
1. Demonstrate your git prowess
	1. Ask the audience for an increment number less than the increment you finished with. 
	1. Set your local repo to that increment
	1. Demo the code as it worked for that increment

Demos always have problems, so it helps to practice the demo with your partner before you have to deliver it for real.

Good luck!

<hr />
Copyright © 2013-2014 Alan Zimmerman <br />
Used by permission by Portland Code School
