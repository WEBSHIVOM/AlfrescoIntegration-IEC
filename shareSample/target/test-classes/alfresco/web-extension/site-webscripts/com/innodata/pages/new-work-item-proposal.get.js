<import resource="classpath:/alfresco/templates/org/alfresco/import/alfresco-util.js">

var connector = remote.connect("alfresco");
var data = connector.get("/prList.json");
var result = eval('(' + data + ')');
model.prList = result["prList"];

model.jsonModel = {
	    widgets: [{
	        id: "SET_PAGE_TITLE",
	        name: "alfresco/header/SetTitle",
	        config: {
	            title: "New Work Item Proposal"
	        }
	    }, 
	    {
	        id: "MY_HORIZONTAL_WIDGET_LAYOUT",
	        name: "alfresco/layout/VerticalWidgets",
	        config: {
	            widgetWidth: 50,
	            widgets: [	              
	                {
	                	name: "example/widgets/NewWorkItemProposal"
		            }
	            ]
	        }
	    }
	    
	    ]
	};