class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
    	t.text :text

      t.reference :user, null: false, foreign_key: true
      t.reference :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
