<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="5_b_survey_page.css">
<script src="5_c_survey_page.js"></script>
</head>

<body>

	<header>
		<div class="pre_header">
			<div id="logo">
				<img src="" alt="" srcset="">
			</div>

			<div class="navbar">
				<ul>
					<li class="btn"><a
						href="http://localhost:8484/Survey/1_a_home.jsp">Home</a></li>
					<li class="btn" onclick="back()">User</li>
					<li class="btn"><a
						href="http://localhost:8484/Survey/2_a_about_us.html">About Us</a></li>
					<li class="btn"><a
						href="http://localhost:8484/Survey/3_a_contact_us.html">Contact</a></li>
				</ul>
			</div>

			<div class="social">
				<ul>
					<li><a href="http://">google</a></li>
					<li><a href="http://"><img src="" alt="" srcset=""></a></li>
					<li><a href="http://"><img src="" alt="" srcset=""></a></li>
					<li><a href="http://"><img src="" alt="" srcset=""></a></li>
				</ul>
			</div>
		</div>

		<div class="info">
			<strong>
				<h1 id="o_c">
					Organisation :
					<%=request.getParameter("org")%></h1> <br>
				<h3 id="t_c">
					Topic :
					<%=request.getParameter("title")%></h3>
			</strong>
		</div>

		<div class="description">
			<p>
				<strong>Description : <em><%=request.getParameter("des")%></em></strong>
			</p>
		</div>
		<hr color="red">
		<table>
			<thead>
				<tr>
				<tr>
					<th scope="col">S. No.
					</td>
					<th scope="col">Characteristics
					</td>
					<th scope="col">Your feedback
					</td>

				</tr>
				</tr>
			</thead>
		</table>
		<div class="end_user">
			<input type="text" name="charac">
			<ul>
				<li class="btn">POST</li>
				<li class="btn">CANCEL</li>
			</ul>
		</div>
	</header>

	<section>

		<table>
			<thead>
				<tr>
					<th scope="col">S. No.</th>
					<th scope="col">Characteristics</th>
					<th scope="col">Your feedback</th>
					<th scope="col"><i class="fa fa-commenting-o"></i><span
						class="ml-1">Comment</span></th>
					<th scope="col">Result</th>
				</tr>
			</thead>

			<tbody>
			
			<%String chars=request.getParameter("characters");
			String[] Characters=chars.split(",");
			for(int i=0;i<Characters.length;i++){%>
				<tr>
				
					<td scope="col"><%= (i+1)%></td>
					<td scope="col"><%=Characters[i]%></td>
					<td scope="col">*<input type="radio" name="<%= (i+1)%>">
					*<input type="radio" name="<%= (i+1)%>">*<input type="radio" name="<%= (i+1)%>">
					*<input type="radio" name="<%= (i+1)%>">*<input type="radio" name="<%= (i+1)%>"></td>
					<td scope="col"><input type="text" placeholder="tell us why"></td>
					<td scope="col">Result</td>
				</tr>
			<%} %>	
			</tbody>
		</table>
		
		<input type="button" value="submit" class="btn btns">

	</section>

</body>

</html>