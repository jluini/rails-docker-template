class ArticlesController < ApplicationController
  before_action :fetch_record, only: %i[show edit update destroy]
  
  def index
    @articles = base_scope
  end
  
  def show; end
  
  def new
    @record = @article = model_class.new
  end
  
  def edit
    # byebug
    'byebug'
  end
  
  def create
    @record = @article = Article.new(permitted_parameters)
 
    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end
  
  def update
    if @record.update(permitted_parameters)
      redirect_to @record
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @record.destroy

    # redirect_to root_path, status: :see_other
    redirect_to articles_path
  end
  
  private
  
  def base_scope
    Article.all
  end
  
  def fetch_record
    @record = @article = base_scope.find params[:id]
  end
  
  def permitted_parameters
    params.require(:article).permit %i[
      key
      content
      parent_id
    ]
  end
end
