require 'spec_helper'

describe Benchmark do
  context 'FastNumericPredicate' do
    it '""== 0" is faster' do
      result = Benchmark.ips do |x|
        x.report('== 0') { RuboCop::Cop::Speed::FastNumericPredicate.fast}
        x.report('zero?') { RuboCop::Cop::Speed::FastNumericPredicate.slow}

        x.compare!
      end

      fastest = result.entries.sort_by{ |e| e.stats.central_tendency }.reverse.first.label

      expect(fastest).to eql '== 0'
    end
  end
end
