{

"docprop" : [
<#list companyhome.childByNamePath["Sites/icon-iec-collaboration-network/documentLibrary"].children as child>
<#if child.isDocument>
{
"name" : "${child.properties.name}",
"title" : "${child.properties.title}" ,
"creator" : "${child.properties.creator}",
"id" :"${child.properties["ICON-IEC:id"]}",
"scope" : "${child.properties["ICON-IEC:scope"]}",
"purpose" :  "${child.properties["ICON-IEC:purpose-justification"]}",
"noderef" : "${child.nodeRef}",
"nodeid" : "${child.nodeRef.id}",
"cdmonth" : "${child.properties["ICON-IEC:cd-month"]}",
"cdyear" : "${child.properties["ICON-IEC:cd-year"]}",
"ismonth" : "${child.properties["ICON-IEC:is-month"]}",
"isyear" : "${child.properties["ICON-IEC:is-year"]}",
"totalYes":"${child.properties["vm_m:votecountyes"]}",
"totalNo":"${child.properties["vm_m:votecountno"]}"





}

<#if child_has_next> , </#if>
</#if>
</#list>
]
}