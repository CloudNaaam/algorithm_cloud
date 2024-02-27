def solution(spell, dic):
    answer = 0
    spell.sort()
    spell_str = ''
    
    for i in spell:
        spell_str += i
        
    for i in dic:
        i = ''.join(sorted(list(set(i))))
        if i == spell_str:
            answer += 1
                 
    return answer if answer > 0 else 2
            