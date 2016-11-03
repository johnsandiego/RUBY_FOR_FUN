#!/usr/bin/ruby -w
#Author: John San Diego
#COS 301: Programming Language
#Project 2: Write a Lexical Analyzer

puts "what word do you want to highlight: "
highlight = gets.chomp
puts highlight
txt = open('C:\Users\SanDiego\htmlTest.html')

htmlHighlighter = "<span style=" + %q("background-color: blue; color: white") + ">"
htmlHighlighter2 = "</span>"
file = txt.read

#puts "file has #{file}"
token1 = file.split(" ")
$temp = ""
#puts token1
token1.each do |token|
	#puts token
	#puts highlight
	if 	((token.include?(highlight) &&
		(!token.include? "<body>") && (!token.include? "</body>") && 
		(!token.include? "<div") && (!token.include? "<h1>") && 
		(!token.include? "<a href=") && (!token.include? "</a>") && (!token.include? "</h1>") && 
		(!token.include? "</div") && (!token.include? "<ul>") &&
		(!token.include? "<li>") && (!token.include? "</li>") && 
		(!token.include? "</ul>") && (!token.include? "<h2>") && 
		(!token.include? "</h2>") && (!token.include? "<p>") &&
		(!token.include? "</p>") && (!token.include? "<div>") &&
		(!token.include? "<meta") && (!token.include? "content=")&&
		(!token.include? "<title>") && (!token.include? "<div") && 
		(!token.include? "<!DOCTYPE") && (!token.include? "link=") && 
		(!token.include? "<!--") && 
		(!token.include? "name=") && (!token.include? "id=") &&
		(!token.include? "target=")))

		token.prepend(htmlHighlighter)
		token << htmlHighlighter2 + " "
	
		#puts htmlHighlighter
		#puts token
		
	end
	$temp << token + " "
	
end
puts $temp
File.write('C:\Users\SanDiego\newHTMLtest.html',$temp )
