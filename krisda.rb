filename = "data.csv"

	txt = open(filename)
	text = txt.read
	color = []
	color2 = []
	name = []
	score = []
	index3 = 0
	first = ""
	last = ""
	sum = 0
	index = 0
	index2 = 0
	temp = 0
	temp2 = 4
	count = 0
	count2 = 0
	l = 3
	c = ''
	d = ''
	text = text.split(/[\n,]/)
	#name
	while l < text.length
		name.push(text[l])
		l = l + 3
	end
	

	#score
	l=4
	while l < text.length
		score.push(text[l])
		l = l + 3
	end
	for i in 0..score.length
		sum = sum + score[i].to_f
	end

	#color
	l=5
	while l < text.length
		color.push(text[l])
		l = l + 3
	end
	color2 = color.uniq
	for i in 0..color2.length
		for j in 0..color.length
			if color2[i] == color[j]
				count = count + 1
			end
		end
		if count > temp
			temp = count
			index = i
		end
		count = 0
	end

	for k in 0..color2.length-1
		for l in 0..color.length
			if color2[k] == color[l]
				count2 = count2 + 1
			end
		end
		if count2 < temp2
			temp2 = count2
			index2 = k
		elsif count2 == temp2
			temp2 = count2
			index3 = k
		end
		count2 = 0
	end

	#print score.index(score.max)
	print "Max score is: "; print name[score.index(score.max)]; print ". Score is: "; puts score.max 
	print "Min score is: "; print name[score.index(score.min)]; print ". Score is: "; puts score.min
	print "Mean of student's scores: "; puts sum/score.length;
	print "Most popular color is: "; puts color2[index]
	print "Least popular color is: "; print color2[index2]; print" and "; print color2[index3]; puts

	for i in 0..name.length-1
		first = name[i].split.first
		last = name[i].split.last
		c = first.byteslice(first.length-1)
		d = last.byteslice(last.length-1)
		
		#puts individ 
		#individ = name[i].split.last
		#individ = name[i].chomp(name[i].split.last) + name[i].split.last
		first = first.byteslice(0,first.length-1) + c.capitalize + " " + name[i].split(' ')[1..-1].join(' ').chomp(last) + last.byteslice(0,last.length-1) + d.capitalize
		print "Name: "; puts first
	end

