class LineItem < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :meet
  
end
