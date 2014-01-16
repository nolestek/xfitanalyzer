class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :description
      t.string :result
      t.integer :user_id

      t.timestamps
    end
  end
end
