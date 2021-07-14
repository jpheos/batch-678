require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it "can vote if age >= 18" do
      citizen = Citizen.new("John", "DOE", 18)
      expect(citizen.can_vote?).to be_truthy
    end

    it "can not vote if age < 18" do
      citizen = Citizen.new("John", "DOE", 17)
      expect(citizen.can_vote?).to be_falsy
    end
  end

  describe "#full_name?" do
    it "returns first_name + last_name" do
      citizen = Citizen.new("john", "doe", 18)
      expect(citizen.full_name).to eq("John DOE")
    end
  end
end
