import numpy as np
#1.create a 1D array from 0 to 23
data=np.arange(24)
#2.Reshape into (4,3,2)
reshaped_data=data.reshape(4,3,2)
#3.tranpose to get shape(4,3,2)
final_data=reshaped_data.transpose(0,2,1)
#4.output
print("Final Shape:",final_data.shape)
print("Final Array:")
print(final_data)