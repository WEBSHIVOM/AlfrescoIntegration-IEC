define(["dojo/_base/declare","dijit/_WidgetBase","alfresco/core/Core","dijit/_TemplatedMixin","dojo/text!./templates/NewWorkItemProposal.html"],function(a,f,d,e,b){return a([f,d,e],{templateString:b,i18nRequirements:[{i18nFile:"./i18n/TemplateWidget.properties"}],cssRequirements:[{cssFile:"./css/custom.css"}],buildRendering:function c(){this.greeting="hello-label";this.inherited(arguments)}})});