{{ site.time | date: '%y' }}

class Hello
  def create_some_state
    @hello = "hello"
  end
end

h = Hello.new
p h.instance_variables 

h.create_some_state
p h.instance_variables

# Output
[]
["@hello"]
