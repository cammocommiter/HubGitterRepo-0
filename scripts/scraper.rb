>> foo = [1, 2, 3]
=> [1, 2, 3]
>> goo = [2, 3, 4]
=> [2, 3, 4]
>> foo - goo
=> [1]

# Only run the following code when this file is the main file being run
# instead of having been required or loaded by another file
if __FILE__==$0
  # Find the parent directory of this file and add it to the front
  # of the list of locations to look in when using require
  $:.unshift File.expand_path("../../", __FILE__)  
end
