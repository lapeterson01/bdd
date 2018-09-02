require('pry')

def queen_attack?(queencoord, victimcoord)
    queencoord[1].eql?(victimcoord[1]) |
    queencoord[0].eql?(victimcoord[0]) |
    (queencoord[1] - victimcoord[1]).eql?(queencoord[0] - victimcoord[0])
end