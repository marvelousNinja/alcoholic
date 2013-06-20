class Beer < ActiveRecord::Base
  attr_accessible :name, :manufacturer, :first_brewed_in, :origin_country, :alcohol

  belongs_to :user
end
