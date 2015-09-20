<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Store Management</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.green {
	font-weight: bold;
	color: green;
}

.message {
	margin-bottom: 10px;
}

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="myForm" method="post"
							class="bs-example form-horizontal" action="register" modelAttribute="store">
							<fieldset>
								<legend>Online Store Registration Form</legend>

								<div class="form-group">
									<label for="storeNameInput" class="col-lg-3 control-label">Store Name</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="storeName"
											id="storeNameInput" placeholder="Store Name" />
										<form:errors path="storeName" cssClass="error" />
									</div>
								</div>

								<%-- <div class="form-group">
									<label for="storeTypeInput" class="col-lg-3 control-label">Store Type</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="storeType" id="storeTypeInput" placeholder="Store Type" />
										<form:errors path="storeType" cssClass="error" />
									</div>
								</div> --%>

								<div class="form-group">
									<label for="ownerNameInput" class="col-lg-3 control-label">Owner
										Name</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="ownerName"
											id="ownerNameInput" placeholder="Owner Name" />
										<form:errors path="ownerName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="emailAddressInput" class="col-lg-3 control-label">Email
										Address</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="emailAddress" id="emailAddressInput"
											placeholder="Email Address" />
										<form:errors path="emailAddress" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="storeAddressInput" class="col-lg-3 control-label">Store Address</label>
									<div class="col-lg-9">
										<form:textarea type="text" class="form-control"
											path="storeAddress" id="storeAddressInput"
											placeholder="Store Address" />
										<form:errors path="storeAddress" cssClass="error" />
									</div>
								</div>
								
								<%-- <div class="form-group">
									<label for="storeCityInput" class="col-lg-3 control-label">City</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="storeCity" id="storeCityInput"
											placeholder="Store City" />
										<form:errors path="storeCity" cssClass="error" />
									</div>
								</div> --%>
								
								<div class="form-group">
									<label for="storeMobileInput" class="col-lg-3 control-label">Mobile Number</label>
									<div class="col-lg-9">
										<form:input type="number" class="form-control"
											path="storeMobNo" id="storeMobileInput"
											placeholder="Store Mobile Number" />
										<form:errors path="storeMobNo" cssClass="error" />
									</div>
								</div> 
								
								<div class="form-group">
									<label for="pincodeInput" class="col-lg-3 control-label">Pincode</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="storePincode" id="pincodeInput"
											placeholder="Store Pincode" />
										<form:errors path="storePincode" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="serviceAreaInput" class="col-lg-3 control-label">Service Area</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="serviceArea" id="serviceAreaInput"
											placeholder="Service Area" />
										<form:errors path="serviceArea" cssClass="error" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#themodal">Submit</button>
								</div>
							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(function() {
			var yesButton = $("#yesbutton");
			var progress = $("#doitprogress");

			yesButton.click(function() {
				yesButton.button("loading");

				var counter = 0;
				var countDown = function() {
					counter++;
					if (counter == 11) {
						yesButton.button("complete");
					} else {
						progress.width(counter * 10 + "%");
						setTimeout(countDown, 100);
					}
				};
				setTimeout(countDown, 100);
			});

		});
	</script>
</body>
</html>