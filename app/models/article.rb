class Article < ApplicationRecord
  has_many :children,
    class_name: 'Article',
    inverse_of: :parent,
    foreign_key: :parent_id
    
  belongs_to :parent,
    class_name: 'Article',
    inverse_of: :children,
    optional: true

  def render_html
    self.content
  end
end
