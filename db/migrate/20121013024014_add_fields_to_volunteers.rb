class AddFieldsToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :gender, :string
    add_column :volunteers, :birthdate, :date
    add_column :volunteers, :part_of_a_dgroup, :boolean
    add_column :volunteers, :dgroup_leader_id, :integer
    add_column :volunteers, :leads_a_dgroup, :boolean, default: false
    add_column :volunteers, :address, :string
    add_column :volunteers, :hobby, :string
    add_column :volunteers, :most_important_thing, :string
    add_column :volunteers, :onelife_volunteer, :boolean, default: true
  end
end
