(*Runs once on event's rising edge*)
vDone 		:= FALSE;
vStartTime 	:= LTIME();

FOR vRunsCompleted:=0 TO cNrRuns DO
	Measure();
END_FOR

vTotalTime := LTIME() - vStartTime;

vTest1.Desc				:= 'Time to run first branch of IF ELSIF 1 Million times';
vTest1.AverageExecTime 	:= calcAvg(vTest1.Results);
vTest2.Desc				:= 'Time to run middle branch of IF ELSIF 1 Million times';
vTest2.AverageExecTime 	:= calcAvg(vTest2.Results);
vTest3.Desc				:= 'Time to run last branch of IF ELSIF 1 Million times';
vTest3.AverageExecTime 	:= calcAvg(vTest3.Results);
vTest4.Desc				:= 'Time to run first branch of CASE 1 Million times';
vTest4.AverageExecTime 	:= calcAvg(vTest4.Results);
vTest5.Desc				:= 'Time to run middle branch of CASE 1 Million times';
vTest5.AverageExecTime 	:= calcAvg(vTest5.Results);
vTest6.Desc				:= 'Time to run last branch of CASE 1 Million times';
vTest6.AverageExecTime 	:= calcAvg(vTest6.Results);
	
vDone := TRUE;
vStart:= FALSE;
