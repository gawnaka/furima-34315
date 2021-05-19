class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references  :user,                     foreign_key: true
      t.text        :items_text,               null: false
      t.text        :select_box,               null: false
      t.text        :price_input,              null: false
      t.string      :item_image,               null: false
      t.timestamps
    end
  end
end
