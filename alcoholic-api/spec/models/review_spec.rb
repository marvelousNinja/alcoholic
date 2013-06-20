require 'spec_helper'

describe Review do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:content).of_type(:text) }
  it { should have_db_column(:score).of_type(:float) }

  it { should have_db_index(:user_id) }
  it { should have_db_index(:beer_id) }

  it { should belong_to(:user) }
  it { should belong_to(:beer) }

  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:score) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:beer_id) }
  it { should allow_mass_assignment_of(:user_id) }

  it { should_not allow_mass_assignment_of(:id) }
end
