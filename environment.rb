require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  database: 'apiui',
  username: 'danielgriffiths',
  password: ''
)
