// extract file attributes

var vote = args.vote;

  var nodefile = companyhome.childByNamePath("UploadDoc/xuv.pdf");
  
if( nodefile.properties["vm:vote"]==""){

  nodefile.properties["vm:vote"]=vote;
  nodefile.properties["vm:voteduser"]=person.properties.userName;
  
}
else
{
 nodefile.properties["vm:vote"]=vote;
nodefile.properties["vm:voteduser"]=person.properties.userName;
nodefile.properties["vm:votecount"]=1;
}
nodefile.save();
 