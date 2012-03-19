class Product < ActiveRecord::Base
  validates :name, presence:true, length:{maximum:50}
  validates :description, presence:true, length:{minimum:3}
end
