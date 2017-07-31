def math(group,num1,num2)
	if group == "plus"
    answer = num1.to_f + num2.to_f
   elsif group == "minus"
   answer = num1.to_f - num2.to_f
   elsif group == "divided_by"
    answer = num1.to_f / num2.to_f 
   elsif group == "times"
   answer = num1.to_f * num2.to_f 
   	 end
   answer.to_s
 end