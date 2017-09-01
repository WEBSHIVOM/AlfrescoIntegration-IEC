<@processJsonModel group="share"/>
<script>
function searchProposal() {

 alert("function");
 
 var term = document.getElementById("term").value;
	alert(term);
	var filter = document.getElementById("filter").value;
	alert(filter);
	var tr = "";
  
  
  switch (filter) {
    case "id":
	alert("id:");
        <#list docprop as t>
		if("${t.id}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
     
    case "title":
	alert("title:");        
		i<#list docprop as t>
		if("${t.title}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>		
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
        
    case "name":
	alert("name:");       
		<#list docprop as t>
		if("${t.name}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>		
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
        
    case "scope":
	alert("scope:");       
		<#list docprop as t>
		if("${t.scope}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>		
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
     
    case "purpose":
	alert("purpose:");       
		<#list docprop as t>
		if("${t.purpose}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>		
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
        
    case "creator":
	alert("creator:");        
		<#list docprop as t>
		if("${t.creator}" == term){
			//alert("if : matched");
			tr += "<tr><td>${t.title}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
		}
		</#list>		
		alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = tr;
        break;
}
  
  
	
}
</script>