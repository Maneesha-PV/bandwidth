class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.integer :frequency
      t.timestamps
    end
  end
end
