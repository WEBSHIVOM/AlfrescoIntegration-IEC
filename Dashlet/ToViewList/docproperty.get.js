
var connector = remote.connect("alfresco");
var data = connector.get("/sample/docprop.json");

// create json object from data
var result = eval('(' + data + ')');
model.docprop = result["docprop"];
