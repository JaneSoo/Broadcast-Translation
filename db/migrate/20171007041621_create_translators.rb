class CreateTranslators < ActiveRecord::Migration[5.1]
  def change
    create_table :translators do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :gender

      t.timestamps
    end
  end
end
