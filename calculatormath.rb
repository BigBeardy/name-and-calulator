def math(group,num1,num2)
	if group == "addition"
    answer = num1.to_f + num2.to_f
   elsif group == "subtraction"
   answer = num1.to_f - num2.to_f
   elsif group == "division"
    answer = num1.to_f / num2.to_f 
   else group == "multiply"
   answer = num1.to_f * num2.to_f 
   	 end
   answer.to_s
 end