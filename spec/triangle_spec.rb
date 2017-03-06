require 'spec_helper'
require_relative '../lib/triangle_validator'

RSpec.describe TriangleValidator do
  let(:validator) { described_class.new }

  context "an invalid triangle" do
    it "should be invalid" do
      sides = [5, 10, 25]

      expect(validator.valid?(sides)).to eq(false)
    end
  end

  context "a valid triangle" do
    it "should be valid" do
      sides = [5, 21, 25]

      expect(validator.valid?(sides)).to eq(true)
    end
  end
end
