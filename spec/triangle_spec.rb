require 'spec_helper'
require_relative '../lib/triangle_validator'

RSpec.describe TriangleValidator do
  let(:validator) { described_class.new }

  context "invalid triangles" do
    context "the last side is too long" do
      it "should be invalid" do
        sides = [5, 10, 25]
        expect(validator.valid?(sides)).to eq(false)
      end
    end

    context "the middle side is too long" do
      it "should be invalid" do
        sides = [25, 10, 5]
        expect(validator.valid?(sides)).to eq(false)
      end
    end

    context "the first side is too long" do
      it "should be invalid" do
        sides = [5, 25, 10]
        expect(validator.valid?(sides)).to eq(false)
      end
    end

    context "the smallest possible invalid triangle" do
      it "should be invalid" do
        sides = [1, 2, 4]
        expect(validator.valid?(sides)).to eq(false)
      end
    end
  end

  context "valid triangles" do
    context "a valid triangle" do
      it "should be valid" do
        sides = [5, 21, 25]
        expect(validator.valid?(sides)).to eq(true)
      end
    end

    context "the smallest possible invalid triangle" do
      it "should be valid" do
        sides = [2, 2, 3]
        expect(validator.valid?(sides)).to eq(true)
      end
    end
  end
end
