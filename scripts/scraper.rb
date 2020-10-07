class String
  def initial
    self[0,1]
  end
end

f.input :color, :as => :select, :collection => Wine.colors.keys.to_a