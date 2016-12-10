class PagesController < ApplicationController

  def home
  end

  def create_tag
    @tag = Tag.new(name: params['name'])

    respond_to do |format|
      format.html{ render :nothing => :true, :status => :no_content }
      format.json{
        if @tag.save
          render json: @tag, status: :created
        else
          render json: @tag.errors, status: :unprocessable_entity
        end
      }
    end
  end

end
