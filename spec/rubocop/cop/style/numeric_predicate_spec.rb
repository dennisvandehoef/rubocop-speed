require 'spec_helper'

describe RuboCop::Cop::Style::NumericPredicate do
  context 'Benchmark' do
    it '""== 0" is faster' do
      result = Benchmark.ips do |x|
        x.report('== 0') { RuboCop::Cop::Style::NumericPredicate.fast}
        x.report('zero?') { RuboCop::Cop::Style::NumericPredicate.slow}

        x.compare!
      end

      expect(fastest(result)).to eql '== 0'
    end
  end
end
