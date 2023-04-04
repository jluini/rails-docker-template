class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :parent, foreign_key: { to_table: :articles }, index: true
      
      t.string :key, index: true

      t.text :content
      
      t.timestamps
      
      t.index(
        %i[key parent_id],
        unique: true
      )
    end
  end
end
