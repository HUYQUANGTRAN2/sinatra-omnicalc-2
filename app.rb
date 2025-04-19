require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end 


get("/wizard_add") do
  if params.key?("first_num") && params.key?("second_num")
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num + @second_num
  end 
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  if params.key?("first_number") && params.key?("second_number")
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f
    @result = @second_num - @first_num
  end 
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  if params.key?("first_number") && params.key?("second_number")
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f
    @result = @second_num * @first_num
  end 
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  if params.key?("first_number") && params.key?("second_number")
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f
    @result = @first_num /@second_num
  end 
  erb(:div_result)
end
