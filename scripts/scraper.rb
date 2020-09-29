def self.method_name
end

>> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].each_slice(4) {|a| p a}
[1, 2, 3, 4]
[5, 6, 7, 8]
[9, 10, 11, 12]
