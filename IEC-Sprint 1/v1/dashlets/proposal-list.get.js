<import resource="classpath:/alfresco/templates/org/alfresco/import/alfresco-util.js">

function widgets()
{
	
var connector = remote.connect("alfresco");
var data = connector.get("/sample/docprop.json");
var result = eval('(' + data + ')');
	
   // Widget instantiation metdata...
   var dashletTitleBarActions = {
      id : "DashletTitleBarActions", 
      name : "Alfresco.widget.DashletTitleBarActions",
      useMessages : false,
      options : {
         actions: [
            {
               cssClass: "help",
               bubbleOnClick:
               {
                  message: msg.get("dashlet.help")
               },
               tooltip: msg.get("dashlet.help.tooltip")
            }
         ]
      }
   };
   
   
   model.docprop = result["docprop"];
   model.widgets = [dashletTitleBarActions];
}

widgets();