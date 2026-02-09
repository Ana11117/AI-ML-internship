filename=input("Enter The Filename:")
try:
     with open(filename,"r")as file:
          content=file.read()
          print("File content:")
          print(content)
except FileNotFoundError:
     print("Oops! That file doesn't exits yet")          