require "avram"

class Questionator::Database < Avram::Database
end

Questionator::Database.configure do |settings|
  settings.credentials = Avram::Credentials.new(
    hostname: "localhost",
    port: 5433,
    database: "questionator"
  )
end
