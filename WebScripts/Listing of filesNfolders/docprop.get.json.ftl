{

"docprop" : [
<#list companyhome.childByNamePath["Data Dictionary"].children as child>
{
    "name" : "${child.properties.name}" ,
   
    "creator" : "${child.properties.creator}",

   "CreatedDate" : "${child.properties.created?datetime}"
}
<#if child_has_next> , </#if>

</#list>
]
}
