# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class NumericPredicate
        def self.slow_zero
          0.zero?
          1.zero?
          -1.zero?
          9558.zero?
          -9558.zero?
          1565156.zero?
          -1565156.zero?
        end

        def self.fast_zero
          0 == 0
          1 == 0
          -1 == 0
          9558 == 0
          -9558 == 0
          1565156 == 0
          -1565156 == 0
        end

        def self.slow_nonzero
          0.nonzero?
          1.nonzero?
          -1.nonzero?
          9558.nonzero?
          -9558.nonzero?
          1565156.nonzero?
          -1565156.nonzero?
        end

        def self.fast_nonzero
          0 != 0
          1 != 0
          -1 != 0
          9558 != 0
          -9558 != 0
          1565156 != 0
          -1565156 != 0
        end

        def self.slow_positive
          0.positive?
          1.positive?
          -1.positive?
          9558.positive?
          -9558.positive?
          1565156.positive?
          -1565156.positive?
        end

        def self.fast_positive
          0 > 0
          1 > 0
          -1 > 0
          9558 > 0
          -9558 > 0
          1565156 > 0
          -1565156 > 0
        end

        def self.slow_negative
          0.negative?
          1.negative?
          -1.negative?
          9558.negative?
          1565156.negative?
        end

        def self.fast_negative
          0 < 0
          1 < 0
          -1 < 0
          9558 < 0
          -9558 < 0
          1565156 < 0
          -1565156 < 0
        end
      end
    end
  end
end
