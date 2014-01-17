Portland Code School
--------
#Debugging with *Pry*

Software is hard. Difficult to understand. One of the reasons for this is software is hard to see in operation. So, we use an interactive shell like *irb*, the interactive ruby shell, to talk to ruby and play around. We use the ruby debugger to stop programs and find out what they are doing by displaying data structures

IDE's like RubyMine have built-in debuggers that provide all sorts of nifty features, but they aren't always available. Lucky for us, there are a couple of gems out there that provide a wonderfully rich environment to see your code in operation.

First, we're going to use [*pry*](http://pryrepl.org) as an upgrade to *irb*. Then, we'll use a pry plugin to replace the debugger.

#Introduction to debugging

For this introduction, we will focus on just a few operations:

Controlling execution

* Stopping execution at a particular line ("breakpoints")
* Stepping through a program, line by line ("single stepping")
* Continuing execution from the current line

Observing data

* Displaying data structures and objects

Debugging as described here isn't the only way to get information about what your code is doing. Some programmers put *puts* or *printf* statements in strategic locations so the code can display values as it executed. I prefer not to do this because the console is not available in all situations. Other programmers perform additional logging at the DEBUG level, which is better. But there's a place for debugging live code during development and when drilling down to the exact problem when killing bugs

##Controlling execution

The first thing is to stop and smell the roses. We need a way to stop program execution and watch it happen.

###Breakpoints

A *breakpoint* is a marker that you place on or just before a specific line in your program. Then you start the program. As the program executes, when it reaches that line the program, the debugger stops the program and prompts you. When execution reaches that line of the program, the debugger halts. The line that has the breakpoint is not executed.From this point, you can examine the variables and state of the program, and you can begin single stepping to see how your program is behaving.

With some debuggers you can watch variables and "break," or stop execution, when the variable gets a particular value. We'll cover that in a later article.

###Single Stepping

You *step* a program by just executing one line at a time. Then, after you execute the line, you can again examine variables to understand how the program is behaving. There are typically at least two choices:

0. "step" or "step into" - which executes the current line and then stops on the line after. If the current line is a method call, it performs the call and then stops on the first line inside the method. This lets you watch how the method works, line by line.

0. "next" or "step over" - which also executes the current line and then stops on the line after. However, if the current line is a method call, it calls the method, lets it run to completion, and then stops on the first line after the method call. This lets you save time if you already know the method is working.

### Continuing execution

After you are satisfied with your single stepping, the *continue* command resumes execution at normal speed. 


#Introduction to Pry

Start with the introductory screencast at the [pry screencasts page](http://pryrepl.org/screencasts.html)

#Installing Pry & plugin, then preparing your code

	$ gem install pry
	Fetching: coderay-1.0.9.gem (100%)
	Successfully installed coderay-1.0.9
	Fetching: slop-3.4.6.gem (100%)
	Successfully installed slop-3.4.6
	Fetching: method_source-0.8.2.gem (100%)
	Successfully installed method_source-0.8.2
	Fetching: pry-0.9.12.2.gem (100%)
	Successfully installed pry-0.9.12.2
	4 gems installed

For ruby version 1.9. and above:

	$ gem install pry-debugger
	Fetching: columnize-0.3.6.gem (100%)
	Successfully installed columnize-0.3.6
	Fetching: debugger-ruby_core_source-1.2.3.gem (100%)
	Successfully installed debugger-ruby_core_source-1.2.3
	Fetching: debugger-linecache-1.2.0.gem (100%)
	Successfully installed debugger-linecache-1.2.0
	Fetching: debugger-1.6.2.gem (100%)
	Building native extensions.  This could take a while...
	Successfully installed debugger-1.6.2
	Fetching: pry-debugger-0.2.2.gem (100%)
	Successfully installed pry-debugger-0.2.2
	5 gems installed

For ruby version 2.0, we use a plugin that brings the pry-debugger up to date. Hopefully we'll be able to remove this step later.

	$ gem install byebug
	Fetching: byebug-2.2.2.gem (100%)
	Building native extensions.  This could take a while...
	Successfully installed byebug-2.2.2
	1 gem installed

	$ gem install pry-byebug
	Fetching: pry-byebug-1.2.0.gem (100%)
	Successfully installed pry-byebug-1.2.0
	1 gem installed

In your code, add two things:

0. Put the line

		require 'pry'

at the start of the file being debugged

0. Put the line

		binding.pry

before the line you want to stop at. This is how we identify our first breakpoint. Once in pry, you can identify other breakpoints.

For example:
~~~~ruby
def insert (parts_of_speech)
	sentence = @template
	binding.pry # execution will drop into pry at this line
	parts_of_speech.each do |part, phrase|
		regular_expression = "\(#{part.to_s}\)"
		sentence.sub!(regular_expression, phrase) 
	end
	return sentence
end
~~~~
Run your code and the "binding.pry" line invokes pry. Now, it's like having *irb* on steroids to examine your code, variables and objects.

For example, here's a short little session that stops inside a method and examines two variables, a string and a hash:
~~~~ruby
$ ruby madlibs.rb
# ....lines of output omitted for clarity... 

From: /Users/zim/Dropbox/pcs/ruby-on-rails-2013Q3/temp/madlibs.rb @ line 48 SentenceTemplate#insert:

    45: def insert (parts_of_speech)
    46: 	# go through the hash and, for each part of speech, substitute each phrase into the template
    47: 	sentence = @template
 => 48: 	binding.pry # execution will drop into pry at this line
    49: 	parts_of_speech.each do |part, phrase|
    50: 		regular_expression = "\(#{part.to_s}\)"
    51: 		sentence.sub!(regular_expression, phrase)
    52: 	end
    53: 	return sentence
    54: end

[1] pry(#<SentenceTemplate>)>
[2] pry(#<SentenceTemplate>)> p sentence
"The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."
=> "The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."
[3] pry(#<SentenceTemplate>)> p parts_of_speech;
{:noun=>"n", :verb=>"v", :adjective=>"ad", :adverb=>"av", :object=>"o", :mode=>"inside a whale"}
[4] pry(#<SentenceTemplate>)>
~~~~

Note how pry tells you 

0. What file & method you are in (look at the first line)
0. What line you are at (look for the hashrocket to the left of the line numbers)
0. What class context you are in (look at the prompt)

Like irb, pry lets you print out values of your variables to examine how your program is behaving.

While within pry, you can use the following commands to control execution (from the [pry debugger docs](https://github.com/nixme/pry-debugger))

* **step or s:** Step execution into the next line or method. Takes an optional numeric argument to step multiple times.
* **next or n:** Step over to the next line within the same frame. Also takes an optional numeric argument to step multiple lines.
* **finish or f:** Execute until current stack frame returns.
* **continue or c (or exit):** Continue program execution and end the Pry session.

There's lots more to debugging and lots more to pry, but this will get you started.


<hr />
Copyright © 2013 Alan Zimmerman

Used by permission by Portland Code School