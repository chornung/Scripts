/*   Search for PeopleSoft queries by Description Text 
     */

Declare @txt varchar(150)
Set @txt = '%hs%'

Select OPRID
     , QRYNAME
	 , DESCR
	 , LASTUPDOPRID
	 , LASTUPDDTTM
	 , DESCR 
  From PSQRYDEFN 
 Where UPPER(DESCR) like UPPER(@txt)
order by 2