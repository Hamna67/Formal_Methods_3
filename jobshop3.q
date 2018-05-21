//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
No deadlock exists in the model
*/
A[] not deadlock

/*
If one Jobber is working on a hard job then no other Jobber is working on a hard job or a work average hammer job
*/
A[] Hammer.taken == (Jobber1.work_hard || Jobber2.work_hard || Jobber3.work_hard ||  Jobber4.work_hard ||  Jobber1.work_avg_hammer || Jobber2.work_avg_hammer || Jobber3.work_avg_hammer || Jobber4.work_avg_hammer)

/*
If mallet is taken then atleast one of the Jobbers is working on an average job which requires the use of mallet
*/
A[] Mallet.taken == (Jobber1.work_avg_mallet || Jobber2.work_avg_mallet || Jobber3.work_avg_mallet || Jobber4.work_avg_mallet)
