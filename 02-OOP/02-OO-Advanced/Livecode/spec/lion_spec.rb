require_relative '../lion'

describe 'Lion' do
  it "is an animal" do
    lion = Lion.new("simba")
    expect(lion).to be_an(Animal)
  end

  describe '#eat' do
    it "return the name" do
      lion = Lion.new("Simba")
      result = lion.eat("gazelle")
      expect(result).to eq("Simba EATS a gazelle. Law of the Jungle!")
    end
  end

  describe "#talk" do
    it do
      lion = Lion.new("Simba")
      expect(lion.talk).to eq("Simba roars" )
    end
    it do
      lion = Lion.new("Nala")
      expect(lion.talk).to eq("Nala roars" )
    end
  end
end
