// extract file attributes
var typeName = args.typeName;      //  MAG
var typeId = args.typeId;                     //t1
var typeDesc = args.typeDesc;           //test
var msg = "null"; 

//create type directory
var fileType = "DocTypes/" + typeName;        //DocTypes/MAG
var folderNode = companyhome.childByNamePath(fileType);            //MAG dir

if( folderNode == null ) {
         var temp = companyhome.childByNamePath("DocTypes");
          var newType = temp.createFolder(typeName);
          msg = "new type created";
          }
else if( folderNode != null){
        msg = "DocType already exist";
         }
model.upload = "docType Creation MSG : " + msg;