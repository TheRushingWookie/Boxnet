import os, sys
import subprocess
import shutil

training_dir = sys.argv[1] + "/train"
training_files = os.listdir(training_dir)
training_file = open("./train.txt", 'w')

testing_dir = sys.argv[1] + "/test"
testing_files = os.listdir(testing_dir)
testing_file = open("./test.txt", 'w')
num_cases = 10
i = 0
for file in training_files:
	if file == ".DS_Store":
		continue
	print file
	if file[0] == 'a':
		training_file.write(file + " 0\n")
	else:
		training_file.write(file + " 1\n")
	i += 1
	if i > num_cases:
		break
i = 0
for file in testing_files:
	if file == ".DS_Store":
		continue
	#print file
	if file[0] == 'a':
		testing_file.write(file + " 0\n")
	else:
		testing_file.write(file + " 1\n")
	i += 1
	if i > num_cases:
		break
training_file.close()
testing_file.close()
shutil.rmtree('./boxnet_train', ignore_errors=True)
shutil.rmtree('./boxnet_test', ignore_errors=True)
subprocess.call(["./create_boxnet.sh"])
subprocess.call(["./make_boxnet_mean_train.sh"])
subprocess.call(["./make_boxnet_mean_test.sh"])
subprocess.call(["./train_boxnet.sh"])