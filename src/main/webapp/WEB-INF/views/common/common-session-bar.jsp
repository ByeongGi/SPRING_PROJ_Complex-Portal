<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%-- 세션 사용을 허가 하는 디렉티브 --%>
<%@ page session="true" %>

<%-- date time formatter --%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%-- get session --%>
<%
	// session ID
	String sessionId = session.getId();

	// formatter
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
	// session creation time
	time.setTime(session.getCreationTime());
	String sessionCreationTime = formatter.format(time);
	
	// session last access time
	time.setTime(session.getLastAccessedTime());
	String sessionLastAccessedTime = formatter.format(time);
	
	// session max inactive interval
	session.setMaxInactiveInterval(5*60);
	String sessionMaxInactiveInterval = session.getMaxInactiveInterval() + " second";
	
	// ip address
    String ipAddr = request.getHeader("HTTP_X_FORWARDED_FOR");

    if (ipAddr == null || ipAddr.length() == 0 || ipAddr.toLowerCase().equals("unknown"))
	ipAddr = request.getHeader("REMOTE_ADDR");

    if (ipAddr == null || ipAddr.length() == 0 || ipAddr.toLowerCase().equals("unknown"))
	ipAddr = request.getRemoteAddr();
    
	System.out.println("" + ipAddr);
	
	// 
	String userId = null; 
	String userName = null; 
	String userAuth = null;
	
	try {
		userId = session.getAttribute("userId").toString();
		userName = session.getAttribute("userName").toString();
		//userAuth = session.getAttribute("userAuth").toString();
	} catch (Exception e) {
		//e.printStackTrace();
	}
%>

	<div class="container-fluid">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th>sessionId</th>
					<td><%= sessionId %></td>
					<th>CreationTime</th>
					<td><%= sessionCreationTime %></td>
				</tr>
				<tr>
					<th>userId</th>
					<td><%= userId %></td>
					<th>LastAccessedTime</th>
					<td><%= sessionLastAccessedTime %></td>				
				</tr>
				<tr>
					<th>userName</th>
					<td><%= userName %></td>
					<th>MaxInactiveInterval</th>
					<td><%= sessionMaxInactiveInterval %></td>				
				</tr>
				<tr>
					<th>userAuth</th>
					<td><%= userAuth %></td>
					<th>ip</th>
					<td><%= ipAddr %></td>				
				</tr>			
			</tbody>
		</table>
	</div>


