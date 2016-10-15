require 'pathname'
require 'yaml'

require 'pry'

require 'rubocop'

require 'rubocop/speed/version'
require 'rubocop/speed/inject'

# cops
require 'rubocop/cop/style/numeric_predicate'

module RuboCop
  module Speed
    PROJECT_ROOT   = Pathname.new(__dir__).parent.parent.expand_path.freeze
    CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze
    CONFIG         = YAML.load(CONFIG_DEFAULT.read).freeze

    Inject.defaults!
  end
end
