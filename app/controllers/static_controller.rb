class StaticController < ApplicationController
  def services; end

  def about
    @doubt = Doubt.new
  end

  def team
    @idea = Idea.new
  end

  def report; end

  def create_idea
    @idea = Idea.new(idea_params)
    @idea.save
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :email, :subject, :person, :message)
  end
end
