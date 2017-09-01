var msg = args.q;
model.msg = msg;

model.jsonModel = {
	    widgets: [{
	        id: "SET_PAGE_TITLE",
	        name: "alfresco/header/SetTitle",
	        config: {
	            title: "meta Search"
	        }
	    }, 
	    {
	        id: "MY_HORIZONTAL_WIDGET_LAYOUT",
	        name: "alfresco/layout/VerticalWidgets",
	        config: {
	            widgetWidth: 50,
	            widgets: [	              
	                {
	                	name: "example/widgets/TemplateWidget"
		            }
	            ]
	        }
	    }
	    
	    ]
	};