class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.references :paints, foreign_key: true

      t.timestamps
    end
  end
end