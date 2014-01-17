class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :description
      t.string :result
      t.integer :user_id
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end
