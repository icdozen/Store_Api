require 'spec_helper'
describe "when email is not present" do
  before { @user.email = " " }
  it { should_not be_valid }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_confirmation_of(:password) }
  it { should allow_value('example@domain.com').for(:email) }
end
describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
