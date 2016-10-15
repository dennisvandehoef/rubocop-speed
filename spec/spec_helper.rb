$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rubocop/speed'
require 'benchmark/ips'

def fastest(result)
  result.entries.sort_by{ |e| e.stats.central_tendency }.reverse.first.label
end

def target_ruby_version
  @target_ruby_version ||= RuboCop::Config.new.target_ruby_version
end

puts "Target Ruby Version: #{target_ruby_version}"
