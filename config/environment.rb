ENV['SINATRA_ENV'] ||= "development"

require 'capybara/dsl'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

ActiveRecord::Base.logger.level = 1

require_all 'app'

