class Product < ActiveRecord::Base
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end
