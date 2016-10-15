# frozen_string_literal: true

module RuboCop
  module Cop
    module Speed
      # Don't use symbols as procs.
      class FastNumericPredicate < Cop

        def self.slow
          1.zero?
          0.zero?
        end

        def self.fast
          1 == 1
          0 == 0
        end
      end
    end
  end
end
