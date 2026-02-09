name=input("Enter name:")
goal=input("Enter goal:")
with open("journal.txt","a")as file:
    file.write(f"Name:{name},\n Goal:{goal}")