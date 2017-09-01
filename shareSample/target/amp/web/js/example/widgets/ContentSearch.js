define(["dojo/_base/declare",
        "dijit/_WidgetBase",
        "alfresco/core/Core",
        "dijit/_TemplatedMixin",
        "dojo/text!./templates/ContentSearch.html"
    ],
    function(declare, _Widget, Core, _Templated, template) {
        return declare([_Widget, Core, _Templated], {
            templateString: template,
            i18nRequirements: [ {i18nFile: "./i18n/ContentSearch.properties"} ],
            cssRequirements: [{cssFile:"./css/custom.css"}],
            
            buildRendering: function example_widgets_TemplateWidget__buildRendering() {
                this.greeting = 'hello-label';

                this.inherited(arguments);

            }
        });
});