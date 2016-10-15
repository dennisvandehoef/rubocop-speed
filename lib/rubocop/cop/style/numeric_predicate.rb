# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      class NumericPredicate
        def self.slow
          0.zero?
          1.zero?
          -1.zero?
          9558.zero?
          1565156.zero?
        end

        def self.fast
          0 == 0
          1 == 0
          -1 == 0
          9558 == 0
          1565156 == 0
        end
      end
    end
  end
end
