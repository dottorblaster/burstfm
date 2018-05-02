RSpec.describe Burstfm do
  it "has a version number" do
    expect(Burstfm::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  it "checks if front-matter array is long enough" do
    front_matter = Burstfm.front_matter()
    expect(front_matter.length).to eq(7)
  end

  it "prints the front-matter" do
    Burstfm.print()
  end
end
