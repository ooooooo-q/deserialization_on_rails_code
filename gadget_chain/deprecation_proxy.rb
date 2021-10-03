require 'active_support'

puts ActiveSupport::Deprecation::DeprecatedInstanceVariableProxy.new(Kernel, 'rand')