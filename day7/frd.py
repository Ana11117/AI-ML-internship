search_name=input("enter name to search:")
with open("friends.txt","r")as f:
            names=f.read().splitlines()
            if search_name in names:
                print("Found!")
            else:
                print("Not Found!")