lines = []
with open("old_file_list.txt",'r') as f:
    for line in f:
        lines.append(line.split("/")[-1])

with open('filelist.txt', 'w') as f:
    for line in lines:
        f.write(line)
