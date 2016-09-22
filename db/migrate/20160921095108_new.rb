class New < ActiveRecord::Migration[5.0]
  def change
   add_reference :bands, :user, index: true, foreign_key: true
  end
end
