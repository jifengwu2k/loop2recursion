from matplotlib import pyplot as plt
import numpy as np


def grouped_bar_chart(groups, labels, data_by_label, xlabel='', ylabel='', title='', **kwargs):
    # 所有的组
    group_list = list(groups)
    # 所有的标签
    label_list = list(labels)
    
    # 各组标注的位置
    positions_of_group_captions = np.arange(len(group_list))
    
    # 标签的数量
    number_of_labels=len(label_list)
    
    # 条形的宽度
    bar_width = 1 / (number_of_labels + 1)
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 各组第一个条形的位置
    positions_of_first_bar_in_each_group=positions_of_group_captions - ((number_of_labels - 1) * bar_width / 2)
    
    # 遍历各个标签
    for i, (label, label_data) in enumerate(zip(label_list, data_by_label)):
        # 得到该标签对应的数据，每组一个数据
        label_data_list = list(label_data)
        
        # 计算该标签对应的数据画到条形统计图上的各条形的位置，每组一个条形
        positions_of_bars_in_each_group=positions_of_first_bar_in_each_group + i * bar_width
        
        # 以条形的方式，绘制该标签对应的数据
        bar = axes.bar(positions_of_bars_in_each_group, label_data_list, bar_width, label=label, **kwargs)
    
    # 设置显示各组标注的位置
    axes.set_xticks(positions_of_group_captions)
    
    # 设置在那些位置现实各组标注
    axes.set_xticklabels(group_list)
    
    # 设置x轴标签
    axes.set_xlabel(xlabel)
    
    # 设置y轴标签
    axes.set_ylabel(ylabel)
    
    # 设置标题
    axes.set_title(title)
    
    # 设置在图例中显示各标签
    axes.legend()
    
    return figure, axes
