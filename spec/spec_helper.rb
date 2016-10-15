$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rubocop/speed'
require 'benchmark/ips'

def fastest(result)
  result.entries.sort_by{ |e| e.stats.central_tendency }.reverse.first.label
end

def target_ruby_version
  return @target_ruby_version if @target_ruby_version
  return @target_ruby_version = ENV['RUBY'].to_f if ENV['RUBY']
  @target_ruby_version = RuboCop::Config.new.target_ruby_version
end

puts "Target Ruby Version: #{target_ruby_version}"
