emails_array = []
i=1
while i <= 50 do
	if i < 10
		emails_array << "jean.dupont.0#{i}@email.fr"
	else
		emails_array << "jean.dupont.#{i}@email.fr"
	end
	i += 1
end

i = 0
while i < 50 do
puts emails_array[i]
i += 1
end
