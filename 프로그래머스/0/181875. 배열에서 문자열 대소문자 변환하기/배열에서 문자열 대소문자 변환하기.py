def solution(strArr):
    answer = []
    answer_chr = ''
    
    for i in range(len(strArr)):
        answer_chr = ''
        for j in strArr[i]:
            if i % 2 == 0:
                if j == j.upper():
                    j = j.lower()
                    answer_chr+=j
                else: answer_chr+=j
            else:
                if j == j.lower():
                    j = j.upper()
                    answer_chr+=j
                else: answer_chr+=j
        answer.append(answer_chr)
    
    return answer