import numpy as np
import pandas as pd

df = pd.read_csv('profesi.csv', delimiter = '|')

profesi= df['occupation'].unique()
jumlahProfesi= df['occupation'].nunique()
print (f'jumlah profesi : {jumlahProfesi}')

df = df.set_index(["occupation","gender"])

newDf = pd.DataFrame(profesi, index = ['occupation'])

print(newDf)
