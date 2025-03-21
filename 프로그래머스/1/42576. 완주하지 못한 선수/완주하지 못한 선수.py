def solution(participant, completion):
    players = {}
    
    all_p = participant + completion
    
    for i in all_p:
        if i not in players:
            players[i] = 1
        else:
            players[i] += 1
    
    for i in players:
        if players[i] % 2 != 0:
            return i
        
        
    

        