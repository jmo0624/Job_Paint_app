class CreatePaints < ActiveRecord::Migration[6.0]
  def change
    create_table :paints do |t|
      t.belongs_to :job, null: false, foreign_key: true
      t.string :brand_name
      t.string :type
      t.string :dry_time

      t.timestamps
    end
  end
end
