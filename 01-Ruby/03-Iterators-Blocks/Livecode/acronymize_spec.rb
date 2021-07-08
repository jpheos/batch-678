require_relative 'acronymize'

describe "#acronymize" do
  it "returns a string" do
    result = acronymize("what the fuck")
    expect(result).to be_an(String)
  end

  it "returns empty string when str is empty" do
    result = acronymize("")
    expect(result).to eq("")
  end

  it "returns the right acronym" do
    result = acronymize("WHAT THE FUCK")
    expect(result).to eq("WTF")
  end

  it "returns the right acronym in uppercase" do
    result = acronymize("what the fuck")
    expect(result).to eq("WTF")
  end
end



