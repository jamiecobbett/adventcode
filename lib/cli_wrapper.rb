require_relative './triangle_validator'

class CliWrapper
  def initialize(filepath)
    @lines = File.readlines(filepath)
    @validator = TriangleValidator.new
  end

  def valid_triangles
    specs.select { |spec| @validator.valid?(spec) }
  end

  def specs
    possible_specs = @lines.map { |line| line.split(' ').map { |side| side.to_i } }

    possible_specs.select do |possible_spec|
      if possible_spec.size == 0
        # If sides is zero, it's probably just a blank line, so ignore it
        false
      else
        true
      end
    end
  end
end
