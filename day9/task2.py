import pandas as pd
import numpy as np
grades=pd.Series([85,None,92,45,None,78,55])
missing_values=grades.isnull()
filled_grades=grades.fillna(0)
filtered_scores=filled_grades[filled_grades>60]
print("Original Series:")
print(grades)
print("\nmissing values:")
print(missing_values)
print("\nScores greater than 60:")
print(filtered_scores)