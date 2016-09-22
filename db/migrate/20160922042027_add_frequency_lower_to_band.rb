class AddFrequencyLowerToBand < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :frequency_lower, :integer
  end
end
