class Post < ActiveRecord::Base
  belongs_to :user, touch: true
  has_many :comments
end
