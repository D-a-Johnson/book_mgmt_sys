class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :total_books
      t.integer :checked_books
      t.decimal :cost_day

      t.timestamps
    end
  end
end
