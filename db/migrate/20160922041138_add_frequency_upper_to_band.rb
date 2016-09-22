class AddFrequencyUpperToBand < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :frequency_upper, :integer
  end
end
