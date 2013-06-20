class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer

  attr_accessible :content, :score, :title
end
