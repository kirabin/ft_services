def is_commented(s):
	s = s.strip(' 	\n\t\r')
	if (s and s[0] == '#'):
		return 1
	if not s:
		return 1
	return 0

filtered_rows = []
with open('telegraf.conf', 'r') as file:
	for row in file:
		if not is_commented(row):
			filtered_rows.append(row)

for i in filtered_rows:
	print(i)