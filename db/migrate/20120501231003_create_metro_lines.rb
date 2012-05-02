class CreateMetroLines < ActiveRecord::Migration
  def change
    create_table :metro_lines do |t|
      t.string :name
      t.integer :frequency

      t.timestamps
    end
  end
end
