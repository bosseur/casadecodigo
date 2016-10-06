<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


	<header id="layout-header">
		<div class="clearfix container">
			
			<a href="<c:url value='/' />" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">

					<ul class="clearfix">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="${s:mvcUrl('PC#listar').build() }"
								rel="nofollow">Listagem de Produtos</a></li>
							<li><a href="${s:mvcUrl('PC#form').build() }" rel="nofollow">Cadastro
									de Produtos</a></li>
						</sec:authorize>
						<li><a href="<c:url value='/carrinho' />" rel="nofollow">Carrinho (
								${carrinhoCompras.quantidade} )</a></li>

						<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre
								N�s</a></li>

						<li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas
								Frequentes</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<sec:authorize access="isAuthenticated()">
								<sec:authentication property="principal.username" />
							</sec:authorize>
						</li>
					</ul>
				</nav>
			</div>
			
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="http://www.casadocodigo.com.br">Home</a></li>
			<li class="category"><a href="/collections/livros-de-agile">
					Agile </a></li>
			<li class="category"><a href="/collections/livros-de-front-end">
					Front End </a></li>
			<li class="category"><a href="/collections/livros-de-games">
					Games </a></li>
			<li class="category"><a href="/collections/livros-de-java">
					Java </a></li>
			<li class="category"><a href="/collections/livros-de-mobile">
					Mobile </a></li>
			<li class="category"><a
				href="/collections/livros-desenvolvimento-web"> Web </a></li>
			<li class="category"><a href="/collections/outros"> Outros </a></li>
		</ul>
	</nav>