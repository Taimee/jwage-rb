# frozen_string_literal: true

require 'pathname'

module Jwage
  ROOT_DIR = Pathname.new(File.expand_path(__FILE__)).join('../../../')
  DATA_DIR = ROOT_DIR.join('data')
  VERSION = '0.3.0'
end
