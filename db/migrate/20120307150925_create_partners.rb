class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.integer :erp_id
      t.integer :hick_id
      t.integer :spree_id

      t.timestamps
    end
  end
end
