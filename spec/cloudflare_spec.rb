require_relative './spec_helper'

describe Chiwawa::Cloudflare do
  subject { described_class.new }
  describe '.add_to_blacklist' do
    it 'should add 0.0.0.0 to the blacklist' do
      expect(subject.add_to_blacklist('0.0.0.0')).to eq true
    end
  end

  describe '.remove_from_blacklist' do
    it 'should remove 0.0.0.0 from the blacklist' do
      expect(subject.remove_from_blacklist('0.0.0.0')).to eq true
    end
  end
end
