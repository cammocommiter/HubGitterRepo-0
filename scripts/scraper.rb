query = { 
  "method"     => "neworder",
  "nonce"      => 1404996028,
  "order_type" => "buy",
  "quantity"   => 1,
  "rate"       => 1
}
headers = { 
  "key"  => "8781974720909019987",
  "sign" => "0a3888ac7f8e411ad73a0a503c55db70a291bfb9f9a47147d5200882674f717f6ede475669f3453" 
}

HTTParty.post(
  "https://www.acb.com/api/v2/market/LTC_BTC/", 
  :query => query,
  :headers => headers
)

class Car < ActiveRecord::Base
   belongs_to :vendor
   belongs_to :company, :class_name => :Vendor,:foreign_key => "vendor_id"
end
