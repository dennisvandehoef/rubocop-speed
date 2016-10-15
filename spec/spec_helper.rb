$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rubocop/speed'
require 'benchmark/ips'

def fastest(result)
  result.entries.sort_by{ |e| e.stats.central_tendency }.reverse.first.label
end
