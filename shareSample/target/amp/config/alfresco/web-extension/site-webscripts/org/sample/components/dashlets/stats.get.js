<import resource="classpath:/alfresco/templates/org/alfresco/import/alfresco-util.js">

var connector = remote.connect("alfresco");
var data = connector.get("/count.json");
var result = eval('(' + data + ')');
model.count = result["count1"];
