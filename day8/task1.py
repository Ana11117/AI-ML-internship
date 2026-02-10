import numpy as np
#1.create a 5X3 array of random scores between 50 and 100
scores=np.random.randint(50,101,size=(5,3))
#2. calculate column-wise mean(mean of each subject)
mean_scores=scores.mean(axis=0)
#3.subtract mean from original scores(broadcasting happens here)
centered_scores=scores-mean_scores
#4.print results
print("Original scores")
print(scores)
print("\nMean of Each Subject:")
print(mean_scores)
print("\nCentered Scores(After Noprmalization):")
print(centered_scores)