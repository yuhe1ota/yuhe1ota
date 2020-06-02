class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.text :image
      t.text :profile
      t.text :deleted_at

      t.timestamps
    end
  end
end
