"""This modules contains different machine learning algorithms such as:
    - minimum square error
    - gradient descent
    - steepest descent
"""
import math
import numpy as np


def minimum_mean_square_error(x, y):
    """Calculates the minimum mean square error.

    Args:
        x (np.array): contains data
        y (np.array): contains features

    Return:
        weights
    """
    x_pseudoinv = np.linalg.pinv(x)
    return x_pseudoinv * x.T * y


def gradient_descent():
    pass


def steepest_descent():
    pass
