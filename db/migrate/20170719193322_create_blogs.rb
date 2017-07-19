class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.date :post_date
      t.text :post_content
      t.string :post_status
      t.string :post_type
      t.integer :post_like_count
      t.integer :post_comment_count
      t.boolean :post_has_article
      t.text :article_title
      t.text :article_content
      t.text :article_references
      t.string :post_author
      t.integer :author_id

      t.timestamps

    end
  end
end
