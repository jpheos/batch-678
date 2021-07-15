require_relative '../meerkat'

describe 'Meerkat' do
  it "is an animal" do
    meerkat = Meerkat.new("Timon")
    expect(meerkat).to be_an(Animal)
  end

  describe "#talk" do
    it do
      meerkat = Meerkat.new("Timon")
      expect(meerkat.talk).to eq("Timon barks" )
    end
  end
end
