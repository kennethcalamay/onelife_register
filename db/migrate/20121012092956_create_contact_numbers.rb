class CreateContactNumbers < ActiveRecord::Migration
  def change
    create_table :contact_numbers do |t|
      t.string :number
      t.string :provider

      t.timestamps
    end
  end
end
