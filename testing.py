#!/usr/bin/env python

try:
    from alphafold.apps.af_cache_lookup import alignment_retriever2
except:
    print("did not locate the package")


try:
    if alignment_retriever2 is None:
        print("it did not exist")
    else:
        print("it did exist")
except NameError:
    print("it did not exist")