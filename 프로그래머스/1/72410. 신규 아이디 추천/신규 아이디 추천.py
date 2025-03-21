import re

def solution(new_id):
    answer = ''
    ## 1
    new_id = new_id.lower()
    ## 2
    for char in new_id:
        if not re.match(r'[a-z0-9\-_.]',char):
            new_id = new_id.replace(char,'')
    print(f'2 : {new_id}')
    ## 3
    for i in range(len(new_id)):
        new_id = new_id.replace('..','.')
    print(f'3 : {new_id}')
    ## 4
    new_id = new_id.strip('.')
    print(f'4 : {new_id}')
    ## 5
    if len(new_id) == 0:
        new_id = 'a'
    print(f'5 : {new_id}')
    ## 6
    new_id = new_id[:15]
    new_id = new_id.strip('.')
    print(f'6 : {new_id}')
    ## 7
    if len(new_id) <= 2:
        while len(new_id) != 3:
            new_id += new_id[len(new_id)-1]
    print(f'7 : {new_id}')

    return new_id