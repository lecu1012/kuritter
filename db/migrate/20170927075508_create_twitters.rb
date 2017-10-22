class CreateTwitters < ActiveRecord::Migration[5.1]
  def change
    create_table :twitters do |t|
      t.text :content
      t.text :image
      
      t.timestamps
    end
  end
end
