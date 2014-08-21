<%@ include file="../includes/header.jsp"%>
Status: ${ result }

<h3>Users From Database</h3>
<c:if  test="${!empty users}">
<table class="table table-hover">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.firstname} ${ user.lastname }</td>
        <td>${user.email}</td>
        <td><a href="delete/${user.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>

<select name="users" id="nameCombo">
	
	<option>Select name</option>
	<c:forEach items="${users}" var="user">
		<option value="${ user.id }">${ user.firstname }</option>
	</c:forEach>

</select>

<br/><br/>
<div id="nicknameComboDiv">
	<!--  this is where the ajax nickname combobox is loaded  -->
</div>

<%@ include file="../includes/footer.jsp"%>