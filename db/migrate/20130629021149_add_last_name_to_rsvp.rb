class AddLastNameToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :last_name, :string
  end
end
