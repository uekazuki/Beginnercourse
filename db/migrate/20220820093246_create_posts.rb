class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :product_name
      t.text :content

      t.timestamps
    end
  end
end
