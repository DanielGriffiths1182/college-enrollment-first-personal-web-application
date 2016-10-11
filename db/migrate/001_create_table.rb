require 'active_record'

class CreateTable < ActiveRecord::Migration[5.0]
  def up
    create_table :enrollment do |t|
      t.integer :year
      t.integer :freshman
      t.integer :sophmore
      t.integer :junior
      t.integer :senior
      t.integer :graduate
      t.integer :total
    end
  end

  def down
    drop_table :enrollment
  end
end

def main
  action = (ARGV[0] || :up).to_sym

  CreateTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
