class ExamplesController < ApplicationController
  
  def index
    @examples = Example.all
  end
  
  def show
    @example = Example.find_by(id: params[:id])
  end
  
  def new
    @example = Example.new
  end
  
  def edit
    @example = Example.find_by(id: params[:id])
  end
  
  def create
    @example = Example.new
    @example.name = params["example"]["name"]
    @example.design = params["example"]["design"]
    @example.album = params["example"]["album"]
    @example.pageview = params["example"]["pageview"]
    @example.like = params["example"]["like"]

    if @example.save
      redirect_to "/examples", notice:'デザイン例を登録しました。'
    else
      render 'new'
    end
  end
  
  def update
    @example = Example.find_by(id: params[:id])
    @example.assign_attributes(params[:example])
    
    if @example.save
      redirect_to @example, notice:'新しいデザイン例を登録しました。'
    else
      render 'edit'
    end
  end
  
  def destroy
    @example = Example.find_by(id: params[:id])
    @example.destroy
    redirect_to :examples, notice:'デザイン例を削除しました。'
  end
  
end
