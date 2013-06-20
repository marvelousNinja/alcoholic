class Beer < ActiveRecord::Base
  belongs_to :user

  attr_accessible :name, :manufacturer, :first_brewed_in,
                  :origin_country, :alcohol, :user_id
end
