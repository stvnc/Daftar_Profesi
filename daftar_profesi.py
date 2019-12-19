import numpy as np
import pandas as pd

df = pd.read_csv('profesi.csv', delimiter = '|')

profesi= df['occupation'].unique()
jumlahProfesi= df['occupation'].nunique()
print (f'jumlah profesi : {jumlahProfesi}')

newDf = df.groupby([df['occupation'],df['gender']]).describe()
newDf = newDf['age'][['max','min','mean']]
newDf.rename(columns={'max':'max_usia','min':'min_usia','mean':'rerata_usia'}, inplace=True)
print(newDf)

gender = pd.crosstab(df.occupation, df.gender).apply(lambda r: r/r.sum(), axis=1) * 100
gender['%total'] = gender['F']+gender['M']
gender.rename(columns={'F':'%female','M':'%male'},inplace=True)
gender = gender[['%male','%female','%total']]
print(gender)