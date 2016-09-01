require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "needs the first name to be present" do
      u = build(:user, {first_name: nil})
      u.valid?
      expect(u.errors).to have_key(:first_name)
    end
    it "needs teh last name to be present" do
      u = build(:user, {last_name: nil})
      u.valid?
      expect(u.errors).to have_key(:last_name)
    end
    it "needs the email to be unique" do
      create(:user, {email: "m@m.m"})
      u = build(:user, {email: "m@m.m"})
      u.valid?
      expect(u.errors).to have_key(:email)
    end
    it "returns full_name successfullly" do
      u = build(:user)
      u.valid?
      expect(u.full_name).to eq("#{u.first_name.capitalize} #{u.last_name.capitalize}")
    end
  end

end
