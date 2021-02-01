str = 'this is a multi-line string'\
  ' using implicit concatenation'\
  ' to prevent spare \n\'s'

=> "this is a multi-line string using implicit concatenation to eliminate spare
\\n's"

array = [1, 2, 3, 4, 5, 6]
array.each { |x| puts x }
