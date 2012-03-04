class CreateOpenErps < ActiveRecord::Migration
  def change
    create_table :open_erps do |t|

      t.timestamps
    end
  end
end
