require 'spec_helper'
require_relative '../lib/cli_wrapper'

RSpec.describe CliWrapper do
  context "all invalid" do
    let(:filename) { File.expand_path("./fixtures/all_invalid", File.dirname(__FILE__)) }

    it "should find 2 specs" do
      expect(CliWrapper.new(filename).specs.size).to eq(2)
    end

    it "should find 0 valid triangles" do
      expect(CliWrapper.new(filename).valid_triangles.size).to eq(0)
    end
  end

  context "all valid" do
    let(:filename) { File.expand_path("./fixtures/all_valid", File.dirname(__FILE__)) }

    it "should find 2 specs" do
      expect(CliWrapper.new(filename).specs.size).to eq(2)
    end

    it "should find 2 valid triangles" do
      expect(CliWrapper.new(filename).valid_triangles.size).to eq(2)
    end
  end

  context "mix" do
    let(:filename) { File.expand_path("./fixtures/mix", File.dirname(__FILE__)) }

    it "should find 2 specs" do
      expect(CliWrapper.new(filename).specs.size).to eq(2)
    end

    it "should find 1 valid triangles" do
      expect(CliWrapper.new(filename).valid_triangles.size).to eq(1)
    end
  end

  context "a file with a mixture of whitespace" do
    let(:filename) { File.expand_path("./fixtures/whitespace", File.dirname(__FILE__)) }

    it "should find 2 specs" do
      expect(CliWrapper.new(filename).specs.size).to eq(2)
    end

    it "should find 2 valid triangles" do
      expect(CliWrapper.new(filename).valid_triangles.size).to eq(2)
    end
  end

  context "empty file" do
    let(:filename) { File.expand_path("./fixtures/empty", File.dirname(__FILE__)) }

    it "should find 0 specs" do
      expect(CliWrapper.new(filename).specs.size).to eq(0)
    end

    it "should find 0 valid triangles" do
      expect(CliWrapper.new(filename).valid_triangles.size).to eq(0)
    end
  end
end
