require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "validations" do
    it "requires a num between 1 and 5" do
      u = build(:review, {start_count: 8})
      u.valid?
      expect(u.errors).to have_key(:start_count)
    end
    it "start_count needs to be present" do
      u =build(:review, {start_count: nil})
      u.valid?
      expect(u.errors).to have_key(:start_count)
    end
  end
end
