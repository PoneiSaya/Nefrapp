<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Nuova Scheda Parametri - Nefrapp</title>

<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">

<!-- Script per l'inserimento -->
<script type="text/javascript" src="/js/inserimentoControl.js"></script>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@include file="../includes/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<%@include file="../includes/header.jsp"%>


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Nuova Scheda Parametri</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">

						<div class="card-body">
							<form class="user" action="./parametri" method="POST">
							<input type="hidden" name="operazione" value="inserisciScheda">
									Scheda parametri: <br>
									<div class="form-group row">
									<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
										Peso: <br> <input type="text"
											class="form-control form-control-user" id="Peso" name="Peso"
											placeholder="Esempio: 80,00" required="required"
											maxlength="5">
									</div>
									<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
										Pressione Massima:<br> <input type="text"
											class="form-control form-control-user" id="PaMax"
											name="PaMax" placeholder="Esempio: 120" required="required"
											maxlength="3">
									</div>
									<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
										Pressione Minima:<br> <input type="text"
											class="form-control form-control-user" id="PaMin"
											name="PaMin" placeholder="Esempio: 80" required="required"
											maxlength="3">
									</div>
									<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
										Scarico Iniziale:<br> <input type="text"
											class="form-control form-control-user" id="ScaricoIniziale"
											name="ScaricoIniziale" placeholder="Esempio: -1000 +1000"
											maxlength="5">
									</div>
								</div>
						<div class="form-group row">
							<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
								UF: <br> <input type="text"
									class="form-control form-control-user" id="UF" name="UF"
									placeholder="Esempio: +500, -200" required="required"
									maxlength="5">
							</div>
							<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
								Tempo di sosta:<br> <input type="text"
									class="form-control form-control-user" id="TempoSosta"
									name="TempoSosta" placeholder="Esempio: 1" required="required"
									maxlength="2">
							</div>
							<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
								Carico:<br> <input type="text"
									class="form-control form-control-user" id="Carico"
									name="Carico" placeholder="Esempio: 1000" required="required"
									maxlength="4">
							</div>
							<div class="col-lg-3 col-sm-3 mb-3 mb-sm-12">
								Scarico:<br> <input type="text"
									class="form-control form-control-user" id="Scarico"
									name="Scarico" placeholder="Esempio: 500" required="required"
									maxlength="4">
							</div>
						</div>
						<div class="col-lg-3 sm-12"
							style="margin-left: auto; margin-right: auto; display: block; margin-top: 22%; margin-bottom: 0%">
							<button class="btn btn-primary btn-user btn-block"
								id="inserimentoSchedaButton" >Salva Parametri</button>
						</div>
						</form>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->
		<%@include file="../includes/footer.jsp"%>
	</div>
	<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

</body>
</html>