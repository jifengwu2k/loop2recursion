import pandas as pd


def calculate_increases(dataframe, from_executable_type, to_executable_types, data_column, increase_formatter=lambda to_executable_type: f'{to_executable_type}_increase'):
    extracted_and_sorted_dataframe = dataframe[dataframe['executable_type'].isin({from_executable_type, *to_executable_types})].sort_values(by=['benchmark', 'executable_type'])
    from_executable_type_data = extracted_and_sorted_dataframe[extracted_and_sorted_dataframe['executable_type'] == from_executable_type][data_column].values
    
    to_executable_types_data = {
        to_executable_type: extracted_and_sorted_dataframe[extracted_and_sorted_dataframe['executable_type'] == to_executable_type][data_column].values
        for to_executable_type in to_executable_types
    }
    
    increases_data = {
        to_executable_type: (to_executable_types_data[to_executable_type] - from_executable_type_data) / from_executable_type_data
        for to_executable_type in to_executable_types
    }
    
    dataframe_data = {
        'benchmark': extracted_and_sorted_dataframe[extracted_and_sorted_dataframe['executable_type'] == from_executable_type]['benchmark'].values,
        from_executable_type: from_executable_type_data
    }
    
    for to_executable_type in to_executable_types:
        dataframe_data[increase_formatter(to_executable_type)] = increases_data[to_executable_type]
    
    
    return pd.DataFrame(
        dataframe_data
    )
