filemane = ARGV[0]
file = File.open(filemane)
text = file.read
print text
file.close
