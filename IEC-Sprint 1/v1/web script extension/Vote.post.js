var vote = args.vote;
var fileName = args.fileName;

var nodefile = companyhome.childByNamePath("Sites/icon-iec-collaboration-network/documentLibrary/" + fileName);

var countyes=nodefile.properties["vm_m:votecountyes"];
var countno=nodefile.properties["vm_m:votecountno"];

if(vote!="3"){
            if( vote=="1"){
              nodefile.properties["vm_m:voteval"]=vote;
              nodefile.properties["vm_m:voteduseryes"]=person.properties.userName;
              nodefile.properties["vm_m:votecountyes"]++;
               }
          else{
           nodefile.properties["vm_m:voteval"]=vote;
           nodefile.properties["vm_m:voteduserno"]=person.properties.userName;
            nodefile.properties["vm_m:votecountno"]++;
     }
}
nodefile.save();
 