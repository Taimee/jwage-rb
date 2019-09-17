# coding: utf-8
# frozen_string_literal: true

require 'psych'
require 'yaml'
require 'jwage/version'
require 'jwage/code'

module Jwage

  module_function

  def find(input)
    code = Jwage::Code.find(input)
    p code
    return nil if code.nil?
  end
end
