# frozen_string_literal: true

# Useful visual output when running locally
require 'simplecov-console'
# A formatter compatible with codecov.io
require 'simplecov-cobertura'
# not super useful right now, but future autograding uses.
require 'simplecov-json'

SimpleCov.start do
  formatter SimpleCov::Formatter::MultiFormatter.new([
    # Very basic console info
    SimpleCov::Formatter::SimpleFormatter,
    # Detailed console info. (You can turn this off)
    SimpleCov::Formatter::Console,
    # creates the coverage/idex.html view
    SimpleCov::Formatter::HTMLFormatter,
    # May be useful for future autogradign...
    SimpleCov::Formatter::JSONFormatter,
    # Necessary for codecov
    SimpleCov::Formatter::CoberturaFormatter
  ])
end
