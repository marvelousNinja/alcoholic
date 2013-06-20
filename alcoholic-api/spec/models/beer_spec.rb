require 'spec_helper'

describe Beer do
  it { should have_db_column(:id).of_type(:integer) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:manufacturer).of_type(:string) }
  it { should have_db_column(:first_brewed_in).of_type(:date) }
  it { should have_db_column(:origin_country).of_type(:string) }
  it { should have_db_column(:alcohol).of_type(:float) }

  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:manufacturer) }
  it { should allow_mass_assignment_of(:first_brewed_in) }
  it { should allow_mass_assignment_of(:origin_country) }
  it { should allow_mass_assignment_of(:alcohol) }
  it { should allow_mass_assignment_of(:user_id) }
  it { should allow_mass_assignment_of(:reviews_attributes) }

  it { should_not allow_mass_assignment_of(:id) }

  it { should accept_nested_attributes_for(:reviews) }

  it { should belong_to(:user) }
  it { should have_many(:reviews) }
end
