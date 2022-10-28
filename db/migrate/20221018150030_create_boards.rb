# frozen_string_literal: true

# This class inherits from ActiveRecord::Migration and defines a change method that creates a table
# called boards with two columns: title and description.
class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
