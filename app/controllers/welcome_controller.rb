class WelcomeController < ApplicationController
  acts_as_flying_saucer

  def index
  end

  def create
    render_pdf :template => 'welcome/pdf_template'
  end

end
