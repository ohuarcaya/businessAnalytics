import pandas as pd
import numpy as np
from sklearn import utils
from sklearn.metrics.scorer import check_scoring
from sklearn.model_selection import KFold
from sklearn.model_selection._validation import _fit_and_score
from sklearn.model_selection import train_test_split

class Builder:
    def __init__(self, dataset, seed=7):
        self.seed = seed
        self._dataset = dataset

    def sdsad(self):
        print("go")