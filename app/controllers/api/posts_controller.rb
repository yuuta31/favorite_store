class Api::PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end