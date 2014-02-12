txt2csv
=======

Code challenge fodder involving txt and csv file operations

## Phase 1 - analyze text file to determine common words

Foci: 
* using STDIN/STDOUT for file operations
* coding to unit tests
* using a hash to create a histogram

tags:
* **phase1-setup**: documentation and tests for phase 1
* **phase1-solution**: sample solution code

spec:

command line interface:


````bash
ruby analyze.rb < textfile.txt > histogram.txt
````

In the above example, I use the angle brackets it indicate [redirection](http://en.wikipedia.org/wiki/Redirection_(computing)) of STDIN and STDOUT. STDIN is given the file *textfile.txt* and STDOUT is redirected to the file *histogram.txt*.




## Phase 2 - prepare parsing method 

Foci: 
* coding to unit tests
* regular expressions

tags:
* **phase2-setup**: documentation and tests for phase 2
* **phase2-solution**: sample solution code

spec:

ruby method:

````ruby
csv_from_text (raw_string, prefixes_array, suffixes_array) # -> name_csv_string
````

## Phase 3 - parse text file to CSV file: names

Foci:
* using command line interface based on _thor_
* routing to method invocation based on commands and options
* CSV standard library

spec:

command line interface:

````bash
txt2csv {-h | --help}
txt2csv help analyze
txt2csv help parse

txt2csv analyze {--name_prefix | -p} -i textfile.txt [-o histogram.txt]
txt2csv analyze {--name_suffix | -s} -i textfile.txt [-o histogram.txt]
txt2csv parse --name-only {--prefixes | -p} prefixfile.txt {--suffixes | -s} suffixfile.txt -i textfile.txt [-o namefile.csv]
````
Notes on [command line interface specifications](http://en.wikipedia.org/wiki/Command-line_interface):

  Built-in usage help and man pages commonly employ a small syntax to describe the valid command form:

  * angle brackets for required parameters: ping \<hostname\>
  * square brackets for optional parameters: mkdir [-p] \<dirname\>
  * ellipses for repeated items: cp \<source1\> [source2...] \<dest\>
  * vertical bars for choice of items: netstat {-t|-u}

This phase incorporats the [thor](https://github.com/erikhuda/thor) gem. While this is many things including a rake replacement and generator framework, we just use it to easily map a command line onto our methods. See [the intro](http://whatisthor.com/). 

tags:
* **phase3-setup**: documentation and tests for phase 3
* **phase3-solution**: sample solution code

## Phase 4 - parse text file to CSV file: email, twitter, phone number

Foci:
* more regular expressions for validation & cleanup
* routing to method invocation based on command line options
* CSV standard library

tags:
* **phase4-setup**: documentation and tests for phase 4
* **phase4-solution**: sample solution code

spec:

ruby method:

````ruby
csv_from_text (raw_string, prefixes_array, suffixes_array) # -> name_email_twitter_phone_csv_string
````

command line interface:

````bash
txt2csv {-h | --help}
txt2csv help analyze
txt2csv help parse

txt2csv analyze --prefix -i textfile.txt [-o histogram.txt]
txt2csv analyze --suffix -i textfile.txt [-o histogram.txt]
txt2csv parse {--name-only    | -n}  -i textfile.txt [-o namefile.csv]
txt2csv parse {--phone-only   | -p}  -i textfile.txt [-o phonefile.csv]
txt2csv parse {--email-only   | -e}  -i textfile.txt [-o emailfile.csv]
txt2csv parse {--twitter-only | -t}  -i textfile.txt [-o twitterfile.csv]
txt2csv parse -i textfile.txt [-o allfile.csv]
````

