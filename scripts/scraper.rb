word = "Now is the,time for'all good people"
word.split(/[\s,']/)
 => ["Now", "is", "the", "time", "for", "all", "good", "people"] 

if __FILE__ == $0
  # this library may be run as a standalone script
end
