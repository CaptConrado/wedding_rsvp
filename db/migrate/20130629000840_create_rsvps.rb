class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.boolean :going

      t.timestamps
    end
  end
end
