class CreateCardapios < ActiveRecord::Migration[6.1]
  def change
    create_table :cardapios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
