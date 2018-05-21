//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Every signal becomes green with in its specified clock time
*/
A[] (SignalK2.Green imply SignalK2.z <= 34) and (SignalK1.Green imply SignalK1.w <= 34) and (SignalNust.Green imply SignalNust.y <= 6) and (SignalG11.Green imply SignalG11.x <= 6)

/*
If second signal on Kashmir Highway is green then all other are not green
*/
A[] SignalK2.Green imply not (SignalNust.Green && SignalG11.Green && SignalK1.Green)

/*
If first signal on Kashmir Highway is green then all other are not green
*/
A[] SignalK1.Green imply not (SignalNust.Green && SignalG11.Green && SignalK2.Green)

/*
If NUST signal is green then all other are not green
*/
A[] SignalNust.Green imply not (SignalG11.Green && SignalK1.Green && SignalK2.Green)

/*
If G11 signal is green then all other are not green
*/
A[] SignalG11.Green imply not (SignalNust.Green && SignalK1.Green && SignalK2.Green)

/*
If 2nd signal on Kashmir highway is green then all other are red
*/
A[] SignalK2.Green imply (SignalNust.Red && SignalK1.Red && SignalG11.Red)

/*
If 1st signal on Kashmir highway is green then all other are red
*/
A[] SignalK1.Green imply (SignalG11.Red && SignalNust.Red && SignalK2.Red)

/*
If Nust signal is green then all other are red
*/
A[] SignalNust.Green imply (SignalG11.Red && SignalK1.Red && SignalK2.Red)

/*
If G11 signal is green then all other are red
*/
A[] SignalG11.Green imply (SignalNust.Red && SignalK1.Red && SignalK2.Red)

/*
Making sure there are no deadlocks in the system
*/
A[] not deadlock
