*Portland Code School*

Web Development with Ruby on Rails

#Code Challenge 07

## Overview

This code challenge continues the process of creating a web app with Sinatra. In this challenge, you add persistent data storage to your app, leveraging what you already know about using files.  In the next code challenge, you will replace the file with a simple database and compare the two. 

**Note: Whatever code you write must adhere to [this style guide](https://github.com/bbatsov/ruby-style-guide) so use [the checker that goes with it](https://github.com/bbatsov/rubocop) as you code.  You must check your code as part of your commit process and either fix all problems or clear your exceptions with me before proceeding. You will have to document your exceptions in your code as comments.**

## Deadline
See if your team can deliver this iteration Saturday and be prepared to do a short code walkthrough during class. We want to introduce the last iteration on Saturday and deliver it on the following Thursday.

## Scenario

As before, your specification for this code challenge takes the form of several emails from your project team. Read through them carefully and try and understand what you need to build. There seems to be some dissension in the engineering management about how to best architect this app. Not unusual, but a good developer learns how to keep one's head down and deliver the necessary goods.

Now, back to our story...

### Iteration 3 - File-based persistent storage

--------
**To: Design Team**

**From: Frank**

**Subject: Thanks, Team**

The client loved the demo! Kudos to all of you! You are absolutely fabulous! Happy hour Friday is on me!

After the demo, the client finally specified how they want to be able to get at the data. Get this – they want to use a spreadsheet. They want the list of respondent data to be available in something called a "comma-separated-value (CSV??)" file. They want to be able to open the file in a spreadsheet as well as be able to get to the information through the administrative interface.

At least, I think this is the requirement. By this time, we'd had a snootful of single malts at the after-demo party.  I'm sure all you technical people know what a CSV file is but frankly, I'm in over my head.

Have I told you lately that you're absolutely fabulous?

Ciao Bella!

Frankie.




--------
**To: Design Team**

**From: Emily**

**Subject: Data back-end update - the Embiggening**

Well, as you all know, our so-called guru was in town last night and, in between beers, our new system architect Christophe set our architecture back several centuries.

We are going to use a file-based persistent data storage method. That's right, a file. I don't believe it either. Christophe says it's the easiest way to meet the client's CSV file requirement. Apparently, he's never heard of exporting data from the database. That's right, your eyes are not deceiving you. We're using a file, not a database.

In any case, please implement the following in this iteration while I talk to management.

0. Make sure you create a good, strong baseline with working code, passing tests, and an accurate tag for the previous iteration. We may end up going back to it. I know you all do this anyway, but this time I want you to make sure.

0. The client has supplied a CSV file of customer data. It's called *people.csv* and it's supposedly clean as a whistle -- their crack team of developers apparently created a bunch of software to make sure it's perfect. The field names are in the first row of the data.  It's HUGE, tho, so feel free to trim it to just 20 or so records for the demo.

0. On the listing page, read the file and display its contents as specified. You probably will have to concatenate fields to display it properly on the web page. You may need to play with the headings, too.

0. Close the file in between every access. Remember, HTTP is a stateless prototocol and you have to clean up after yourself on every access.

0. When you display the details for a particular respondent, open the file again, move through it until you find the record, and then display the record.

0. Be sure your display page works if there's no file. 

0. When you get a new form of data via POST, append the new data to the same file. Clean the data up, split it into parts as required by the file format, and append it to the file.

0. Appending the data can be a problem. What if somebody else has the file open (like somebody else is displaying the contents)? We can't fix this right now, but think about what you might be able to do.

0. Use CSV file format and use the CSV library to interact with the file. No reinventing the wheel here, folks.

0.  Make sure your tests verify that the file is being written with correct information and that information is being read from the file and displayed correctly.

I know this sounds crazy from a performance standpoint. Just implement this for me please. I have my reasons. Trust me. And you over-achievers: *Don't* try cache the file data in a data structure (hash, etc) in between accesses. Just go straight to disk and back, opening and closing the file as you go. Cristophe declares that we have to be able to handle huge files and the hardware team hasn't given us enough RAM on the prototype machine to carry that many lines in memory. I know going back and forth to a file will be slow compared to a database. If you are REALLY curious, you can measure just *how* slow it is by timing the various operations using the Chrome Developer Tools. For a *real* fun time, try using the original huge file and see how long it takes to interact with that file or what blows up. 

Maybe we'll get the chance to compare these data to the app's performance using a database later.

Hang in there, team.

Emms

<hr />
Copyright © 2014 Alan Zimmerman <br />
Used by permission by Portland Code School

