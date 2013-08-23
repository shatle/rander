require "rander/version"

module Rander
  # Your code goes here...
  # Use 0~9,a~z,A~Z,-,_  64 char
  # ** except_arr max length is 3, likes %w(0 1 2)
  def gen(except_arr=[])
    origin_arr = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_+%/"
    select_arr = (origin_arr.each_char.to_a - except_arr.take(3)).take(64)
    now_time = Time.now.to_i.to_s(2)
    num, ext = now_time.length.divmod 6 
    result_arr = []
    num2 = num 
    num.times{ result_arr << select_arr[-6*(num-num2+1),6]; num2=num2 -1 ;}
  end
end
