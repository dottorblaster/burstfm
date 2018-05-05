RSpec.describe Burstfm do
  it "has a version number" do
    expect(Burstfm::VERSION).not_to be nil
  end

  it "checks if front-matter array is long enough" do
    front_matter = Burstfm.front_matter()
    expect(front_matter.length).to eq(7)
  end

  it "checks that title option is correctly used" do
    EXAMPLE_TITLE = "Example title"
    options = {
      :title => EXAMPLE_TITLE
    }
    front_matter = Burstfm.front_matter(options)
    front_matter.each do |field|
      if field[:label] == "title"
        expect(field[:content]).to eq(EXAMPLE_TITLE)
      end
    end
  end

  it "prints the front-matter" do
    Burstfm.print()
  end
end
