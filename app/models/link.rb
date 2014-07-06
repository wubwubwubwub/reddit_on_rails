class Link < ActiveRecord::Base
  belongs_to :user
  #attr_accessor :url, :title <-- this is used primarily for anything that is NOT a database column
  
end
