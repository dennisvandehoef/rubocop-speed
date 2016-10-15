require 'spec_helper'

describe RuboCop::Cop::Style::NumericPredicate do
  context 'Benchmark' do
    it '"== 0" is faster' do
      result = Benchmark.ips do |x|
        x.report('== 0') { RuboCop::Cop::Style::NumericPredicate.fast_zero}
        x.report('zero?') { RuboCop::Cop::Style::NumericPredicate.slow_zero}

        x.compare!
      end

      expect(fastest(result)).to eql '== 0'
    end
    it '!= 0" is faster' do
      result = Benchmark.ips do |x|
        x.report('!= 0') { RuboCop::Cop::Style::NumericPredicate.fast_nonzero}
        x.report('nonzero?') { RuboCop::Cop::Style::NumericPredicate.slow_nonzero}

        x.compare!
      end

      expect(fastest(result)).to eql '!= 0'
    end
    if target_ruby_version >= 2.3
      it '"> 0" is faster' do
        result = Benchmark.ips do |x|
          x.report('> 0') { RuboCop::Cop::Style::NumericPredicate.fast_positive}
          x.report('positive?') { RuboCop::Cop::Style::NumericPredicate.slow_positive}

          x.compare!
        end

        expect(fastest(result)).to eql '> 0'
      end
      it '"< 0" is faster' do
        result = Benchmark.ips do |x|
          x.report('< 0') { RuboCop::Cop::Style::NumericPredicate.fast_negative}
          x.report('negative?') { RuboCop::Cop::Style::NumericPredicate.slow_negative}

          x.compare!
        end

        expect(fastest(result)).to eql '< 0'
      end
    end
  end
end
