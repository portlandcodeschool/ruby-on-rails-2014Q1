*Portland Code School*

Web Development with Ruby on Rails

#Week 9

##Overview 

This week we modify our "back end" to use a database instead of a CSV file.

There are a couple of things that you need to come up to speed on:

* [Object relational mapping](http://en.wikipedia.org/wiki/Object-relational_mapping) or ORM, a nice way to store your objects in a database and to simplify your code with method calls instead of SQL statements.
* [The DataMapper gem](http://datamapper.org) - a simple ORM library
* [SQLite](http://www.sqlite.org) - The world's most popular (and most invisible) database engine


# Activities

* Continue Ruby Koans through *at least* #200
* Code Challenge 08. 


# Topics

Here are some introductions to the big three topics this week:

## Object-relational mapping

HTTP is a stateless protocol. Basically, this means it forgets everything in between every transaction.
Up to now, we've stored data two different ways: 

1. In the session, which in basic Sinatra means in a browser cookie. This limits the amount of data you can store to just a few kilobytes.
2. In a CSV file, which for some teams involved converting objects to lines of text so they could be stored in a file, then converting them back to objects. This is awkward and doesn't scale - it gets slower every time you add data. Also, it's not safe for more than one user at a time. If one transaction wants to write to the file while another is writing, too bad. 

It would be easier if we could just store the objects, wouldn't it? Then our code would be simple and object-oriented.

It would be easier if we could use a database, wouldn't it? Then it wouldn't matter how much data we wanted to store, it would still be fast. And databases have features that let them handle lots of requests at once.

The Data Mapper pattern (famously articulated by [Martin Fowler](http://martinfowler.com/eaaCatalog/dataMapper.html) and more often referred to as Object Relational Mapping), is a way of making both of these dreams come true. An ORM is software that manages the CRUD[^1] operations and simple queries by adding methods to your objects. So, if you wanted to save some object called a "sucker", you'd just call

````
sucker.save
````
instead of opening a file for append, converting formats, writing to the file, closing the file, blah, blah, blah.

If you wanted to print the name of the last sucker you added to the database, you'd just call

````
sucker = Sucker.last
puts sucker.name
````
instead of opening a file for read, indexing to the right line in the file, converting formats, reading from the file, closing the file, converting formats,  blah, blah, blah.

An ORM also provides other nifty features. It translates the data types in Ruby to the data types in your database, for one. But, best of all, it provides *migrations*.

**Migrations** are version control for databases. This is such a powerful concept that I laughed with joy the first time I learned about it. A migration includes instructions for the ORM to update the database schema[^2]. As you modify your code (adding objects, modifying objects, removing objects) you write new migrations and the ORM keeps the database in sync with your code. If you have to undo your changes, you "run the migrations in reverse" and the ORM rolls back the database to the earlier schema. Magic!

## DataMapper
[DataMapper](http://datamapper.org) is an ORM gem that is easy to understand. There are several to choose from. Later, in Rails, we'll use the ActiveRecord ORM. By trying out two before you're done, you'll become acquainted with some of the design decisions ORM creators have to make.

The basic sequence for using DataMapper is laid out in your code:
0. Connect up to a database
1. Define your model (your objects)
2. Use DataMapper methods to store, find, and retrieve your objects.

To use DataMapper with SQLite, you need to install two gems

````
gem install 'data_mapper'
gem install 'dm-sqlite-adapter'
`````

See the [example app](sinatra_datamapper_example.md) that shows how to use DataMapper with Sinatra

## SQLite3

SQLite is the world's most popular database engine. It's not particularly powerful, but it is light and file-based. So, you find it in all sorts of applications on all sorts of devices. You do a lot of prototyping of web sites on SQLite. The wonderful thing about using an ORM is your choice of database engine doesn't matter (for simple apps). You just code using the ORM, and the ORM takes care of the database.

Learn more about SQLite at [the project home page](http://www.sqlite.org/about.html). You don't need to learn much about SQLite for this class, but you'll use it for small apps and prototyping throughout during your career.

Get a [simple cross-platform SQLite GUI client](http://sqlitebrowser.sourceforge.net) so you can see what's going on with the database as your app does its thing. Once your app is up and running and DataMapper has created the database file, open it with SQLite Browser to watch the magic.


[^1]:Create, Read, Update, Delete - ~~the building blocks of the universe~~ the basic operations of a database
[^2]:Schema - the plan for a database - definitions of all the tables, attributes, types, etc. 



----
Copyright © 2014 Alan Zimmerman <br />
Used by permission by Portland Code School