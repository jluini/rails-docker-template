class JulopediaController < ApplicationController
  SEPARATOR = '/'
  def show
    query = params[:query]
    parts = query.split SEPARATOR
    
    @parts = parts
    
    @article = get_article parts
    
    @article_html = @article.render_html
    
    # c = @article.children
    # byebug
    # c.to_a.size
    
    # render html: "<h2>hola '#{params[:query]}'</h2>".html_safe
  end
  
  private
  
  def get_article(parts)
    out = _get_article(parts)
    
    raise 'no encontrado' if out.blank?
    
    out
  end
  
  def _get_article(parts)
    out = nil
    
    parts.each do |part|
      out2 = Article.find_by(parent: out, key: part)
      
      return nil if out2.blank?
      
      out = out2
    end
    
    out
  end
end
