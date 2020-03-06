class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.date :checkout_date
      t.date :return_date
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.boolean :return, default: false
      t.timestamps
    end
  end
end
