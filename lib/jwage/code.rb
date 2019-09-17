module Jwage
  class Code
    def self.find(input)
      codes = YAML.load(File.read(DATA_DIR.join('codes.yaml')))
      id, _ = codes.find { |_, akas| akas.include?(input) }
      id
    end
  end
end

