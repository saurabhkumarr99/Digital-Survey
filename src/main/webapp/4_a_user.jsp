<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User</title>
<link rel="stylesheet" href="4_b_user.css">
<script src="4_c_user.js"></script>
</head>

<body>

	<header>

		<div id="logo">
			<img src="" alt="" srcset="">
		</div>

		<div class="navbar">
			<ul>
				<li class="btn"><a
					href="http://localhost:8484/Survey/1_a_home.jsp">Home</a></li>
				<li class="btn"><a
					href="http://localhost:8484/Survey/2_a_about_us.html">About Us</a></li>
				<li class="btn"><a
					href="http://localhost:8484/Survey/3_a_contact_us.html">Contact</a></li>
			</ul>
		</div>

		<div class="social">
			<ul>
				<li><a href="http://"><img src="" alt="" srcset=""></a></li>
				<li><a href="http://"><img src="" alt="" srcset=""></a></li>
				<li><a href="http://"><img src="" alt="" srcset=""></a></li>
				<li><a href="http://"><img src="" alt="" srcset=""></a></li>
			</ul>
		</div>
	</header>

	<section>
		<div class="intro">
			<div>
				<h1>Digital Survey</h1>
				<h3>
					Welcome
					<%=request.getParameter("name") %></h3>
			</div>

			<p>We are here to help you to conduct your survey.</p>
		</div>
		</div>
		<div class="survey">

			<div class="register">
				<h3>
					<strong>Ongoing Surveys</strong>
				</h3>
				<table>
					<thead>
						<tr>
							<th scope="col">Sr.</th>
							<th scope="col">Survey name</th>
							<th>Publish</th>
						</tr>
					</thead>
					<tbody>
					
					</tbody>
					
				</table>
				
                    <ol id="lists" >

                    </ol>
			</div>

			<div class="launch">
				<h3>
					<strong>Launch a new Survey</strong>
				</h3>
				 <form id="registerform" action="launch_survey" method="post" onsubmit="formSubmit()"
					target="_blank">
					<div class="org" >
						Organisation Name :<input type="text" class="input" name="org"
							id="org" placeholder="who is going to conduct the survey"><br>
						Survey Title :<input type="text" class="input" name="title"
							id="title" placeholder="Title of Survey"><br>
						Description :<input type="text" class="input" name="des" id="des"
							placeholder="Description about survey"><br>
					</div>
					<div class="characters">
						<h4>
							<em>Topic/characters around which survey will be conducted</em>
						</h4>
						<ol id="char_box">
						</ol>
						<div class="add_char">
							<input type="text" id="in"> <input type="button"
								class="btn" onclick="add_character()" value="add character">
						</div>
						<span id="error" style="color: red;"></span>
					</div>
					<input class="btn" type="submit" value="Launch"  >

				</form>
			</div>
		</div>
	</section>
</body>

</html>