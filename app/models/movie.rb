class Movie < ActiveRecord::Base
#attr_accessible :title
#validates :title, presence: true, uniqueness:true
def self.search(query)
where("title like ?", "%#{query}%")
end
belongs_to :user
has_many :reviews
end
