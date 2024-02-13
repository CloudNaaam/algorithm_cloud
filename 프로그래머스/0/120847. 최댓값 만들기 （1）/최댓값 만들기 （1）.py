def solution(numbers):
    first = numbers.pop(numbers.index(max(numbers)))
    second = numbers.pop(numbers.index(max(numbers)))

    return first * second