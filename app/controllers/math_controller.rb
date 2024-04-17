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

  def payment
    render ({ :template => "math_templates/payment"})
  end

  def payment_result
   @interest = params.fetch("user_apr").to_f 
   @rate = @interest.to_fs(:percentage,{:precision => 4})

   @r = @interest / 12 / 100

   @years = params.fetch("user_years").to_i
   @n = @years * 12

   @principal = params.fetch("user_pv").to_f
   @p = @principal.to_fs(:currency)
  
   @numerator = @principal * @r
  
   @d =  1 + @r
   @db = @d ** @n
   @dr = 1 / @db
   @denom = 1 - @dr
  
   @payment = @numerator/@denom
   @results = @payment.to_fs(:currency, {:precision => 2})
   render ({ :template => "math_templates/payment_result"})
  end

  def random
    render ({ :template => "math_templates/random"})
  end

  def random_result
    @num1 = params.fetch("user_min").to_f
    @num2 = params.fetch("user_max").to_f

    @results = rand(@num1 .. @num2)

    render ({ :template => "math_templates/random_result"})
  end


end
