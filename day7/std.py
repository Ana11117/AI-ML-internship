name=input("Enter student name:")
marks=input("Enter marks:")
with open("marks.txt","a")as f:
    f.write(f"{name}-{marks}\n")
    print("Marks appended Successfully!")
    with open("marks.txt","r")as f:
        lines=f.readlines()
print("Number of students:",len(lines))