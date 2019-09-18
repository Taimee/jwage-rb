# frozen_string_literal: true

module Jwage
  class Code
    def self.find(input)
      codes = YAML.safe_load(File.read(DATA_DIR.join('codes.yaml')))
      id, = codes.find { |_, akas| akas.include?(input) }
      id
    end
  end
end
