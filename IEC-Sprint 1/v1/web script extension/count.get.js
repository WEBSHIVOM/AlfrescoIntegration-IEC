var contentDocs = search.luceneSearch('TYPE:\"cm:content"\ AND PATH:\"//app:company_home/st:sites/cm:icon-iec-collaboration-network/cm:documentLibrary//*\"');
var totalCnt = contentDocs.length; 
 model.allContent = totalCnt ;

var contentType= search.luceneSearch('+PATH:\"/app:company_home/st:sites/cm:icon-iec-collaboration-network/*"\ +@\\{http\\://www.alfresco.org/model/content/1.0\\}content.mimetype:application/pdf');

var totalCnt1 = contentType.length; 
 model.typeContent = totalCnt1 ;