class WelcomeController < ApplicationController
  def index
    @loco = 'Vida misma'
  end
  
  def sarasa
    render inline: '<p>holis <b>loco</b> querido</p>'
  end
end
