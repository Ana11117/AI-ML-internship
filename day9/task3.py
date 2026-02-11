import pandas as pd
import numpy as np
usernames=pd.Series(["Alice","BoB","Charlie_Data","Daisy"])
cleaned_usernames=usernames.str.strip().str.lower()
contains_a=cleaned_usernames.str.contains('a')
print("Cleaned Usernames:")
print(cleaned_usernames)
print("\nNames Containing 'a':")
print(contains_a)