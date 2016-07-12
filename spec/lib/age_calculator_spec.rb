require "active_support/all"

RSpec.describe AgeCalculator do 
  let(:age) { 20 }
  subject   { described_class.new(birthdate) }

  describe "#get_age!" do 
    context "simple case" do 
      let(:birthdate) { (age.years.ago - 10.days).iso8601 }

      it "returns the correct age" do 
        expect(subject.get_age!).to eq age
      end
    end

    context "birthdate later in the year" do 
      let(:birthdate) { (age.years.ago + 10.days).iso8601 }

      it "returns the correct age" do 
        expect(subject.get_age!).to eq age - 1
      end
    end
  end
end