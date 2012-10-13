class ChangeReferrerToReferrerIdOnVolunteers < ActiveRecord::Migration
  def up
    add_column :volunteers, :referrer_id, :integer
    remove_column :volunteers, :referrer
  end

  def down
    remove_column :volunteers, :referrer_id
    add_column :volunteers, :referrer, :integer
  end
end
