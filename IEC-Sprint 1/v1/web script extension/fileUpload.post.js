// extract file attributes
var id1=args.id1;
var id2=args.id2;
var id=id1 + id2;

var title = args.title;
var scope=args.scope;
var purpose=args.purposeNjustification;
var cdMonth = args.cdMonth;
var cdYear = args.cdYear;
var isMonth = args.isMonth;
var isYear = args.isYear;

// extract file
var file = null;
for each (field in formdata.fields)
{
  if (field.name == "file" && field.isFile)
  {
    file = field;
  }
}

// ensure file has been uploaded
if (file.filename == "")
{
  status.code = 400;
  status.message = "Uploaded file cannot be located";
  status.redirect = true;
}
else
{
  // create document in company home from uploaded file
 var folderNode = companyhome.childByNamePath("Sites/icon-iec-collaboration-network/documentLibrary");

 upload = folderNode.createFile(file.filename) ;
 upload.properties.content.guessMimetype(file.filename);  upload.properties.content.write(file.content);
 upload.properties.title = title;
 upload.properties['ICON-IEC:id']= id;
 upload.properties['ICON-IEC:scope']= scope;
upload.properties['ICON-IEC:purpose-justification']= purpose;
upload.properties['ICON-IEC:cd-month']= cdMonth;
upload.properties['ICON-IEC:cd-year']=cdYear;
upload.properties['ICON-IEC:is-month']= isMonth;
upload.properties['ICON-IEC:is-year']=isYear;

 upload.save();

  // setup model for response template
  model.upload = upload;
}