
import glob
import os

files = glob.glob('*.wav')

i = 0
for old_name in files:
    new_name = 'music/'+str(i) + '.wav'
    os.rename(old_name, new_name)
    i += 1
