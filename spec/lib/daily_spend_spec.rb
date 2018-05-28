require "spec_helper"

describe DailySpend do
  describe "#total_value" do
    let(:file) { "example_file.json" }
    let(:project) { "example_project" }

    vcr_options = { :cassette_name => "daily_costs" }

    it "returns the daily costs", :vcr =>  vcr_options do
      expect(described_class.new(file, project).total_value).to eq(3)
    end
  end
end
