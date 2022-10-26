local button = workspace.salt.r10_roll
	yourmoney = 15
	Gacha = function(roll)
	if roll > 10 then roll = 10 end
	if roll < 0 then roll = 0 end
	for ix = 1 ,roll do
		
		local your_num = math.random(0,9) 
		local your_num2 = math.random(0,9)
		
		print(your_num,your_num2)

		if	(ix <= roll ) then
			if	 (your_num == 0 )and(your_num2== 0) then
				print('you get 6$')
				yourmoney+=6
			elseif(your_num == 9 )and(your_num2== 2) then
				print('you get 5$')
				yourmoney+=5
			elseif(your_num == 8 )and(your_num2== 3) then
				print('you get 4$')
				yourmoney+=4
			elseif(your_num == 7 )and(your_num2== 4) then
				print('you get 2$')	
				yourmoney+=2
			elseif(your_num == 6 )and(your_num2== 5) then
				print('you get 2$')
				yourmoney+=2
			elseif(your_num == 1 )and(your_num2== 6) then
			print('you get 2$')	
				yourmoney+=2
			else print('you get 1 $') 
				yourmoney+=1
			end
	end
end
end

button.Triggered:Connect(function()
	print(yourmoney)
	button.Enabled = false
	if(yourmoney >= 15)then
		Gacha(10)	
		yourmoney = yourmoney - 15
		print(yourmoney)
	else  print("yourmoney low than 15$" , "you have" ,yourmoney,"$")	
	end
	
	wait(5)
	button.Enabled = true
end)