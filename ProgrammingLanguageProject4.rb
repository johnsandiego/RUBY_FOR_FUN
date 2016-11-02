#!/usr/bin/ruby -w
#Author: John San Diego
#COS 301: Programming Language
#Project 2: Write a Lexical Analyzer
#
$keyword = ""
$hightlight = ""
class LexicalAnalyzer
	def Openfile
	filename = ARGV.first
	txt = open(filename)

	puts "Here's your file #{filename}:"
	#print txt.read

	
	file = txt.read

	#puts "file has #{file}"
	token1 = file.split("  ")
	#puts token1
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

puts "Find wat word:"
$keyword = gets.chomp
$hightlight = "<span style=" + "background-color: blue; color: white" + ">" + "#{$keyword}" + "</span>"
puts $hightlight


lexer.each do |token|
	if token.include? '<body>'
		if token.include? 'meta charset="UTF-8"/>'
			if token.include? '<p>'
				f = token
				s = f.to_s
				#puts s
			end
			
			File.write('C:\Users\johnp\newhtml.html', token)
			puts token
		end	
	end
	
	
end



