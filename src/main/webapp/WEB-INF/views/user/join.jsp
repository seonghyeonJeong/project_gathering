<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <!-- jquery -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />


</head>

<body id="page-top">
    <!-- Nav�� ����-->
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
    

            <!--���α��� -->
            <div class="col-12">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">




                <h2 style="padding-top:5%">ȸ������</h2>


                <!-- ȸ������ ��-->

                <form class="container row" style="float: none; margin:100 auto;">
                    
                    <div class="mb-3">
                        <!--ȸ��ID-->
                        <div class="row mb-2">
                            <label for="input_user_id" class="col-sm-2 col-form-label">ȸ��ID</label>

                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_user_id" placeholder="ȸ��ID">
                            </div>
                            <div class="col-auto">
                                <button type="button" class="btn btn-primary">�ߺ�üũ</button>
                            </div>
                        </div>
                        <!--��й�ȣ-->
                        <div class="row mb-2">
                            <label for="input_password" class="col-sm-2 col-form-label">��й�ȣ</label>
                            <div class="col-auto">
                                <input type="password" class="form-control" id="input_password" placeholder="��й�ȣ">
                            </div>
                        </div>
                        <!--��й�ȣȮ��-->
                        <div class="row mb-2">
                            <label for="input_password_check" class="col-sm-2 col-form-label">��й�ȣȮ��</label>
                            <div class="col-auto">
                                <input type="password" class="form-control" id="input_password_check"
                                    placeholder="��й�ȣȮ��">
                            </div>
                        </div>
                        <!--�̸�-->
                        <div class="row mb-2">
                            <label for="input_name" class="col-sm-2 col-form-label">�̸�</label>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_name" placeholder="�̸�">
                            </div>
                        </div>
                        <!--�г���-->
                        <div class="row mb-2">
                            <label for="input_nickname" class="col-sm-2 col-form-label">�г���</label>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_nickname" placeholder="�г���">
                            </div>
                        </div>
                        <!--����-->
                        <div class="row mb-2">

                            <label for="input_gender" class="col-sm-2 col-form-label">����</label>
                            <div class="col-auto">
                                <div class="row" style="padding-left:10px;">
                                    <div class="form-check col-auto py-2">
                                        <input class="form-check-input" type="radio" name="input_gender"
                                            id="input_gender" value="1" checked>����
                                    </div>
                                    <div class="form-check col-auto py-2">
                                        <input class="form-check-input" type="radio" name="input_gender"
                                            id="input_gender" value="2">����
                                    </div>
                                    <div class="form-check col-auto py-2">
                                        <input class="form-check-input" type="radio" name="input_gender"
                                            id="input_gender" value="0">���þ���
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--�������-->
                        <div class="row mb-2">
                            <label for="input_yob" class="col-sm-2 col-form-label">�������</label>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_yob" placeholder="�⵵">
                            </div>
                            <div class="col-auto">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected value="1">1��</option>
                                    <option value="2">2��</option>
                                    <option value="3">3��</option>
                                    <option value="4">4��</option>
                                    <option value="5">5��</option>
                                    <option value="6">6��</option>
                                    <option value="7">7��</option>
                                    <option value="8">8��</option>
                                    <option value="9">9��</option>
                                    <option value="10">10��</option>
                                    <option value="11">11��</option>
                                    <option value="12">12��</option>
                                </select>
                            </div>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_dob" placeholder="��">
                            </div>

                        </div>
                        <!--�̸���-->
                        <div class="row mb-2">
                            <label for="input_email" class="col-sm-2 col-form-label">�̸���</label>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_email" placeholder="�̸���">
                            </div>
                            @
                            <div class="col-auto">
                                <input type="text" class="form-control" id="input_email">
                            </div>
                            <div class="col-auto">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected value="1">naver.com</option>
                                    <option value="2">nate.com</option>
                                    <option value="3">gmail.com</option>
                                    <option value="4">daum.net</option>
                                    <option value="5">�����Է�</option>

                                </select>
                            </div>
                        </div>
                        <!--��ȭ��ȣ-->
                        <div class="row mb-2">
                            <label for="input_phone" class="col-sm-2 col-form-label">��ȭ��ȣ</label>
                            <div class="col-2">
                                <input type="text" class="form-control" id="input_phone">
                            </div>

                            <div class="col-2">
                                <input type="text" class="form-control" id="input_phone">
                            </div>
                            <div class="col-2">
                                <input type="text" class="form-control" id="input_phone">
                            </div>
                        </div>
                        <!--�ּ�-->
                        <div class="row mb-2">
                            <label for="input_address1" class="col-sm-2 col-form-label">�ּ�</label>
                            <div class="col-auto">
                                <input type="text" name="address" id="address" size="50">
                                <input class="btn btn-primary" type="button" value="�ּ�ã��" onclick="kakaopost()">
                            </div>
                        </div> 
                            <!--���ɺо�-->
                            <div class="row my-3">
                                <label for="input_user_interest" class="col-sm-2 col-form-label">���ɺо�</label>
                                <div class="container col">
                                    <div class="row row-cols-3">

                                        <div class="col-5">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckChecked1">
                                            <label class="form-check-label" for="flexCheckChecked1">
                                                ������
                                            </label>
                                        </div>
                                        <div class="col-5">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckChecked2">
                                            <label class="form-check-label" for="flexCheckChecked2">
                                                ����
                                            </label>
                                        </div>
                                        <div class="col-5">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckChecked3">
                                            <label class="form-check-label" for="flexCheckChecked3">
                                                ��ȭ
                                            </label>
                                        </div>
                                        <div class="col-5">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckChecked4">
                                            <label class="form-check-label" for="flexCheckChecked4">
                                                ����Ȱ��
                                            </label>
                                        </div>
                                        <div class="col-5">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="flexCheckChecked5">
                                            <label class="form-check-label" for="flexCheckChecked5">
                                                �ݷ�����
                                            </label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col text-center">
                                    <input class="btn btn-primary" style="margin-right: 10px;" type="submit"
                                        value="�����ϱ�">
                                    <button class="btn btn-primary" type="button">���</button>
                                </div>
                            </div>

                        </div>

                </form>

            </main>
        </div>
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
    <!--autoload=false �Ķ���͸� �̿��Ͽ� �ڵ����� �ε��Ǵ� ���� �����ϴ�.-->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
    <!--īī�� ����,�ּ�-->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6a81e3b1d414024f75344e4e8fc907b8&libraries=services"></script>
    <!--��ưŬ���� ������ ǥ��-->
    <script>
        var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
                level: 3 // ������ Ȯ�� ����
            };


        $('#searchBtn').click(function () {
            // ��ư�� click������

            // ������ �����մϴ�    
            var map = new kakao.maps.Map(mapContainer, mapOption);

            // �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
            var geocoder = new kakao.maps.services.Geocoder();

            // �ּҷ� ��ǥ�� �˻��մϴ�
            geocoder.addressSearch($('#address').val(), function (result, status) {

                // ���������� �˻��� �Ϸ������ 
                if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    // ������ ��ǥ�� ���� ���θ� �ּ� ����
                    let lat = result[0].y;
                    let lng = result[0].x;
                    getAddr(lat, lng);
                    function getAddr(lat, lng) {
                        let geocoder = new kakao.maps.services.Geocoder();

                        let coord = new kakao.maps.LatLng(lat, lng);
                        let callback = function (result, status) {
                            if (status === kakao.maps.services.Status.OK) {
                                // ������ ���θ� �ּҸ� �ش� input�� value������ ����
                                $('#address').val(result[0].road_address.address_name);
                            }
                        }
                        geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
                    }

                    // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords
                    });

                    // ����������� ��ҿ� ���� ������ ǥ���մϴ�
                    var infowindow = new kakao.maps.InfoWindow({
                        content: '<div style="width:150px;text-align:center;padding:6px 0;">����</div>'
                    });
                    infowindow.open(map, marker);

                    // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
                    map.setCenter(coords);
                }
            });
        });

    </script>
    <!-- ����ã�� �Լ� -->
    <script>
        function kakaopost() {
            new daum.Postcode({
                oncomplete: function (data) {
                    
                    document.querySelector("#address").value = data.address
                }
            }).open();
        }
    </script>
    <!--īī�� ���� ���� ��ũ��Ʈ ��-->

</body>

</html>