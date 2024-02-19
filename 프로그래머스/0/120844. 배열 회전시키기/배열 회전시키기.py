def solution(numbers, direction):
    cp = numbers.pop(0) if direction == 'left' else numbers.pop(-1)
    numbers.insert(len(numbers),cp) if direction == 'left' else numbers.insert(0,cp)
    
    return numbers