class CreateInputValues < ActiveRecord::Migration[6.1]
  def change
    create_table :input_values do |t|
      t.string :input_val

      t.timestamps
    end
  end
end
