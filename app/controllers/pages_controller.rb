class PagesController < ApplicationController

  def home
  end

  def create_tag

    respond_to do |format|
      format.html{ render :nothing => :true, :status => :no_content }
      format.json{
        name = params["name"]
        if @tag = Tag.create(name: name)
          render json: @tag
        else
          render json: @tag.errors
        end
      }
    end
  end

end
