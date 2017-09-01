<import resource="classpath:/alfresco/templates/org/alfresco/import/alfresco-util.js">

var connector = remote.connect("alfresco");
var data = connector.get("/nwipList.json");
var result = eval('(' + data + ')');
model.nwipList = result["nwipList"];


model.jsonModel = {
	    widgets: [{
	        id: "SET_PAGE_TITLE",
	        name: "alfresco/header/SetTitle",
	        config: {
	            title: "List Of Proposal"
	        }
	    }, 
	    {
	        id: "MY_HORIZONTAL_WIDGET_LAYOUT",
	        name: "alfresco/layout/VerticalWidgets",
	        config: {
	            widgetWidth: 50,
	            widgets: [	              
	                {
	                	name: "example/widgets/ListOfProposals"
		            }
	            ]
	        }
	    }
	    
	    ]
	};