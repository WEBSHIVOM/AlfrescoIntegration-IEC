<@markup id="css" >
   <#-- CSS Dependencies -->

</@>

<@markup id="js">
   <#-- JavaScript Dependencies -->
</@>

<@markup id="widgets">
   <@createWidgets group="dashlets"/>
</@>

<@markup id="post">
</@>

<@markup id="html">
   <@uniqueIdDiv>   
		<div class="dashlet">
			<div class="title">${msg("header.label")}
			<input type="text" id="term">
			<select id="filter">
				<option value="id">Id</option>
				<option value="title">Title</option>
				<option value="name">Name</option>
				<option value="scope">Scope</option>
				<option value="creator">Created By</option>
				<option value="purpose">Purpose & Justification</option>
			 </select>
			<button onclick="searchProposal()">Search</button>			
			</div>   
			<div class="body dashlet-padding">
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(odd) {
    background-color: #dddddd;
}
</style>
</head>

<table id="metaTable"></table>	
<script>
function searchProposal() {

 //alert("function");
 
 var term = document.getElementById("term").value;
	//alert(term);
	var filter = document.getElementById("filter").value;
	//alert(filter);
	var th = "<tr><th>Id</th><th>Name</th><th>TiTle</th><th>Created By</th><th>Scope</td><th>Purpose & justification</th><th>CD Date</th><th>IS Date</th><th>Actions</th></tr>";
	//alert(th);
	var tr = "";
  
	 <#list docprop as t>
//alert("${t.id}");
  </#list>
  
  
  switch (filter) {
    case "id":
	//alert("id: ");
        <#list docprop as t>
			if("${t.id}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
		
	case "title":
	//alert("title: ");
        <#list docprop as t>
			if("${t.title}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
		
	case "name":
	//alert("name: ");
        <#list docprop as t>
			if("${t.name}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
		
	case "scope":
	//alert("scope: ");
        <#list docprop as t>
			if("${t.scope}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
		
	case "creator":
	//alert("creator: ");
        <#list docprop as t>
			if("${t.creator}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
		
	case "purpose":
	//alert("purpose: ");
        <#list docprop as t>
			if("${t.purpose}" == term){
				//alert("if : matched");
				tr += "<tr><td>${t.id}</td><td>${t.name}</td><td>${t.title}</td><td>${t.creator}</td><td>${t.scope}</td><td>${t.purpose}</td><td>${t.cdmonth} / ${t.cdyear}</td><td>${t.ismonth} / ${t.isyear}</td></tr>";
			}
		</#list>
		//alert("tr final:" + tr);
		document.getElementById("metaTable").innerHTML = th + tr;
        break;
}
  
  
	
}
</script>


				
				
			</div>
		</div>
   </@>
</@>