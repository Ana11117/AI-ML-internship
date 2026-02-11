import pandas as pd
import numpy as np
products=pd.Series([70000,1500,3000,5000])
products=pd.Series([70000,1500,3000,5000],index=["Laptop","Mouse","Keyboard","cable"])
print(products)
price=products.loc["Laptop"]
print(price)
print(products.iloc[0:2])
