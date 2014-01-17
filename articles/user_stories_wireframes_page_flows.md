*Portland Code School*

# Specifying a web application <br /> *With user stories, wireframes, and page flow diagrams.*

Web applications, like all products, exist to help people reach their goals. There is no other reason.

## User stories

It starts with user stories. For the purposes of this capstone, we can limit our user stories to just those high-level stories that have a clear user goal and a clear value that results from interacting with the site.

User stories in the capstone have a specific format in this exact structure:

*. Who is using the feature (AKA the *role*), starting with the key phrase "As a"
*. The reason why the feature exists (AKA the *goal* or the business value), starting with the key phrase "In order to"
*. The outcome they expect, starting with the key phrase "I want"

Sometimes the role is first, some times the goal is. Sometimes the goal is hard for customers to articulate, but it is essential for understanding.

Here are some examples:

    As a salesperson, 
    in order to find the customers that need attention, 
    I want to search for my customers by their first and last names.


    As a user closing the application, 
    in order to make fewer mistakes that cause loss of work,
    I want to be prompted to save if I have made any change in my data since the last save.

### Scenarios

Each user story breaks down into *scenarios* which are the specific steps the user takes to accomplish the user story. In this capstone, we have a specific way of writing scenarios. There are three types of steps: 1) Givens, 2) Whens, and 3) Thens.

0. *Givens* describe what things look like before the user does something. These are preconditions.
0. *Whens* describe the key action that the user does
0. *Thens* describe how the system responds.
0. *Ands* or *buts* extend the first three.

Here's a big meta-example of a product feature descibed as a user story which is then detailed in a scenario:

    Feature: Some terse yet descriptive text of what is desired

      In order to realize a named business value
      As an explicit system actor
      I want to gain some beneficial outcome which furthers the goal
     
      This is a short paragraph that adds useful
      details in some way or another that people 
      reviewing the feature or implementing the 
      code will find useful
     
      Scenario: Some determinable business situation
        Given some precondition
          And some other precondition
        When some action by the actor
          And some other action
          And yet another action
        Then some testable outcome is achieved
          And something else we can check happens too


You use user stories and scenarios to help you design the wireframes and page flows through the application. Each user story involves a one or more pages.

### Acceptance tests

You also use the user stories and scenarios to define your *acceptance tests*. An acceptance test takes the perspective of the user, manipulates your application, and then verifies that the application produces the desired output. If you use a tool like Cucumber you can directly translate the scenarios that implement a user story into rspec tests. You use capybara or selenium-web driver to simulate the users interaction with the web browser as they use your application. (For an old fart like me, this "specifications are tests" thing is a simply *amazing*, *incredible* aspect of modern software development. Take my word for it because there's no way to describe living in a cave and eating dirt to somebody who grew up with houses, running water and refrigerators.)

### No plan survives contact with the customer

Only write enough user stories to sketch the minimum required product features for the client and get started. Don't get bogged down over-specifying the product. You will learn much more about what the product is as you build it and let customers use it.

### Don't out-run your supply lines

On the other hand, don't code *ANYTHING* that doesn't have a user story. Don't code *ANYTHING* that isn't mapped out in a scenario. If you are practicing TDD with aceptance tests, don't code anything unless it makes one of your acceptance tests (based on your scenarios) pass.

It's biblical:

*Story* begat *Scenarios* which begat *Tests* which begat *Code*

And Matz saw that it was good.

## Wireframes

Wireframes are low fidelity mockups of what your pages will look like. By low fidelity, we mean simple rectangles instead of fully styled forms and fields, gibberish instead of real text, and rough controls.  We avoid those unnecessary details like color palette, detailed styling and other things that are very important to the feel of the website, but do not influence it's functionality. We're focusing first on functionality.

Usually there is one wireframe per page. You may have more than one wireframe for a particular page in the following situations:

* If the page is a responsive design where the layout of the page changes based on the width of the screen and the viewport

* If the page layout changes in response to Ajax transactions where new page elementsi are added or page elements are obscured based on user input

You can create wireframes with almost any tool, including paper and pencil. You can use any number of graphical applications. In this capstone, you can use post-its on a whiteboard. Just take a picture to use in your capstone proposal.

When you get faster and more facile with HTML and CSS, you can create wireframes in code, like the professionals we've interviewed. 

### Speed is of the essence

The important thing is to do them quickly, using them as sketches to facilitate the creative process. As you do scenarious, wireframes, and page flows, you learn about the shape of your design and your design changes quickly. You need to be able to create new wireframes just as quickly.  Some times the best thing to do is to sit down with the client, a ream of blank paper, and a bunch of pencils then just scribble until you understand the client and you are both happy with the general idea.

In this capstone, don't use a fancy-pants graphical editor. That takes too much time.

## Page flow diagrams

It used to be that you saw a lot of site maps: hierarchical organizational charts that showed how the pages were connected to each other by simple hierarchical hyperlinks. Each page appeared once and there was only one path into a page and a simple paths out of the page to its child pages. Those days are gone.

Page flow diagrams reflect the actions a user takes to accomplish a particular goal. They map more closely to user stories and scenarios. There is at least one page flow for every user story where the user performs certain actions on the site and achieves some desired result.

As a result, some pages appear more than once in the entire set of diagrams if they are involved with more than one user story. This is somewhat inefficient from the standpoint of how many page symbols you use on a particular diagram, but that is far outweighed by the clarity you game in showing what the customer must do to get value from your product.

It also gives you some immediate, visual indication of how many clicks and operations are required to accomplish a meaningful task and get useful value out of your site. You need to minimize the amount of effort a customer takes to accomplish their goal.

For simple examples of wireframes and page flows, see the Sinatra code challenge.

<hr />
Copyright © 2013 Alan Zimmerman <br />
Used by permission by Portland Code School