function [risetime, peaktime, overshoot, settlingtime] = analin(time, gs, settling_amp)
// analin - analysis of a simulation (time response) of linear system
//
// Calling Sequence
// [risetime, peaktime, overshoot, settlingtime] = analin(time, gs, settling_amp) // 
// Parameters
// time:
// gs: 
// settling_amp: 
// risetime: 
// peaktime: 
// overshoot: 
// settlingtime: 
// 
// Description
// Return the rise time, peak time, maximus overshoot an the settling time of a simulation (time response) of linear system
// Derivated work from
//  http://lacaja.zxq.net/eng/control/TransientResponse/TransientResponse-4_Program_5_6_Ogata_4editio.php
// 
// Examples
// 
// 
// See Also
// csim
// 
// Authors
// Jorge Ernesto Guevara Cuenca jorge.guevara@fuac.edu.co

    funcprot(0)
    delta_time=time(2)-time(1)
    r=1
    while gs(r)<settling_amp+delta_time
        r=r+1
    end
    risetime=(r-1)*delta_time
    [gsmax,rp]=max(gs)
    peaktime=(rp-1)*delta_time
    overshoot=((gsmax-settling_amp)*100)/settling_amp
    rmax=time($)/delta_time
    if ( time(1) == 0 ) then
       k=rmax+1
    elseif ( time(1) > 0 ) then
       k=rmax
    else
       disp("Time can not be negative")
    end
    two_percent=(settling_amp/100)*2
    while gs(k)>settling_amp-two_percent & gs(k)<settling_amp+two_percent;
        k=k-1
    end
    settlingtime=(k-1)*delta_time;
endfunction