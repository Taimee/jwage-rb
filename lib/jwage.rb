# coding: utf-8
# frozen_string_literal: true

require 'yaml'
require 'jwage/version'
require 'jwage/code'
require 'jwage/minimum_wage'

module Jwage

  module_function

  def find(input = nil, target_date = nil)
    return nil if input.nil? || target_date.nil?

    code = Jwage::Code.find(input)
    return nil if code.nil?

    yaml_file = DATA_DIR.join("minimum_wages/#{format('%02d', code.to_i)}.yaml")
    return nil unless File.exist?(yaml_file)

    data = YAML.load(File.read(yaml_file))
    m_wages = data.map { |d| Jwage::MinimumWage.new(d) }
    m_wages.find { |wage| wage.include?(target_date) }
  end
end
