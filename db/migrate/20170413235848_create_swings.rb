class CreateSwings < ActiveRecord::Migration[5.0]
  def change
    create_table :swings do |t|

      t.timestamps
    end
  end
end
