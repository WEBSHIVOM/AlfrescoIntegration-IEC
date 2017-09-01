{

"docprop" : [
<#list companyhome.childByNamePath["Sites/icon-iec/documentLibrary"].children as child>
<#if child.isDocument>
{
"name" : "${child.properties.name}",
   
"title" : "${child.properties.title}" ,

"creator" : "${child.properties.creator}",

"noderef" : "${child.nodeRef}",

"id" : "${child.properties["ICON-IEC:id"]}",

"scope" : "${child.properties["ICON-IEC:scope"]}",

"purpose-justification" : "${child.properties["ICON-IEC:purpose-justification"]}",

"cd-month" : "${child.properties["ICON-IEC:cd-month"]}",

"cd-year" : "${child.properties["ICON-IEC:cd-year"]}",

"is-month" : "${child.properties["ICON-IEC:is-month"]}",

"is-year" : "${child.properties["ICON-IEC:is-year"]}",

}

<#if child_has_next> , </#if>
</#if>
</#list>
]
}