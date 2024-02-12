class CreateChandrayaan3s < ActiveRecord::Migration[7.0]
  def change
    create_table :chandrayaan3s do |t|

      t.integer :position_x, default: 0
      t.integer :position_y, default: 0
      t.integer :position_z, default: 0
      t.string :direction, default: 'N'

      t.timestamps
    end
  end
end
