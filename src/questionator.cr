require "avram"

require "./questionator/database"
require "./questionator/page"
require "./questionator/question"

# TODO: Write documentation for `Questionator`
module Questionator
  VERSION = "0.1.0"

  # TODO: Put your code here
end

page = Questionator::Page.new
puts page.questions.sample
