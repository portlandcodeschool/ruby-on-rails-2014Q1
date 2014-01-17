#Introduction

Together, a programming ecosystem includes the language, libraries, communities, and tools.

It all starts with the language, of course. We are primarily concerned with Ruby but we will look at the characteristics of all programming languages. This way you'll get a foundation of concepts that will work no matter what language your next project requires.

Every language comes with libraries. Libraries are pre-written software that does common, useful things. There's no need for you to rewrite code if someone has already written it for you. Some languages have very large libraries and learning the library is a larger task than learning the language itself.

Programming also involves development tools. Some of these tools are generic and can be used for any language, some tools are unique to a particular kind of language or even a specific language. It is important to be able to pick up and use new tools quickly, switching tools to those appropriate for a particular language and a particular job. Don't get stuck!

Finally, every programming language ecosystem has communities: groups of people who are actively involved with that language. You can learn from this community and you can participate, contributing your efforts and your expertise. In some cases, you can actually contact and interact with the authors of the language, whether they are in a particular vendor, like Microsoft, or if they are in an open source language like Ruby.

Let's go through each of these in turn.

#The language
Every programming language has the following aspects:

##Syntax

You can think of syntax as the words and symbols that make up the language itself and the rules that you must use in order to create meaningful statements and programs. Syntax includes a language's operands, operators, expressions, statements, and rules like, “Every statement must end with a semicolon.” Some languages syntaxes borrow liberally from the languages that came before. Ruby borrowed from Java and C++ and mixed in some Perl which borrowed from C and shell scripting languages. C# borrowed from Java which borrowed from C++ which extended C which was based on B which was an answer to Fortran. (http://en.wikipedia.org/wiki/Syntax_(programming_languages))

##Semantics

You can think of semantics as what the various language parts actually do or what the program means. For example, the word “while”, when combined with a boolean expression and a block of statements, means “Do this block of statements as long as this boolean expression is true.” You can make a program with correct syntax but bad semantics -- that is a program that compiles but doesn't do the right thing.

##Idioms

Every language has enough flexibility that you can write the same algorithm several different ways. However, for every language, there are some ways that are more natural than others. When you use the language “idiomatically”, you take advantage of these natural ways of using the language. As in human languages like English, idioms help people who are in the "in-crowd" understand each other quickly. Surfers all understand what "gnarly" means even if the rest of us don't. Surfers who frequent a particular beach probably have a very particular idea of what gnarly waves on that particular beach look and feel like. Idiomatic code was often written by an experienced programmer who understood the language. More importantly, the language is often optimized so that idiomatic usage is the most efficient.

##Style

In any particular shop or on any particular team, there is usually a style guide that gives you guidance on how to make choices that are typically left up to the individual programmer. For example, whether you put the closing curly brace of a block of statements on a line by itself or not. While these seemingly minor issues don't matter to the language, writing programs in a consistent style that is common among your team really helps the team understand each other's code. And it helps you when you come back to your own code later.

##How to learn a language: Read, read, read. Write, write, write. Rinse, repeat.

Learning a programming language starts out with memorization, proceeds with lots and lots of practice, and eventually leads to an understanding of subtle nuances by studying the code of experienced programmers.

###Syntax & Semantics
Memorize syntax & semantics by reading manuals, reading code, and writing as many programs as you can. There is no substitute for knowing the syntax of the language without having to look it up. I say "memorize", but I really mean is "develop intuition about". In this instance, intuition is the kind of subconscious memory that allows you to apply what you know to a new situation. You may be able to recite how to write a particular language construct and describe what it does, but you need to get to the point where you are able to solve new problems by the appropriate application of that feature of the language. The only way to do this is to write as much code as possible and solve as many different problems as possible. There is no shortcut for time and hands-on experience.

###Idioms
Learn idioms by reading advanced textbooks in a particular language (Like "Eloquent Ruby", for example, for rubyists) and by reading the code of established masters. Dig into the source code of libraries to see how professional authors and successful teams write code.

###Style
Be prepared to adapt to any particular style guide that you are given. Let go of your own preferences when it comes to style issues (unless you happen to be the person who is asked to write the style guide, in which case, be firm but forgiving). On your first day on the job or project, ask, “Where is the style guide?” Then learn it and use it. If possible, use a lint tool that checks your use of the style guide and helps you learn it quicker. We'll talk more about lint later on in the Tools section.

#Libraries
A library is a collection of pre-written software written in the language. It is provided in the form of functions you can call or objects you can use that provide useful information and functionality. You could write the software yourself using the basic language, but it is much more convenient to use a library.

In general, there are two kinds of libraries: 1) the standard library, which is included with the language, and 2) contributed libraries, which are provided either under commercial or open source licenses. In the case of JavaScript, the standard library includes functions that manipulate the document object model and interact with browser events. A very common contributed JavaScript library is called JQuery, which provides additional, very convenient mechanisms for doing animations and other manipulations as well as a simplified, powerful syntax for dealing with the document object model.

Some libraries are huge, involving thousands and thousands of functions and objects. Libraries for Java and C# are among the largest. In many cases, it is a better use of your time to learn how to find code in the libraries rather than to write your own code. This is because the library code has been debugged and used by hundreds of other people and so it's quality is likely to be higher than code you write. Libraries are also often more efficient than code written by someone who is new to the problem, again because so many people use them and are concerned with making them good. After you look in the libraries, if there is nothing that will meet your needs, code it yourself.

##How to learn libraries: Get good at using on-line code browsers and reference tools

Learn the standard library along with the syntax and semantics of the language. Most language textbooks also include documentation on the standard library. When you are first starting out, it is not even necessary to understand where the language leaves off and the standard library picks up.

Most libraries have an on-line place for you to quickly browse and search library documentation and source code. Get good at using these on-line reference tools. At some point, probably fairly soon in your programming career, you will need to browse the source code for the library so that you can read exactly what a particular function does. There is no substitute for reading the code. It is also a good way for you to learn idiomatic usage and good style.

#Communities
This is a wonderful time to be learning and working as a programmer. There are hundreds and thousands of people out there who really want to make it easy for you to be successful with any given language.

##Blogs

Search for the answer to any problem, and you will probably find a dozen blog articles where people with exactly the same problem have published their solutions. Over time, you'll find a group who consistently give you good, useful answers. However, be careful because the profession moves forward quickly and an answer given four years ago may be out of date.

##On-line communities

Websites like Stack overflow.com are meeting places for like-minded individuals – your peers. Not only are there people providing answers to your questions, but those answers are being reviewed and voted up or down depending on how useful they are. This kind of peer review and curation increases the quality of the information.

##Local communities

In every major city, there are people that get together every month to help each other learn the language, use the language for fun or business, or just to hack and drink beer. This is lots of fun, educational, and helps you build the social network that is critical in today's job market. The people you hang out with one month might be the people you work with the next. In Portland, you can find a lot of these groups and events on http://calagator.org/ and meetup.org (http://www.meetup.com/find/?offset=0&psize=32&currentpage=1&categories=34&keywords=&radius=10&userFreeform=Portland%2C+OR&mcId=&mcName=Portland%2C+OR). Don't wait to go until you are actually coding - check these out right away while you are a student.

##Language experts

Many languages have certification programs where people can earn letters after their name that help you trust their advice. Languages created by commercial companies have support staff. Go where these people hang out and learn from them. Microsoft, in particular, is very good at creating and fostering a community of practice to help people be successful with their languages. It's called MSDN Community (http://msdn.microsoft.com/en-us/aa497440.aspx) Other languages have mailing lists and forums.

##Library authors

In many cases, the authors of a contributed library participate in on-line discussions about that library and respond directly to problem reports and usage issues. When you are starting out, you probably won't have occasion to participate in these discussions, but following along and reading them is a great way to learn.

##Language authors and experts

For open source languages like Perl and Ruby, you can listen in and participate in the discussions that the people who are actually writing the language have with other programmers. Again, when you are just starting out, these discussions are obtuse and arcane and of little use to the beginner. However, when you become skilled and are using all of the features of the language in depth, you may even find errors and obscure usage questions. Having access to the language authors becomes invaluable.

#How to take advantage and participate in on-line communities

Becoming a welcome and worthwhile member of an online community just takes paying attention to some simple guidelines.

##Start With Searches
Plug your questions and your error messages into Bing or Google and browse the results. Sometimes it's helpful to use a search string that looks like the beginning of the answer. For example, “The best way to write a for loop is...”. Then the search engine will find answers to the question. Over time, you'll find sites that have more and better quality answers for the kind of thing you are interested in.

##Lurk
It's a good idea to listen in on any discussions before you start asking questions. Very often, somebody has already asked the question you have and it has been answered and discussed at length. Use the search facilities of the community website to find these answers so you don't waste people's time by asking the the same question over again.

##Do Your Homework
If you want to ask a question that is about how the language might handle a particular situation, try it out yourself a couple of different ways before you ask the question of the community. Make sure you have thoroughly explored the situation before you ask for help. But, don't beat your head against the wall.

##Read The Manual
Back when we had paper manuals, the ones on the desks of good programmers were dog eared and worn out, scribbled and highlighted. It is very embarrassing to ask a question that is already answered in the documentation. People will call you out on that every time.

##Provide Background And Context Information
If you are stuck and your code is not doing what you expect, you've read the manual, and you can't find any other instances of this problem anywhere else on the community site, then ask a question. But also provide information about your code that will help people answer the question. Sometimes this includes expected output and actual output, sometimes this includes a stack trace, sometimes this includes the data that causes the problem. However, remember that all of these people are as busy as you are, so sometimes it is helpful to simplify your code down to just that code fragment that doesn't work. Try to find the simplest example that's still exhibits the problem. That way, you can provide background and context, data and output, and not overwhelmed people. Remember, you're asking people to donate their time and expertise just to help you.

##Build And Protect Your Reputation
If you follow these guidelines, do your homework, ask interesting questions, and avoid wasting people's time, you will be a welcome member in any community. As your expertise grows, you'll be solving more and more interesting problems that help other people. People will be searching for and using your questions and answers. Over time, you'll get the reputation of being a hard working, inquisitive person. If on the other hand, you waste people's time, you'll get a reputation of being a poser, someone who is not willing to put in the work, and people will stop answering your questions and helping you.

And finally,

##Pay It Forward
As your expertise grows, help people who are in the same position you were when you were learning. Teaching is often the best way of learning. Give back to the community that you benefited from. We all stand on each other's shoulders. Give somebody else a boost.

#Tools
The programming ecosystem contains a number of essential tools. Some of these tools can be used for any language, like text editors, some of these tools exist in every language but are customized for a particular language, like compilers, and some are unique to a particular language, like SQL query builders. Here's an introduction to the important ones:

##Text editor

As we have discussed, a text editor that understands the syntax of your language is very helpful. Even the simplest programming editor, like Notepad++, is able to highlight and style many different languages. There is no reason to use a text editor that does not have this functionality. As you become more practiced at programming you may find that there are things you do all the time, over and over. Good text editors allow you to optimize and script these things to make your life less tedious. The best text editors have a vibrant community of their own who are already contributing these scripts and snippets.

##Compiler and assembler

As we learned in the last module, all high-level languages are compiled or interpreted down to assembler code, which is then assembled into machine code. Various languages do this differently. C and C++ use compilers. Java compiles down to an platform-independent byte code before becoming assembled. Interpreted languages like Perl and Ruby are compiled and assembled (or “interpreted”) on the fly. Each language has its own compiler or interpreter. Some languages have several, each of which has its own advantages.

An added benefit from the programmer's perspective is that the compiler or interpreter does a syntax check for you and tells you if you wrote the program expressions and statements correctly. Your program may not do what you intended it to do, but at least it is written in legal syntax.

##Lint checker

Some languages have very verbose and helpful compilers that give you a lot of guidance when you are writing code. Some, like JavaScript, do not. For these, you can do syntax checking with “lint” programs. In the same way that a sticky roller picks lint off your clothes, these tools pick typos and other syntax errors out of your code.

In our assignment, you are encouraged to use JShint to check your JavaScript for syntax errors before attempting to run it. http://www.jshint.com/

##Debugger

A debugger is a software tool that allows you to watch your software program as it executes. It lets you see the values of the variables, it lets you step through your program statement by statement, and it allows you to stop your program at “breakpoints.” Breakpoints are either particular places in your code or particular values for your variables. If you know your program gets into trouble in certain situations, you can breakpoint on those situations, stop your code, and see what's going on before it makes errors.


##Testing frameworks

Most modern languages include testing tools as part of the standard library. These are functions or objects that exercise your code and verify that it meets its specifications. You write tests defining what you expect your program to do, then you program to make those tests pass. Testing can occur at the most basic level, verifying that your objects respond to inputs correctly, at an intermediate level, verifying that your objects integrate well and work together as a system, or from the customer's perspective, verifying that the complete system operates the way the customer specified. Further, there are tools that allow you to run these tests in an organized and consistent manner and report the results to the other members of the team, a process called "continuous integration."

##Source control

Source control is a way of tracking all of the changes that happen to all the lines of text in all the text files in a software project. Good source control means that you never lose anything. Good source control allows members of a team to collaborate efficiently while allowing each team member to try out and experiment different ideas without affecting the rest of the team. It's like rock climbing with pitons and a sturdy rope. If you make a mistake, you know you can always fall back to a known safe situation. You cannot be a professional programmer without being competent at source control.

##Bug tracking or change management

There are always a lot of changes requested to a software system while it's being developed and after it is deployed. All of these change requests can have different priorities or different people on the team. Finally, different change requests may be released at different times. It can get complex pretty quickly, even on a one person team. Change management tools help you keep track of all of these to-do items and help you know exactly what you have done to the code in any given release.

##Database client

Many programs store data in databases, using libraries to handle the details. You control databases either through a command line text interface or through a GUI client. Good database clients let you graphically create SQL queries or generate Entity Relationship Diagrams of your database.

##Integrated Development Environments

An integrated development environment is a software tool that combines many or all of the other tools.

For example, most IDE's include an editor, a debugger, and very tight integrations with compilers, documentation, source control systems, database clients, and testing frameworks. A good IDE makes it very simple to create code, verify that it works, and release it very quickly. The promise of an IDE is faster, more productive programming.

However, because they contain so much functionality, they can be difficult to learn. They have lots of buttons, menus, icons, windows, widgets, and gadgets that are all very useful to an experienced programmer, but are only so much visual noise and distraction to a beginner. Also, again because they include so many functions, they can be very large programs that require lots of memory and processing power to operate efficiently. When deployed on a computer without enough horsepower, they can be slow and annoying. In every company I've worked at, the programmers get the newest, most powerful computers.

As you gain experience in programming, you should take the time to learn how to use IDE's. You will talk to many journeymen programmers who eschew IDE's, claiming that all they need is a decent editor and compiler. You will talk to old dog programmers in grey beards and suspenders that won't touch the things. To each his own, I suppose, but on the other hand there are people who create furniture and kitchen cabinetry armed with nothing more than a saw, a chisel, and a hammer. Some folks only use a pen knife. However, in most professional cabinet shops, they take advantage of the latest innovations in power tools. It doesn't make you less of a craftsman to use modern tools.

Well-respected IDE's include Visual Studio, NetBeans, Eclipse, Komodo, and many, many others. Most are either free or available in free versions. Look for student and non-profit discounts.

##How to learn tools: Use them.

For about 15 years, I learned and evaluated development tools as a profession. We'd identify a category of tool, select a couple dozen and evaluate them, bring in a handful and learn how to use them, run pilot programs with them, and then teach them to other people in the compay. Here's what I learned about learning tools:

First, I'm the kind of person who at least scans the online help before starting to use a new application. Don't wait until you are stuck. Think of it like reading a travel website or watching GlobeTrekker TV before you get on the plane. Not only do you get an idea of what the program is for, but sometimes you even get excited about what it might be able to do for you.
Second, have in mind what the program is supposed to do for you. Does it change files? Does it track things like a database? Does it execute programs in some new and different way? Thinking about what it does helps you learn how it works.
Finally, think in patterns. There are patterns in all applications. There's always a way to bring in and save files. There's always a way to see things. There's always a way to manipulate things. A particular operating system imposes standard affordances and constraints on the application user interface. You've used softeware for years; it's likely this software works somewhat the same way. And, again, there's always online help.
Don't be afraid of using new and different tools. Somebody wrote them so you can understand them. Consider the time you spend learning tools to be an investment in your craft and your career.