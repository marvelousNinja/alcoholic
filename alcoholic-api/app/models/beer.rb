class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  attr_accessible :name, :manufacturer, :first_brewed_in,
                  :origin_country, :alcohol, :user_id,
                  :reviews_attributes

  accepts_nested_attributes_for :reviews
end
