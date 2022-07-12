from matplotlib import pyplot as plt
import numpy as np


def line_chart_with_multiple_lines(labels, x_coordinates_of_each_label, y_coordinates_of_each_label, xlabel='', ylabel='', title='', **kwargs):
    # 所有的标签
    label_list = list(labels)
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 遍历各个标签
    for label, x_coordinates_of_label, y_coordinates_of_label in zip(label_list, x_coordinates_of_each_label, y_coordinates_of_each_label):
        # 得到该标签对应的数据，每组一个数据
        x_coordinates_of_label_list = list(x_coordinates_of_label)
        y_coordinates_of_label_list = list(y_coordinates_of_label)
        
        # 以条形的方式，绘制该标签对应的数据
        plot = axes.plot(x_coordinates_of_label_list, y_coordinates_of_label_list, label=label, **kwargs)
    
    # 设置x轴标签
    axes.set_xlabel(xlabel)
    
    # 设置y轴标签
    axes.set_ylabel(ylabel)
    
    # 设置标题
    axes.set_title(title)
    
    # 设置在图例中显示各标签
    axes.legend()
    
    return figure, axes
