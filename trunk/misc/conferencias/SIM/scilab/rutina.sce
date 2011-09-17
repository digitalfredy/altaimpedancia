exec("analin.sci");
time=A.time;
Gs=A.values;
[tr, tp, ov, ts]=analin(time, Gs, 0.91)
disp(tr,"risetime:")
disp(tp,"peaktime:")
disp(ov,"overshoot")
disp(ts,"settlingtime")