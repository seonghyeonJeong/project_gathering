<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>�α���ȭ��</title>
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
    <link rel="stylesheet" href="../css/login.css" />
    
    <!-- ������ �޴��� -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    
    <!-- īī�� �α��� api -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	Kakao.init('a4f98e94bb6351142553b84533405d82'); //�߱޹��� Ű �� javascriptŰ�� ������ش�.
	console.log(Kakao.isInitialized()); // sdk�ʱ�ȭ�����Ǵ�
	//īī���α���
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	//īī���α׾ƿ�  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
	</script>
</head>
<body id="page-top">
 <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container ">
            <a class="navbar-brand" href="/main">�Դ���(Gathering)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ">
                    <li class="nav-item"><a class="nav-link" href="#!">���� �����</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">Ȱ������ ����</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">Q&A �Խ���</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">��������</a></li>
                </ul>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#!">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">Log In</a></li>
                </ul>
            </div>
        </div>
    </nav>

 
    <div class="login-wrap">
        <div class="login-html">
            <h1>�α���</h1>
            <form action="loginForm" name="loginForm" method="post">
            <div class="login-form">
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="id" class="label">���̵�</label>
                        <input type="text" id="user_id" name="user_id" class="input" placeholder="���̵�">
                        <h6>${sessionScope.message}</h6>
                    </div>
                    <div class="group">
                        <label for="pw" class="label">��й�ȣ</label>
                        <input type="password" id="password" name="password" class="input" placeholder="��й�ȣ">
                        
                    </div>
                    <div class="buttonEx">
                        <div class="group">
                            <input type="submit" class="button" value="�α���"><br>
                              
                        </div>
                       
                        <div class="find">
                            <a href="-���̵���ã��(�˾�).html" class="left">���̵� | ��й�ȣ ã��</a>
                          
                        </div>
                    </div>  
                </div>
                <div class="group">
                    <div class="under">
                       
                        <div>
                        <input type="button" class="button" onclick="" value="ȸ������">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>

   <!-- Footer-->
   <footer class="py-2 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
    
</body>
</html>