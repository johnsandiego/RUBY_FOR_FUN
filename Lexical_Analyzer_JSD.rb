#!/usr/bin/ruby -w

#global variables
$charClass = 0
$lexemme = [100]
$nextChar = ''
$lexLen = 0
$token = 0
$nextToken = 0

#Character Classes
$LETTER = 0
$DIGIT = 1
$UNKNOWN = 99

#Token Codes
$INT_LIT = 10
$IDENT = 11
$ASSIGN_OP = 20
$ADD_OP = 21
$SUB_OP = 22
$MULT_OP = 23
$DIV_OP = 24
$LEFT_PAREN = 25
$RIGHT_PAREN = 26

$lexemme[0] = 45

puts $lexemme[0]

filename = ARGV.first
txt = open(filename)

puts "Here's your file #{filename}:"
#print txt.read

	
file = txt.read

puts "file has #{file}"
token1 = file.split("")

def getChar()
	nextChar = token1
	if nextChar != EOF
		if letter?(nextChar)
			charClass = LETTER
		elsif numeric?(nextChar)
			charClass = DIGIT
		else charClass = UNKNOWN
		end
		else
		charClass = EOF
	end
end
def addChar()
	
end
def getNoBlanks()

end
def lex()

end
def lookUp()

end
def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end
def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

	
