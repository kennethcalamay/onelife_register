class AddPolymorphicAttributesToContactNumbers < ActiveRecord::Migration
  def change
    add_column :contact_numbers, :owner_id, :integer
    add_column :contact_numbers, :owner_type, :string
  end
end
