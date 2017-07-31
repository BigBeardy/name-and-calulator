def math(group,num1,num2)
	if group == "addition"
    answer = num1.to_i + num2.to_i
   elsif group == "subtraction"
   num1.to_i - num2.to_i = answer
   elsif group == "division"
   	num1.to_i / num2.to_i = answer
   else group == "multiply"
   	num1.to_i * num2.to_i = answer
   	 end
   answer.to_s
 end