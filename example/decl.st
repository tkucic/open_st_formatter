PROGRAM x09_CaseVsIfElsif
VAR CONSTANT
	cNrRuns : USINT(0..9) := 5;
	cRepeatCalcTimes : UDINT := 1000000; //1 Million times
END_VAR
VAR_INPUT
	vStart : BOOL := FALSE;
END_VAR
VAR
	vDone : BOOL := FALSE;
	vRunsCompleted : USINT := 0;
	vStartTime : LTIME;
	vTotalTime : LTIME;	
	
	vTest1 : dtSpeedTest;
	vTest2 : dtSpeedTest;
	vTest3 : dtSpeedTest;
	vTest4 : dtSpeedTest;
	vTest5 : dtSpeedTest;
	vTest6 : dtSpeedTest;
	i : UDINT;

	
	//Test vars
	vFirstIndex : INT := 15;
	vMiddleIndex : INT := 50;
	vLastIndex : INT := 99;
	
	vResultFirst : INT; //Should be 0
	vResultMiddle : INT; //Should be 50
	vResultLast : INT;//Should be 99

END_VAR