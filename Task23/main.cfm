<html>
	<head>
		<link rel="stylesheet" href="css/style.css">
		<script defer src="js/script.js"></script>
	</head>
	<body>
		<cfoutput>
			<div class="Body">
				<div class="mainBody">
					<div class="header">
						<img src="assets/wflogo.png" alt="logo">
					</div>
					<div class="content">
						<form  method="post" name="form" onsubmit="return validateform()">
							<p class="larger employment">Employment Application</p>
							<p class="small border">Infinity Box Inc</p>
							<ul>
								<li>
									<label class="medium">Which position are you applying for? <span class="red">*</span>
									</label>
									<br>
									<select name="option" id="option">
										<option selected="" value="Default"></option>
										<option value="Interface Designer">Interface Designer</option>
										<option value="Software Engineer">Software Engineer</option>
										<option value="System Administrator">System Administrator</option>
										<option value="Office Manager">Office Manager</option>
									</select>
									<span id="operror">This fiels id required,Pleast enter a value</span>
								</li>
								<li>
									<label class="medium">Are you willing to relocate? <span class="red">*</span>
									</label>
									<br>
									<input type="radio" value="yes" name="yes" id="yes">
									<span class="space"></span>Yes <br>
									<input type="radio" value="yes" name="yes" id="no">
									<span class="space"></span>No
								</li>
								<li>
									<div class="date_div">
										<label class="medium">When can you start? <span class="red">*</span>
										</label>
										<br>
										<input type="date" id="date" name="date" ><br>
										<span id="date_error">This fiels id required,Pleast enter a value</span>
									</div>
								</li>
								<li>
									<label class="medium">Portfolio Web Site </label>
									<br>
									<input type="url"  name="url" id="url" class="url" >
                                   	<span id="url_error">Please enter a valid url in http://website.com format.</span>
								</li>
								<li>
									<div class="uploadfile_div">
										<label class="medium">Attach a Copy of Your Resume </label>
										<br>
										<input type="file" name="uploadfile">
										<br>
										<span class="smaller">Word or PDF Documents Only</span>
									</div>
								</li>
								<li>
									<label class="medium">Salary Requirements </label>
									<br>
									<div class="flex alignBaseline"> $ <span class="space"></span>
										<div>
											<input type="text" tabindex="0" size="10" id="salary">
											<br>
											<span class="smaller">Dollars</span>
										</div>
										<span class="space"></span> . <span class="space"></span>
										<div>
											<input type="text" maxlength="2" size="2">
											<br>
											<span class="smaller">Cents</span>
										</div>
									</div>
								</li>
								<li>
									<label class="large">Your Contact Information</label>
									<br>
								</li>
								<li>
									<div class="name_div">
										<label class="medium">Name <span class="red">*</span>
										</label>
										<br>
										<div class="flex alignBaseline">
											<div>
												<span id="name_div">Name not found</span>
												<input type="text" size="10" id="fname"  name="fname">
												<br>
												<span class="smaller">First</span>
											</div>
											<span class="space"></span>
											<div>
												<input type="text" size="20" id="lname" name="lname">
												<br>
												<span class="smaller">Last</span>
											</div>
										</div>
										<span id="name_error">This fiels id required,Pleast enter a value</span>
									</div>
								</li>
								<li>
									<div class="email_div">
										<label class="medium">Email Address <span class="red">*</span>
										</label>
										<br>
										<input type="email" tabindex="0" size="50" id="email" name="email" ??><br>
										 <span id="email_error">This fiels id required,Pleast enter a value</span>
									</div>
								</li>
								<li>
									<div class="tel_div">
										<label class="medium">Phone <span class="red">*</span>
										</label>
										<br>
										<input type="tel" name="tel" id="tel" ><br>
										<span id="num_error">This fiels id required,Pleast enter a value</span>
									</div>
								</li>
								<div class="submit">
									<input type="submit" id="formsubmit" value="Submit" name="formsubmit">
								</div>
						</form>
						<cfinvoke method="textField" component="components/component">
					</div>
					<div class="footer flex alignCenter justifyCenter">
						<span class="smaller">Powered By</span>
						<br>
					</div>
					<div class="footer flex alignCenter justifyCenter">
						<img src="assets/wufoo2.png" alt="logo" class="image2">
						<br>
					</div>
					<div class="smaller flex justifyCenter">See how easy it is to <a>create a form</a>
					</div>
				</div>
			</div>
		</cfoutput>
	</body>
</html>