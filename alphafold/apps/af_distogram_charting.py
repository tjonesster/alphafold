#!/usr/bin/env python

import scipy.special
import matplotlib.pyplot as plt
import pickle
import os
import numpy as np



def eqish(x,y,cutoff =.01):
    return abs(y-x) < cutoff


class PicklePlotter:
    def __init__(self, path):
        with open(path, "rb") as f:
            self.pick = pickle.load(f)
        self.infile = path
        self.r1_max, self.r2_max, _ = self.pick['distogram']['logits'].shape
            
    def plddt_plot(self):      
        self.generic_histogram(self.pick['plddt'],x_series = None, x_width =15, y_width =7.5, dpi=80, x_label="Residue Id", y_label="PLDDT", title="PLDDT", outname="plttd_plot.png", axis_font=20, title_font=25, axis_tick_font=10)

    @staticmethod
    def generic_histogram(series, x_series = None, x_width =15, y_width =7.5, dpi=80, x_label="Residue Id", y_label="PLDDT", title="PLDDT", outname=None, axis_font=20, title_font=25, axis_tick_font=10):
        
        fig = plt.figure(figsize=(x_width, y_width), dpi=dpi)
        
        plt.xlabel(x_label,fontsize=axis_font)
        plt.ylabel(y_label,fontsize=axis_font)
        plt.xticks(fontsize=axis_tick_font)
        plt.yticks(fontsize=axis_tick_font)
        plt.title(title,fontsize=title_font)

        if x_series is None:
            x_series = range(len(series))        
            
        plt.scatter(x_series, series)
        
        if outname != None:
            plt.savefig(outname)
        
        plt.close(fig)
        

    # This originally applied a function now it just prints histograms
    def apply_func_to_distogram(self, filter_functions = [], print_kwargs={}):

        bin_edges = self.pick['distogram']['bin_edges']
        bin_edges = np.append(bin_edges, 22)
        
        for i, row in enumerate(self.pick['distogram']['logits']):
            if i > self.r1_max//2 +1:
                continue
                
            for i2, row2 in enumerate(row):
                if i2 <= i:
                    continue
                
                temp = self.dist_to_prob(row2)

                all_funcs = set(map( lambda x: x(temp), filter_functions))
                
                if False in all_funcs:
                    continue
                
                try:
                    os.makedirs(os.path.join("distogram_charts", str(i)))
                except:
                    pass
        
                
                self.generic_histogram(temp, x_series = bin_edges, outname=os.path.join("distogram_charts",str(i),str(i) + " to " + str(i2) + " distance"), **print_kwargs)
        
        
    @staticmethod
    def dist_to_prob(logits):
        return scipy.special.softmax(logits)
        

        

t = PicklePlotter("result_structure_0_model_5.pkl")



# t.apply_func_to_distogram()

filters = [
    lambda x: x[-1] > .3 and x[-1] < .8,
    lambda x: max(x[:-1]) != x[-2]
] 

t.apply_func_to_distogram(filter_functions = filters)
