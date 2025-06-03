def solution(board, moves):

    answer = 0
    dolls = []
    current_num = 0
    new_num = 0
    
    for move in moves:
        for i in range(len(board)):
            if board[i][move-1] == 0:
                continue
            else:
                current_num = new_num
                new_num = board[i][move-1]
                if current_num == new_num:
                    dolls.pop()
                    new_num = dolls[-1] if len(dolls) > 0 else 0
                    answer += 2
                else:
                    dolls.append(board[i][move-1])
                    
                board[i][move-1] = 0
                break
        
    return answer
