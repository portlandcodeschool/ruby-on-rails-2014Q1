*Portland Code School*

Web Development with Ruby on Rails

#Week 7

##Overview 

This week we do our first web application.

At its most basic, a Sinatra application simply attaches a Ruby block to a particular HTTP request. When a browser sends a request to a particular URL with a particular HTTP verb, Sinatra runs the code in the associated block. Easy peasy, lemon squeezy.  But to understand how this works at a deeper level, you have to understand four things first:

0. **How HTTP works.** The basic conversation between a browser and a web application is simple, but it's important to know the details if you are going to make your web app work.
1. **A simple way to arrange your URLs: REST.** Once you understand the role of URLs in web applications, you need to decide how to use them. Representational State Transfer is a simple but powerful way to design your URLs.
2. **The Sinatra web framework.** At its core, Sinatra is very simple. However, you will need to read ALL of the Sinatra README page to complete the Code Challenges. In particular, you will have to learn how to test Sinatra applications.
3. **HTML Forms** are the most basic way to send data from the user, via the browser, to the web app.

### Oh, and one more thing

This class isn't about HTML and CSS. However, you will have to use HTML and CSS (and embedded Ruby - ERB) to create web page templates (known as "views"). Let me know if you need remedial help here.

# Activities

* Continue Ruby Koans through *at least* #100
* Read selected topics in HTTP, Sinatra (see below)
* Watch screencasts in REST, HTML Forms, Sinatra, Chrome Developer Tools (see below)
* AFTER you have reviewed all the materials, start the next Code Challenge. 

NOTE: In previous classes, I've had students really flounder on the Code Challenges in this sequence. When I investigated, it turned out they hadn't done the reading. Hadn't even watched the screencasts. I know: crazy, huh? DON'T start coding until you've done your homework.



# Topics

## The Hypertext Transport Protocol (HTTP)

HTTP tutorial:
* [Part 1](http://dev.tutsplus.com/tutorials/http-the-protocol-every-web-developer-must-know-part-1--net-31177) - up through "Using HTTP in Web Frameworks and Libraries" - we'll cover the rest in our Sinatra materials  
* [Part 2](http://dev.tutsplus.com/tutorials/http-the-protocol-every-web-developer-must-know-part-2--net-31155) - up through "Identification and Authentication" - the rest is optional.

[Very comprehensive HTTP Tutorial](http://dev.tutsplus.com/series/http-succinctly--net-33683) - for the intensely curious - optional

##  REST - a lightweight but powerful way to design web APIs

* [Short HTTP and REST Tutorial](http://dev.tutsplus.com/tutorials/a-beginners-introduction-to-http-and-rest--net-16340) - some repetition and an introduction to REST, Try to ignore the PHP examples... even the author says, "PHP, although designed for the web, is probably not the best language to use when working in a REST way"

* [Longer REST Tutorial](http://www.restapitutorial.com/index.html) - there's a lot here including some tips and links to lots of resources
  
## Sinatra

* [Introductory Screencast](http://screencasts.org/episodes/introduction-to-sinatra) - uses HAML instead of ERB, but quick

* [The Sinatra Website](http://www.sinatrarb.com) - comprehensive but short so read the whole thing at least once

* [Build Podcast on Sinatra](http://build-podcast.com/sinatra/) - Nice coverage but she moves quick, making and correcting some mistakes along the way.

* [Beginner Tutorial](http://net.tutsplus.com/tutorials/ruby/singing-with-sinatra/) - nice intro but goes deeper than we need.

* [Sinatra Recipes](http://recipes.sinatrarb.com) - in particular, [testing with MiniTest](http://recipes.sinatrarb.com/p/testing/minitest?#article).

## HTML Forms

* [Treehouse Forms Screencasts](http://teamtreehouse.com/library/websites/html/forms) - a basic general purpose introduction (or review for some folks) for HTML5 forms

* [W3Schools Section on Forms](http://www.w3schools.com/html/html_forms.asp) - Information, examples, and reference documentation for HTML forms.



## Tools

We'll use Chrome to tickle our web application with HTTP transfers. Here are introductory materials:

* [Developer Tools Screencasts](http://discover-devtools.codeschool.com) - in particular, the [network tools](http://discover-devtools.codeschool.com/chapters/5)


----
Copyright © 2014 Alan Zimmerman <br />
Used by permission by Portland Code School