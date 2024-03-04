import re

def solution(my_string):
    answer = 0
    filt_str = re.sub('[a-zA-Z]',' ',my_string)
    st_list = filt_str.split(' ')
    
    for i in st_list:
        answer = answer + int(i) if i != '' else answer
    
    return answer
    
            
        