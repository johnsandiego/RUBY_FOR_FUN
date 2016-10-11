#!/usr/bin/ruby -w
#Author: John San Diego
#COS 301: Programming Language
#Project 2: Write a Lexical Analyzer
#

storage = []
class LexicalAnalyzer
	def Openfile
	filename = ARGV.first
	txt = open(filename)

	puts "Here's your file #{filename}:"
	#print txt.read

	
	file = txt.read

	puts "file has #{file}"
	token1 = file.split(" ")

	return token1
	end
end

def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end
def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

c = LexicalAnalyzer.new
lexer = c.Openfile()
puts "lexeme: #{lexer.join}"
lexer.each do |token|
	
	storage.push(token)
	if letter?(token)
		f = token.split''
		f.each do |s|
			if s.include? "("
				puts "LEFT_PAREN: #{s}"
			end
			if s.include? ")"
				puts "RIGHT_PAREN: #{s}"
			end
		end
		f.delete("(")
		f.delete(")")
		puts "ID: #{f.join}"
	elsif numeric?(token)
		f = token.split''
		f.each do |s|
			if s.include? ")"
				puts "RIGHT_PAREN: #{s}"
			end
		end
		f.delete(")")
		puts "NUMBER: #{f.join}"
	elsif token.include? "+"
		puts "ADD_OP: #{token}"
	elsif token.include? "-"
		print "SUB_OP: #{token}"
	elsif token.include? "*"
		print "MULT_OP: #{token}"
	elsif token.include? "/"
		puts "DIV_OP: #{token}"
	elsif token.include? " "
		puts "Whitespace"
	elsif token.include? "="
		puts "ASSIGN_OP: #{token}"
	elsif token.include? "!"
		f = token.split''
		f.each do |s|
			if s.include? "("
				puts "LEFT_PAREN: #{s}"
			end
			if s.include? ")"
				puts "RIGHT_PAREN: #{s}"
			end
		end
		f.delete(")")
		f.delete("(")
		puts "NOT_OP: #{f.join}"
	elsif token.include? "&"
		puts "AND_OP: #{token}"
	elsif token.include? "<"
		puts "LESS_OP: #{token}"
	elsif token.include? ">"
		puts "GREATER_OP: #{token}"
	elsif token.include? "|"
		puts "OR_OP: #{token}"
	elsif token.include? "<>"
		puts "COMPARE_OP: #{token}"
	elsif token.include? "("
		puts "LEFT_PAREN: #{token}"
	elsif token.include? ")"
		puts "RIGHT_PAREN: #{token}"
	end
end
