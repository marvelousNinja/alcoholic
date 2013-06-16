require 'spec_helper'

describe Beer do
  it { should have_db_column(:id).of_type(:integer) }
  it { should have_db_column(:name).of_type(:string) }

  it { should allow_mass_assignment_of(:name) }
  it { should_not allow_mass_assignment_of(:id) }
end
