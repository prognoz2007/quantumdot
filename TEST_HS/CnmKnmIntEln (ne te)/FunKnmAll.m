%% DONE
function rez=FunKnmAll(TableZeroBesAll)
    par=Param();
    RqTube=par('RQtubeDivRb');
    rez=TableZeroBesAll/RqTube;
end