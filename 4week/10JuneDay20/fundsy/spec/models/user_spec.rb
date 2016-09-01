require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "requires a first name" do
      u =  FactoryGirl.build(:user, {first_name: nil})
      u.valid?
      expect(u.errors).to have_key(:first_name)
    end

    it "requires an last name" do
      u =  FactoryGirl.build(:user, {last_name: nil})
      u.valid?
      expect(u.errors).to have_key(:last_name)
    end
    it "requires the valid email" do
      u =  FactoryGirl.build(:user, {email: "I'm an invalid emial"})
      u.valid?
      expect(u.errors).to have_key(:email)
    end
    it "requires the email to be unique" do
      create(:user, email: "tam@codecore.ca")
      u = build(:user, email: "tam@codecore.ca")
      u.valid?
      expect(u.errors).to have_key(:email)
    end
  end
end
