# bismillahirrahmanirrahim

from matplotlib import pyplot as plt
import numpy as np
import pandas as pd


# 从DataFrame中自动绘制条形统计图
# 参数说明：
# dataframe：DataFrame对象
# data_column：条形呈现DataFrame对象哪一列的数据
# group_column：根据DataFrame对象的哪一列给条形分组
# kwargs：其他传递给axes.bar()，用于绘制条形统计图的参数（如log=True）
def bar_chart_from_dataframe(dataframe, data_column, group_column, **kwargs):
    # 所有的组
    groups=dataframe[group_column].unique()
    
    # 各组标注的位置
    positions_of_group_captions=np.arange(len(groups))
    
    # 条形的宽度
    bar_width = 1 / 2
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 得到数据
    data = dataframe[data_column]
        
    # 以条形的方式，绘制该标签对应的数据
    bar = axes.bar(positions_of_group_captions, data, bar_width, **kwargs)
    
    axes.axhline(0)
    
    # 设置显示各组标注的位置
    axes.set_xticks(positions_of_group_captions)
    
    # 设置在那些位置现实各组标注
    axes.set_xticklabels(groups)
    
    axes.set_ylabel(data_column)
    
    return figure, axes

# 从DataFrame中自动绘制分组条形统计图
# 参数说明：
# dataframe：DataFrame对象
# data_column：条形呈现DataFrame对象哪一列的数据
# group_bars_by：根据DataFrame对象的哪一列给条形分组
# label_bars_by：根据DataFrame对象的哪一列给条形打标签
# title：标题
# label_name_replacer：标题名替换函数
# kwargs：其他传递给axes.bar()，用于绘制条形统计图的参数（如log=True）
def grouped_bar_chart_from_dataframe(dataframe, data_column, group_bars_by, label_bars_by, title='', label_name_replacer=lambda x: x, **kwargs):
    # 所有的组
    groups=dataframe[group_bars_by].unique()
    # 所有的标签
    labels=dataframe[label_bars_by].unique()
    
    # 各组标注的位置
    positions_of_group_captions=np.arange(len(groups))
    
    # 标签的数量
    number_of_labels=len(labels)
    
    # 条形的宽度
    bar_width = 1 / (number_of_labels + 1)
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 各组第一个条形的位置
    positions_of_first_bar_in_each_group=positions_of_group_captions - ((number_of_labels - 1) * bar_width / 2)
    
    # 遍历各个标签
    for (i, label) in enumerate(labels):
        # 得到该标签对应的数据，每组一个数据
        data_in_each_group = dataframe[dataframe[label_bars_by] == label][data_column]
        
        # 计算该标签对应的数据画到条形统计图上的各条形的位置，每组一个条形
        positions_of_bars_in_each_group=positions_of_first_bar_in_each_group + i * bar_width
        
        # 以条形的方式，绘制该标签对应的数据
        new_label = label_name_replacer(label)
        bar = axes.bar(positions_of_bars_in_each_group, data_in_each_group, bar_width, label=new_label, **kwargs)
    
    # 设置显示各组标注的位置
    axes.set_xticks(positions_of_group_captions)
    
    # 设置在那些位置现实各组标注
    axes.set_xticklabels(groups)
    
    # 设置y轴标签
    axes.set_ylabel(label_name_replacer(data_column))
    
    # 设置标题
    ax.set_title(title)
    
    # 设置在图例中显示各标签
    axes.legend()
    
    return figure, axes


# 从DataFrame中自动绘制分组箱形图
# 参数说明：
# dataframe：DataFrame对象
# data_column：箱形呈现DataFrame对象哪一列的数据
# group_bars_by：根据DataFrame对象的哪一列给箱形分组
# label_bars_by：根据DataFrame对象的哪一列给箱形打标签
# kwargs：其他传递给axes.boxplot()，用于绘制条形统计图的参数（如notch=True）
def grouped_box_chart_from_dataframe(dataframe, data_column, group_bars_by, label_bars_by, **kwargs):
    # 所有的组
    groups=dataframe[group_bars_by].unique()
    # 所有的标签
    labels=dataframe[label_bars_by].unique()
    
    # 各组标注的位置
    positions_of_group_captions=np.arange(len(groups))
    
    # 标签的数量
    number_of_labels=len(labels)
    
    # 箱形的宽度
    box_width = 1 / (number_of_labels + 1)
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 各组第一个箱形的位置
    positions_of_first_box_in_each_group=positions_of_group_captions - ((number_of_labels - 1) * box_width / 2)
    
    # 遍历各个标签
    for (i, label) in enumerate(labels):
        # 得到该标签对应的数据，每组一个数组
        data_in_each_group = [
            dataframe[(dataframe[label_bars_by] == label) & (dataframe[group_bars_by] == group)][data_column]
            for group in groups
        ]
        
        # 计算该标签对应的数据画到箱形图上的各箱形的位置，每组一个箱形
        positions_of_boxes_in_each_group=positions_of_first_box_in_each_group + i * box_width
        
        # 以箱形的方式，绘制该标签对应的数据
        boxplot = axes.boxplot(
            x=data_in_each_group,
            positions=positions_of_boxes_in_each_group,
            widths=box_width,
            **kwargs
        )
        
        # 绘制一个空的直线，用于创建图例
        line, *_ = axes.plot([], label=label)
        
        # 根据直线的颜色，调整箱形的颜色
        line_color = line.get_color()
        
        plt.setp(boxplot['boxes'], color=line_color)
        plt.setp(boxplot['whiskers'], color=line_color)
        plt.setp(boxplot['caps'], color=line_color)
        plt.setp(boxplot['medians'], color=line_color)
    
    # 设置显示各组标注的位置
    axes.set_xticks(positions_of_group_captions)
    
    # 设置在那些位置现实各组标注
    axes.set_xticklabels(groups)
    
    axes.set_ylabel(data_column)
    
    # 设置在图例中显示各标签
    axes.legend()
    
    return figure, axes

def grouped_average_bar_chart_from_dataframe(dataframe, data_column, group_bars_by, label_bars_by, **kwargs):
    # 所有的组
    groups=dataframe[group_bars_by].unique()
    # 所有的标签
    labels=dataframe[label_bars_by].unique()
    
    # 各组标注的位置
    positions_of_group_captions=np.arange(len(groups))
    
    # 标签的数量
    number_of_labels=len(labels)
    
    # 条形的宽度
    bar_width = 1 / (number_of_labels + 1)
    
    # 得到用户绘图的figure和axes对象
    figure, axes=plt.subplots()
    
    # 各组第一个条形的位置
    positions_of_first_bar_in_each_group=positions_of_group_captions - ((number_of_labels - 1) * bar_width / 2)
    
    # 遍历各个标签
    for (i, label) in enumerate(labels):
        # 得到该标签对应的数据，每组一个数据
        data_in_each_group = [
            dataframe[(dataframe[label_bars_by] == label) & (dataframe[group_bars_by] == group)][data_column].mean()
            for group in groups
        ]
        
        # 计算该标签对应的数据画到条形统计图上的各条形的位置，每组一个条形
        positions_of_bars_in_each_group=positions_of_first_bar_in_each_group + i * bar_width
        
        # 以条形的方式，绘制该标签对应的数据
        axes.bar(positions_of_bars_in_each_group, data_in_each_group, bar_width, label=label, **kwargs)
    
    # 设置显示各组标注的位置
    axes.set_xticks(positions_of_group_captions)
    
    # 设置在那些位置现实各组标注
    axes.set_xticklabels(groups)

    axes.set_ylabel(data_column)
    
    return figure, axes
