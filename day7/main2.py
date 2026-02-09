try:
    file=open("example2.txt","r")
    print(file.read())
except  Exception as e:
    print(f"Error:{e}")
finally:
    print("file not found")