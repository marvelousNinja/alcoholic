require 'spec_helper'

describe User do
  it { should have_db_column(:email).of_type(:string).with_options(null: false, default: '') }
  it { should have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: '') }
  it { should have_db_column(:reset_password_token).of_type(:string) }
  it { should have_db_column(:reset_password_sent_at).of_type(:datetime) }
  it { should have_db_column(:remember_created_at).of_type(:datetime) }
  it { should have_db_column(:sign_in_count).of_type(:integer).with_options(default: 0) }
  it { should have_db_column(:current_sign_in_at).of_type(:datetime) }
  it { should have_db_column(:last_sign_in_at).of_type(:datetime) }
  it { should have_db_column(:current_sign_in_ip).of_type(:string) }
  it { should have_db_column(:last_sign_in_ip).of_type(:string) }

  it { should have_db_index(:email).unique(true) }
  it { should have_db_index(:reset_password_token).unique(true) }

  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:email) }
  it { should allow_mass_assignment_of(:password) }
  it { should allow_mass_assignment_of(:password_confirmation) }
  it { should allow_mass_assignment_of(:remember_me) }

  it { should_not allow_mass_assignment_of(:encrypted_password) }
  it { should_not allow_mass_assignment_of(:reset_password_token) }
  it { should_not allow_mass_assignment_of(:reset_password_sent_at) }
  it { should_not allow_mass_assignment_of(:remember_created_at) }
  it { should_not allow_mass_assignment_of(:sign_in_count) }
  it { should_not allow_mass_assignment_of(:current_sign_in_at) }
  it { should_not allow_mass_assignment_of(:last_sign_in_at) }
  it { should_not allow_mass_assignment_of(:current_sign_in_ip) }
  it { should_not allow_mass_assignment_of(:last_sign_in_ip) }

  it { should have_many(:beers) }
end
