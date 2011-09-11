require 'spec_helper'

include ApplicationHelper

describe ApplicationHelper do
  describe "parse_amount" do
    it "parses values without a seperator correctly" do
      parse_amount("10").should == "10"
    end

    it "parses values with a dot seperator correctly" do
      parse_amount("10.99").should == "10.99"
    end

    it "parses values with a comma seperator correctly" do
      parse_amount("10,99").should == "10.99"
    end

    it "parses values without a leading digit correctly" do
      parse_amount(".99").should == "0.99"
      parse_amount(",99").should == "0.99"
    end

    it "parses values with a dot seperator and commas correctly" do
      parse_amount("1,000,000.00").should == "1000000.00"
      parse_amount("1,000.00").should == "1000.00"
    end

    it "parses values with a comma seperator and dots correctly" do
      parse_amount("1.000.000,00").should == "1000000.00"
      parse_amount("1.000,00").should == "1000.00"
    end
  end
end