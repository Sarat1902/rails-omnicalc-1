class MathController < ApplicationController
  def show
    render ({ :template => "math_templates/home"})
  end

  def square
    render ({ :template => "math_templates/square"})
  end


end
