class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :customer_name
      t.datetime :start_date
      t.datetime :end_date
      t.string :room
      t.string :type_of_wood
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
