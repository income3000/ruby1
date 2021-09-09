class CreateThomas < ActiveRecord::Migration[6.1]
  def change
    create_table :thomas do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :url

      t.timestamps
    end
  end
end
