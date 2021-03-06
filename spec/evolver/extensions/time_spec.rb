require "spec_helper"

describe Evolver::Extensions::Time do

  describe "#to_evolver_timestamp" do

    let(:time) do
      Time.new(2012, 1, 5, 12, 45, 30)
    end

    let(:stamp) do
      time.to_evolver_timestamp
    end

    it "returns the timestamp in YYYYMMDDHHMMSS format" do
      stamp.should eq("20120105124530")
    end
  end

  describe ".from_evolver_timestamp" do

    let(:time) do
      Time.from_evolver_timestamp("20120105124530")
    end

    let(:expected) do
      Time.new(2012, 1, 5, 12, 45, 30)
    end

    it "returns the time for the timestamp" do
      time.should eq(expected)
    end
  end
end
