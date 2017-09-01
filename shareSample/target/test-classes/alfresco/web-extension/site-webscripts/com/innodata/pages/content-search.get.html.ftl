<@processJsonModel group="share"/>
<script> 
function searchContent(){
	var searchTerm = document.getElementById("searchTerm").value;
	if(searchTerm == null || searchTerm == ""){
		alert("Provide The KeyWord Please");
		document.getElementById("searchTerm").focus();				 	 
	}
	else{
		window.location.href="../../site/icon-iec/dp/ws/faceted-search#searchTerm=" + searchTerm + "&scope=icon-iec";
	}
}
</script>
