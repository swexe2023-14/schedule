class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.text :content
      t.text :comment
      t.datetime :start_time

      t.timestamps
    end
  end
end
