require "avram"

class Questionator::Question < Avram::Model
  def self.database
    Questionator::Database
  end

  table do
  end
end
