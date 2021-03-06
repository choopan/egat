insert into `failure_databases` (egatsn, eventdate, counterOLTC, environment, failurestatus, failuredetail, downdate, `update`, workorder, failuregroup, failurepart, failuremode, failurereason, manage) 
select G,  
concat(substring(A, 5,4), "-", substring(A,3,2),"-", substring(A,1,2)), 
N, 
SUBSTRING_INDEX(Q, '.', -1),  
SUBSTRING_INDEX(R, '.', -1),  
SUBSTRING_INDEX(S, '.', -1),
concat(substring(T, 5,4), "-", substring(T,3,2),"-", substring(T,1,2), " ", substring(U,1,2),":",substring(U,3,2),":00"),
concat(substring(V, 5,4), "-", substring(V,3,2),"-", substring(V,1,2), " ", substring(W,1,2),":",substring(W,3,2),":00"),
X,  
SUBSTRING_INDEX(Z, '.', -1),  
SUBSTRING_INDEX(Y, '.', -1),
SUBSTRING_INDEX(AA, '.', -1),  
SUBSTRING_INDEX(AB, '.', -1), 
SUBSTRING_INDEX(AC, '.', -1) from Sheet1
