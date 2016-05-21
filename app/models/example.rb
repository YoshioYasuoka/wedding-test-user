class Example < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness:true
  validates :design, presence: true
  validates :album, presence: true
  validates :pageview, presence: true, numericality: {
            only_integer: true, greater_than_or_equal_to: 0
          }
  validates :like, presence: true, numericality: {
            only_integer: true, greater_than_or_equal_to: 0
          }
      
end
