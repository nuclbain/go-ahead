# frozen_string_literal: true

# Create a table called notes with a name column, a body column, a board_id column, and timestamps.
class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :body

      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
