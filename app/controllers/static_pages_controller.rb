class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def submit_contact
    flash[:notice] = "¡Gracias por tu mensaje! Pronto nos pondremos en contacto contigo."
    redirect_to contact_path
  end
end
