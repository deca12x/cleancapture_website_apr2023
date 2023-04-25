class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :blog_posts, :projects]

  def home
  end

  def blog
  end

  def project
  end
end
