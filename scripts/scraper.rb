class Array
  def same_values?
    self.uniq.length == 1
  end
end


[1, 1, 1, 1].same_values?
[1, 2, 3, 4].same_values?

git://github.com/Dakuan/client_side_validations.git