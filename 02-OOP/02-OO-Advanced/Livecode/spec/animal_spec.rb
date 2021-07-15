require_relative '../animal'

describe 'Animal' do
  describe '#name' do
    it "return the name" do
      animal = Animal.new("toto")
      expect(animal.name).to eq("toto")
    end
  end

  describe '#eat' do
    it do
      animal = Animal.new("Timon")
      result = animal.eat("scorpion")
      expect(result).to eq("Timon EATS a scorpion")
    end
  end

   describe '.phyla' do
    it "four item" do
      expect(Animal.phyla).to eq(%w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata])
    end
  end
end



