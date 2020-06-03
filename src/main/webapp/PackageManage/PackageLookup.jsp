<%--
  Created by IntelliJ IDEA.
  User: djh20
  Date: 2020-05-15
  Time: 오후 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>

<form action="${pageContext.request.servletPath}/lookup.do" method="POST">
    <div class="form-inline">
        <div class="input-group mb-sm-n3 col-2 mb-3 mr-1">
            <div class="input-group-prepend">
                <span class="input-group-text">상품명</span>
            </div>
            <input type="text" class="form-control"aria-describedby="basic-addon3" name="packageName">
        </div>
        <div class="input-group mb-sm-n3 col-2 mb-3 mr-1">
            <div class="input-group-prepend">
                <span class="input-group-text">분류</span>
            </div>
            <input type="text" class="form-control"aria-describedby="basic-addon3" name="type">
        </div>
        <div class="input-group mb-sm-n3 col-2 mb-3 mr-1">
            <div class="input-group-prepend">
                <span class="input-group-text">회사</span>
            </div>
            <input type="text" class="form-control"aria-describedby="basic-addon3" name="company">
        </div>
        <div class="input-group col-3 mb-sm-n3 mb-3 mr-1">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon5">가격 범위</span>
            </div>
            <input type="number" class="form-control" name="packageMinPrice" aria-describedby="basic-addon5">
            <div class="input-group-prepend">
                <span class="input-group-text">~</span>
            </div>
            <input type="number" class="form-control" name="packageMaxPrice">
        </div>
        <div class="input-group mb-sm-n3 col-2 mb-3 mr-1">
            <div class="input-group-prepend">
                <span class="input-group-text">등록자</span>
            </div>
            <input type="text" class="form-control"aria-describedby="basic-addon3" name="registrantID">
        </div>

        <button type="submit" class="btn btn-secondary bg-dark mb-sm-n3">조회</button>
    </div>
</form>
<div style="width: 100%; max-height: 700px; overflow: auto" class="mt-5  mb-3">
    <div class="table-responsive text-md-center">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th width="10%">상품명</th>
                <th width="10%">분류</th>
                <th width="10%">회사</th>
                <th width="10%">가격</th>
                <th width="10%">등록자</th>
                <th width="40%">설명</th>
                <th width="5%"></th>
                <th width="5%"></th>
            </tr>
            </thead>
            <tbody>
            ${lookup}
            </tbody>
        </table>
    </div>
</div>

<button type="button" class="btn btn-secondary bg-dark mb-sm-n3" style="float: right;margin-right: 2vw">추가</button>
