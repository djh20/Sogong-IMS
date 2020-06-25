<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>마이페이지</title>
</head>
<body>
    <!-- 전체 화면 영역 설정 container -->
    <div class="container">

        <!-- row : 행으로 구분된 영역, justify : 가운데 정렬-->
        <div class="row col-auto justify-content-center mt-5">
    
            <!-- 입력 양식 -->
            <form action="${pageContext.request.servletPath}/enroll.do" method="POST">

                 <!-- ID 읽기전용 -->
            <div class="form-group">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">회원ID</span>
                    </div>
                    <input type="text" class="form-control" placeholder="입력" name="inputId"
                           aria-describedby="basic-addon1" autocomplete="off" readonly>
                </div>
            </div>

                <!-- 비밀번호 필수 입력 input tag 안에 required가 있습니다.-->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon2">회원PW</span>
                        </div>
                        <input type="password" class="form-control" placeholder="입력" name="inputPassword"
                               aria-describedby="basic-addon2" autocomplete="off" required>
                    </div>
                </div>
    
                <!-- 성명 필수 입력 input tag 안에 required가 있습니다.-->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon3">성명</span>
                        </div>
                        <input type="text" class="form-control" placeholder="입력" name="inputName"
                               aria-describedby="basic-addon3" autocomplete="off" required>
                    </div>
                </div>
    
                <!-- 전화번호 일반 텍스트 -->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon4">전화번호</span>
                        </div>
                        <input type="text" class="form-control" placeholder="입력" name="inputPhoneNumber"
                               aria-describedby="basic-addon4" autocomplete="off">
                    </div>
                </div>
    
                <!-- 주소 일반 텍스트 -->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon5">주소</span>
                        </div>
                        <input type="text" class="form-control" placeholder="입력" name="inputAddress"
                               aria-describedby="basic-addon5" autocomplete="off">
                    </div>
                </div>
    
                <!-- 이메일 일반 텍스트 -->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon6">이메일</span>
                        </div>
                        <input type="email" class="form-control" placeholder="입력" name="inputEmail"
                               aria-describedby="basic-addon6" autocomplete="off">
                    </div>
                </div>
    
                <!-- Type 필수 입력 input tag 안에 required가 있습니다.-->
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon7">Type</span>
                        </div>
                        <input type="text" class="form-control" placeholder="입력" name="inputType"
                               aria-describedby="basic-addon7" autocomplete="off" required>
                    </div>
                </div>
    
                <!-- 등록과 취소 버튼입니다. 등록 버튼을 누르게 되면, form태그의  action에 기술된 url대로 요청이 가게 됩니다. -->
                <!-- justify-content-center는 요소들을 중간에 위치시키겠다는 의미입니다. -->
                <div class="row justify-content-center">
                    <div class="col-3">
                        <button type="submit" class="btn btn-secondary bg-dark">수정</button>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <button type="button" class="btn btn-secondary bg-dark" onclick='self.close()'>취소</button>
                    </div>
                </div>
            </form>
            <!-- 입력 양식 끝 -->
        </div>
     </div>
    
        <!-- mb-5 는 spacing 요소이며 margin-buttom-5의 약자입니다. 자세한 내용은 아래 링크를 참고하세요.
        https://getbootstrap.com/docs/4.5/utilities/spacing/-->
        <div class="mb-5"></div>

<script>
    function Modification() {
        var form = document.createElement("form");
            var name = document.createElement("input");
            name.setAttribute("name", "name");
            name.setAttribute("value", data.name);
            var memberID = document.createElement("input");
            memberID.getAttribute("memberID");
            var memberPW = document.createElement("input");
            name.setAttribute("name", "memberPW");
            name.setAttribute("value", data.memberPW);
            var phoneNumber = document.createElement("input");
            phoneNumber.setAttribute("name", "phoneNumber");
            phoneNumber.setAttribute("value", data.phoneNumber);
            var address = document.createElement("input");
            address.setAttribute("name", "address");
            address.setAttribute("value", data.address);
            var button = document.createElement("input");
            button.setAttribute("name", "enroll");
            button.setAttribute("value", "enroll");
            form.appendChild(name);
            form.appendChild(memberID);
            form.appendChild(memberPW);
            form.appendChild(phoneNumber);
            form.appendChild(address);
            form.appendChild(email);
            form.appendChild(button);
            document.body.appendChild(form);
            form.submit();
    }
</script>
</body>
</html>