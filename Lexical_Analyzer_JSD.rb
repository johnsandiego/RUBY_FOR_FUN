#!/usr/bin/ruby -w

puts "This is a Lexical Analyzer"
puts "This program will act as a interpreter for strings in a file"

filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}"
#print txt.read

word = txt.read
puts word

word.
