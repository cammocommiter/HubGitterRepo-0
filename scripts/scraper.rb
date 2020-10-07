render_404
class Foo
  def bar
    'Hello'
  end
end 

class ExtendedFoo < Foo
  def bar
    super + ' World'
  end
end

ExtendedFoo.new.bar # => 'Hello World'
