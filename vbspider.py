import sys, getopt, os, glob

def main(argv):
	thisDir = os.getcwd()
	vbFunctionCollection = { }
	for r, d, f in os.walk(thisDir):
		for file in f:
			if file.endswith(".vbs"):
				vbFile = open(os.path.join(r, file))
				print "Functions in File: " + os.path.join(r, file)
				linesInVBFile = vbFile.readlines()
				for line in linesInVBFile:
					if line[:3] == "Sub":
						# For now save the function name into a dict with a value of 0, we can increment the value
						# when we start looking for counts
						vbFunctionCollection[line[4:]] = 0
						print line[4:len(line) - 1]
					elif line[:8] == "Function":
						vbFunctionCollection[line[9:]] = 0
						print line[9:len(line) - 1]
				print "\n"
	
	
	#for key, value in vbFunctionCollection.items():
		#print key[:len(key)-1]
	print "\nTotal number of functions is: " + str(len(vbFunctionCollection))
	
if __name__ == "__main__":
	main(sys.argv[1:])