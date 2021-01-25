GoogleChart::PieChart.new('320x200', "Things I Like To Eat", false) do |pc| 
  pc.data "Broccoli", 30
  pc.data "Pizza", 20
  pc.data "PB&J", 40 
  pc.data "Turnips", 10 
  puts pc.to_url 
end

on