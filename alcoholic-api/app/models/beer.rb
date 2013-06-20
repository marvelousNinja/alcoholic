class Beer < ActiveRecord::Base
  attr_accessible :name, :manufacturer, :first_brewed_in, :origin_country, :alcohol
end
