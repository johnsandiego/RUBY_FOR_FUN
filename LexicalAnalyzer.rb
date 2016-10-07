#!/usr/bin/ruby -w


filename = ARGV.first
txt = open(filename)

puts "Here's your file #{filename}:"
#print txt.read

storage = []
file = txt.read

puts "file has #{file}"
token1 = file.split("")

puts token1.join


def lexDatabase(lex)
	
	cal = lex.join
	if cal.include? "print"
		puts "print is an Identifier"
	elsif cal.include? """"
		puts "String"
	elsif cal.include? "+"
		puts "Addition"
	elsif lex == "-"
		puts "Subtraction"
	elsif lex == "*"
		puts "Multiplication"
	elsif  lex == "/"
		puts "Division"
	else 
		puts "Nothing in storage"
	end
end

token1.each do |token|

	storage.push(token)
	if token == " "
		puts "Space"
		lexDatabase(storage)
		storage = []
		puts "storage has #{storage}"
	end

end

