# frozen_string_literal: true

# This class adds the first_name, last_name, bio, and birth_date columns to the users table.
class AddBasicFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :string
    add_column :users, :birth_date, :datetime
  end
end
