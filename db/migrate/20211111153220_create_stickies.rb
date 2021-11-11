class CreateStickies < ActiveRecord::Migration[6.1]
  def change
    create_table :stickies do |t|
      t.string :body
      t.string :color

      t.timestamps
    end
  end
end
