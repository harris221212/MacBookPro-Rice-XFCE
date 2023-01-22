import pickle

a = [10,1]

# do your thing here, like


# open a pickle file
filename = 'mypickle.pk'

with open(filename, 'wb') as fi:
    # dump your data into the file
    pickle.dump(a, fi)
