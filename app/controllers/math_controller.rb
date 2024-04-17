class MathController < ApplicationController
  def show
    render ({ :template => "math_templates/home"})
  end

  def square
    render ({ :template => "math_templates/square"})
  end

  def square_result
    @num = params.fetch("number").to_f
    @result = @num ** 2
    render ({ :template => "math_templates/square_result"})
  end

  def square_root
    render ({ :template => "math_templates/square_root"})
  end

  def square_root_result
    @num = params.fetch("user_number").to_f
    @result = @num ** 0.5
    render ({ :template => "math_templates/square_root_result"})
  end




end
