class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.integer :user_id
    end
  end
end
