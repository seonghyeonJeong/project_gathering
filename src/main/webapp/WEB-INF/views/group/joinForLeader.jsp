<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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



</head>

<body id="page-top">
    
    <%@ include file="/WEB-INF/views/navibar.jsp" %>
    
            <!--메인구간 -->
            <div class="col-10">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                <h2 style="padding-top:5%">모임장 인사</h2>

                <!--모임생성폼 복붙버전-->
                <form class="container row mt-3" action="joinForLeader" method="post">
            
                    <div class="mb-3">
                        <input type="hidden" name="group_seq" value="${group_seq}">
                        <!--자기소개-->
                        <div class="row mb-2">
                            <label for="crew_brief" class="col-sm-2 col-form-label">자기소개</label>
                           <div class="col-7">
                            <textarea class="form-control" id="crew_brief" name="crew_brief" rows="3" style="resize:none;"></textarea>
                           </div>
                       </div>
                       
                       <!--첨부파일-->
                       <div class="row mb-3">
                            <label for="crew_image" class="col-sm-2 col-form-label">프로필사진</label>
                            <div class="col-7">
                                <input class="form-control" type="file" id="crew_image" name="crew_image" multiple>
                            </div>
                        </div>
                        
                        <!--서밋버튼-->
                        <div class="row">
                            <div class="col text-center">
                                <input class="btn btn-primary" style="margin-right: 10px;" type="submit" value="가입">
                                <button class="btn btn-primary" type="button">취소</button>
                            </div>
                        </div>
    
                    </div>
                                
                </form>
            
                
            </main>
        </div>
            
        </div>
    </div>

     <%@ include file="/WEB-INF/views/footer.jsp" %>
   
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>