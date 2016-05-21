class LessonController < ApplicationController
  
  before_action :set_message, only: :step7
  
  def step1
    render text:'hello!,' + params[:name]
  end
  
  def step2
    render text: params[:controller] + params[:action]
  end
  
  def step3
    redirect_to action:'step4'
  end
  
  def step4
    render text:'step4'
  end
  
  def step5
    flash[:notice] = 'step6に移動'
    redirect_to action:'step6'
  end
  
  def step6
    render text:''
  end
  
  def step7
    render text: @message
  end
  
  def step8
    @price = (2000*1.08).floor
  end
  
  def step9
    @price = 1000
    render 'step8'
  end
  
  private
  def set_message
    @message = 'Hello'
  end
  
  
end
