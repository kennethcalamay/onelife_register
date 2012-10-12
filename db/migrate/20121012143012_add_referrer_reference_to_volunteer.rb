class AddReferrerReferenceToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :referrer, :integer
  end
end
