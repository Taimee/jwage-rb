# frozen_string_literal: true

require 'spec_helper'

describe Jwage::Code do
  describe '.find' do
    let(:result) { Jwage::Code.find(input) }

    context 'when specified prefecture id exists' do
      context 'when input is prefecture id(integer)' do
        let(:input) { 2 }
        it { expect(result).to be '02' }
      end

      context 'when input is specified prefecture id' do
        let(:input) { '13' }
        it { expect(result).to be '13' }
      end

      context 'when input is prefecture name' do
        let(:input) { '愛知' }
        it { expect(result).to be '23' }
      end

      context 'when input is prefecture name(kana)' do
        let(:input) { 'ナガノ' }
        it { expect(result).to be '22' }
      end

      context 'when input is prefecture name(hirakana)' do
        let(:input) { 'なら' }
        it { expect(result).to be '29' }
      end

      context 'when input is prefecture name(romaji)' do
        let(:input) { 'mie' }
        it { expect(result).to be '24' }
      end
    end

    context 'when specified prefecture id DOES NOT exist' do
      context 'when the input is nil' do
        let(:input) { nil }
        it { expect(result).to be_nil }
      end

      context 'when the code is a random string' do
        let(:input) { 'hogefuga' }
        it { expect(result).to be_nil }
      end
    end
  end
end
