// extract file attributes
var title = args.title;
var description = args.description;
var type = args.type;

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
  var fileType = "DocTypes/" + type;
  var folderNode = companyhome.childByNamePath(fileType);
 
  if(folderNode == null) {
         folderNode = companyhome.createFolder(fileType);
          }
  upload = folderNode.createFile(file.filename) ;
  upload.properties.content.guessMimetype(file.filename);
  upload.properties.content.write(file.content);
  upload.properties.title = title;
  upload.properties.description = description;
  upload.save();
  // setup model for response template
  model.upload = upload;
}