#! /usr/bin/env ruby


# This script takes a required option
#  -p : find and sort prefixes by frequency of occurances
#  -s : find and sort suffixes by frequency of occurances
#
# It reads a text file from STDIN
# It writes the resulting histogram to STDOUT

case ARGV[0]
  when '-p'
    regular_expression = /^\S*/
  when '-s'
    regular_expression = /\S*$/
  else
    puts "unknown option"
    puts "usage: analyze.rb -p | -s < input_file > output_file"
    exit
end

ARGV.clear # throw away option so we can get to STDIN

histogram = Hash.new(0)

while line = gets
  word = regular_expression.match(line).to_s
  histogram[word.to_sym] += 1
end

histogram = Hash[ histogram.sort_by { |word, count| count }.reverse]
histogram.each { |word, count| puts "#{word} #{count}" }



