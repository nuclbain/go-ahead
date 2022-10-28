# frozen_string_literal: true

# We're adding a user_id column to the notes and boards tables, and we're adding an index to the
# user_id column in both tables
class AddUserReferencesToNotesAndBoards < ActiveRecord::Migration[7.0]
  def up
    add_reference :notes, :user, null: false, foreign_key: true
    add_reference :boards, :user, null: false, foreign_key: true
  end

  def down
    remove_reference :notes, :user, index: true
    remove_reference :boards, :user, index: true
  end
end
