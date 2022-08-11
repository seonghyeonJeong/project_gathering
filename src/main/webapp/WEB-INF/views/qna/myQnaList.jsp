<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>One Page Wonder - Start Bootstrap Template</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />
    
    <script type="text/javascript" src="../js/qna.js"></script>

</head>

<body id="page-top">
    <!-- Nav�� ����-->
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container ">
            <a class="navbar-brand" href="main">�Դ���(Gathering)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ">
                    <li class="nav-item"><a class="nav-link" href="-���Ӹ����.html">���� �����</a></li>
                    <li class="nav-item"><a class="nav-link" href="-Ȱ������ ����.html">Ȱ������ ����</a></li>
                    <li class="nav-item"><a class="nav-link" href="qnaList">Q&A �Խ���</a></li>
                    <li class="nav-item"><a class="nav-link" href="/notice/noticeList">��������</a></li>
                </ul>
                <ul class="navbar-nav ms-auto">
                <c:choose>
       				<c:when test="${empty sessionScope.user}">
	                    <li class="nav-item"><a class="nav-link" href="user/join">Sign Up</a></li>
	                    <li class="nav-item"><a class="nav-link" href="user/login">Log In</a></li>
                    </c:when>
                    <c:otherwise>
	                    <li class="nav-item"><a class="nav-link" href="user/join">Mypage </a></li>
	                    <li class="nav-item"><a class="nav-link" href="/logout">Log out</a></li>
	                </c:otherwise>
	             </c:choose>
                </ul>
            </div>
        </div>
    </nav>


    <!--���̵�� ���۱���-->
    <div class="container-fluid">
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3">
                    <ul class="nav flex-column">
                       
                        <li class="nav-item">
                            <a class="nav-link" href="/qna/frequentlyQna">
                                <span data-feather="file"></span>
                                ���� ���� ����
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"  href="/qna/myQnaList">
                                <span data-feather="shopping-cart"></span>
                                ���� ����
                            </a>
                        </li>                    
                    </ul>
                </div>
            </nav>
    
          <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    		<!-- ���α��� -->
    		<form id="moveForm" method="get">
				<!-- ���� ����� ���� -->
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
				<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
				<input type="hidden" name="type" value="${pageMaker.cri.type }">
			</form>

                <h2 style="padding-top:5%">���� ����</h2> 
                    <div class="row mb-2 align-items-center">
                        <div class="col">
                        <button type="button" class="btn btn-outline-primary" style="float:right; margin-right:10px" onclick="location.href='/qnaInsertForm'">�����ϱ�</button>
                        </div>    
                    </div>

                <div class="table-responsive">
                    <table class="table table-hover table-striped table-sm">
                        <thead>
                            <tr >
                                
                                <th scope="col" style="text-align:center">��ȣ</th>
                                <th scope="col" style="width:50%; text-align: center;">����</th>
                                <th scope="col" style="text-align:center">�ۼ���</th>
                                <th scope="col" style="text-align:center">�ۼ���</th>
                                <th scope="col" style="text-align:center">��ȸ��</th>
                                <th scope="col" style="text-align:center">��������</th>
                            
                            </tr>
                        </thead>
                        <tbody>
                        
                           <c:forEach items="${qnaList}"  var="qnaVO">
                           	<c:if test="${sessionScope.user.user_id eq qnaVO.user_id }">
                            <!--����/����� ���� üũ�ϴ� �ڹٽ�ũ��Ʈ �ʿ�-->
                         	
                           	 <tr style="cursor:pointer" onclick="location.href='qna_view?qna_seq=${qnaVO.qna_seq}'">
                        
                                <td style="text-align:center"> ${qnaVO.qna_seq} </td>
                               <td>${qnaVO.title}</td>
                                <td style="text-align:center">${qnaVO.user_id}</td>                                
                                <td style="text-align:center"><fmt:formatDate value="${qnaVO.regDate}" type="date"/></td>
                                <td style="text-align:center">${qnaVO.cnt}</td>
                                <td style="text-align:center">${qnaVO.security}</td>
                            </tr> 
                          </c:if>
                         </c:forEach>
                         
                        </tbody>         
                    </table>
                </div>

                	<!--  �˻���ư ���� -->
			
             
                    <div class="row mb-3 align-items-center justify-content-center">
                        <div class="col-2" style="margin-left: 10%;">
                            <select class="form-select form-select-md" name="type">
                                <option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>����</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>����</option>
                            </select>
                        </div>
                        <div class="col-2">
                            <input type="text" class="form-control" name="keyword" value="${pageMaker.cri.keyword}">
                        </div>
                        <div class="col-2">
                            <button class="btn btn-primary" type="button">�˻�</button>
                        </div>
                    </div>
				
				
                <!--����¡-->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                    <c:if test="${pageMaker.prev}">
                      <li class="page-item">
                        <a class="page-link" href="${pageMaker.startPage-1}" aria-label="Previous">
                          <span aria-hidden="true">&laquo;</span>
                        </a>
                      </li>
                      </c:if>
                      <c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
                      <li class="page-item" ${pageMaker.cri.pageNum == num ? "active":"" }><a class="page-link" href="${num}">${num}</a></li>
                      </c:forEach>
                      <c:if test="${pageMaker.next}">
                      <li class="page-item">
                        <a class="page-link" href="${pageMaker.endPage + 1 }" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                        </a>
                      </li>
                      </c:if>
                    </ul>
                </nav>
  			</main>
            </div>
		</div>

    <!-- Footer-->
   <footer class="py-5 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    
    
    <!-- �˻���� �ڹٽ�ũ��Ʈ -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script>
		$(document).ready(function() {

			var msg = "${msg}";

			if (msg != "") {
				alert(msg);
			}

		});

		function fn_search() {
			$("#listForm").submit();
			return false;
		}
	</script>

	<!-- ������ ��� ���� ��ũ��Ʈ -->
	<script>
		let moveForm = $("#moveForm");

		$(".move")
				.on(
						"click",
						function(e) {
							e.preventDefault();

							moveForm
									.append("<input type='hidden' name='qna_seq' value='"
											+ $(this).attr("href") + "'>");
							moveForm.attr("action", "/qna/qnaView");
							moveForm.submit();
						});

		$(".pagination a").on("click", function(e) {

			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/qna/qnaList");
			moveForm.submit();

		});

		$(".col-2 button").on("click", function(e) {
			e.preventDefault();

			let type = $(".col-2 select").val();
			let keyword = $(".col-2 input[name='keyword']").val();

			if (!type) {
				alert("�˻� ������ �����ϼ���.");
				return false;
			}

			if (!keyword) {
				alert("Ű���带 �Է��ϼ���.");
				return false;
			}

			moveForm.find("input[name='type']").val(type);
			moveForm.find("input[name='keyword']").val(keyword);
			moveForm.find("input[name='pageNum']").val(1);
			moveForm.submit();
		});
	</script>

</html>
