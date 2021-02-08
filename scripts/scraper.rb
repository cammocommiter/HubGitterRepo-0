#!/usr/bin/ruby1.8

require 'pp'
mooth = [
  "booth", "month", "mooch", "morth",
  "mouth", "mowth", "sooth", "tooth"
]
PP.pp(mooth, $>, 40)
# => ["booth",
# =>  "month",
# =>  "mooch",
# =>  "morth",
# =>  "mouth",
# =>  "mowth",
# =>  "sooth",
# =>  "tooth"]
PP.pp(mooth, $>, 79)
# => ["booth", "month", "mooch", "morth", "mouth", "mowth", "sooth", "tooth"]

class Api::V1::SessionsController < Devise::SessionsController  
  def create  
    respond_to do |format|  
      format.html { super }  
      format.json {  
        warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")  
        render :status => 200, :json => { :error => "Success" }  
      }  
    end  
  end  
  def destroy  
    super  
  end  
end  
