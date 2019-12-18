import sys, getopt, os, glob

def main(argv):
	thisDir = os.getcwd()
	print("Current Directory is: " + thisDir)
	for r, d, f in os.walk(thisDir):
		for file in f:
			if file.endswith(".vbs"):
				vbFile = open(os.path.join(r, file))
				print(r)
				print(file)
	
if __name__ == "__main__":
	main(sys.argv[1:])