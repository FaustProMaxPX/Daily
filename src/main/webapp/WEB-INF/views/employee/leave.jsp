<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="cu"%>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>leave</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/pages/employee/leave/leave.css">
</head>

<body>
    <div class="container_fluid">
        <div class="row">

            <!-- 左侧 -->
            <div class="col-md-3 col-sm-12 col-xs-12 text-center sidebar"
                style="height:596px; display:flex; flex-direction: column;  margin-top: 50px;">
                <div class="card-left row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <i class="fa fa-dot-circle-o fa-2x icon" aria-hidden="true"></i>
                        <p>Welcome</p>
                        <p>员工</p>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12 row">
                        <img src="/image/head.jpg" class="head col-md-12 col-sm-12 col-xs-12">
                        <p class="col-md-12 col-sm-12 col-xs-12 name"><c:out value="${sessionScope.user_session.username}"/></p>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12 list-group row">
                        <ul class="nav sidebar-nav" style="margin:0 auto;">
                            <li>
                                <a class="list-group-item" href="/employee/checkin"><i
                                        class="fa fa-fw fa-id-card-o my-list-group-icon"></i>考 勤</a>
                            </li>
                            <li>
                                <a class="list-group-item" href="/employee/leave"><i
                                        class="fa fa-fw fa-book my-list-group-icon"></i>请 假</a>
                            </li>
                        </ul>
                    </div>
                    <div class="setting" data-toggle="modal" data-target="#myModal">
                        <a href="#" data-toggle="tooltip" data-placement="right" title="个人信息">
                            <i class="fa fa-cog fa-lg dropdown-icon"></i>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <!-- 用于显示请假办理提交成功 -->
            <div class="modal fade" id="submitSuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document" style="width: 500px;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-dismiss="modal">返回</button>
                            <h5 class="modal-title" id="myModalLabelSuccess">请假办理成功</h5>
                            <div type="button" class="btn-save"></div>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <p style="color: #e0b756; font-size: 20px;"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Modal -->
            <!-- 用于修改个人资料 -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document" style="width: 500px;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-dismiss="modal">取消</button>
                            <h5 class="modal-title" id="myModalLabel">编辑个人资料</h5>
                            <button type="button" class="btn-save">保存</button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-5 col-sm-5 col-xs-5">
                                    <img src="/image/head.jpg" class="head">
                                </div>
                                <div class="col-md-7 col-sm-7 col-xs-7">
                                    <div class="name"><c:out value="${sessionScope.user_session.username}"/></div>
                                    <div class="position">员工</div>
                                </div>
                            </div>
                            <form>
                                <div class="form-group">
                                    <label for="phoneInput">电话</label>
                                    <div class="input-group">
                                        <select class="custom-select clickable" id="countryCodeSelect">
                                            <option selected>中国 +86</option>
                                            <option value="1">美国 +1</option>
                                            <option value="44">英国 +44</option>
                                            <option value="33">法国 +33</option>
                                        </select>
                                        <input type="tel" class="form-control" id="phoneInput" placeholder="请输入电话">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 右侧 -->
            <div class="col-md-9 col-sm-12 col-xs-12 text-center content"
                style="height:596px; display:flex;flex-direction: column; margin-top: 50px;">
                <div class=" card-right">
                <div class="clickable">
                    <i class="fa fa-ellipsis-h fa-2x" id="toggle-sidebar"></i>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="card">
                            <div class="card-header">
                                <h4>办理请假</h4>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="form-group row">
                                        <label for="startDate" class="col-form-label">起始日</label>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="date" class="form-control" id="startDate">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="endDate" class="col-form-label">结束日</label>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="date" class="form-control" id="endDate">
                                        </div>
                                    </div>
                                    <!-- 请假类型 -->
                                    <div class="form-group row">
                                        <label for="leaveTypeSelect" class="col-form-label">请假类型</label>
                                        <select class="custom-select col-md-12 col-sm-12 col-xs-12"
                                            id="leaveTypeSelect">
                                            <c:forEach var="item" items="${leaveTypes}">
                                                <option value="${item.id}">${item.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <!-- 请假理由 -->
                                    <div class="form-group row">
                                        <label for="leaveReason" class="col-form-label">请假理由</label>
                                        <textarea class="form-control" id="leaveReason" rows="3"></textarea>
                                    </div>
                                    <div id="leave-apply">
                                        <a href="#" data-toggle="tooltip" data-placement="right" title="提交申请">
                                            <div class="fa fa-check" aria-hidden="true"></div>
                                        </a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="scrollable">

                            <c:forEach var="item" items="${list}">
                                <div class="card-history">
                                    <div class="row">
                                        <div class="col-md-9 col-sm-9 col-xs-9">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <div class="date-tag">起始日:</div>
                                                    <div class="date-content">${item.startDate}</div>
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <div class="date-tag">结束日:</div>
                                                    <div class="date-content">${item.endDate}</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3">
                                            <div class="state">${item.status}</div>
                                        </div>

                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="id-tag">编号:</div>
                                            <div class="id-content">${item.id}</div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="type-tag">请假类型:</div>
                                            <div class="type-content">${item.type}</div>
                                        </div>
                                        <!-- <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="employee-id-tag">员工id:</div>
                                                <div class="employee-id-content">#1</div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="employee-name-tag">员工姓名:</div>
                                                <div class="employee-name-content">#1</div>
                                            </div> -->
<%--                                        <div class="col-md-12 col-sm-12 col-xs-12">--%>
<%--                                            <a href="#">--%>
<%--                                                <div class="employee-tag">员工信息</div>--%>
<%--                                                <i class="fa fa-angle-right" aria-hidden="true"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="type-tag">请假理由:</div>
                                            <div class="type-content">${item.reason}</div>
                                        </div>
                                    </div>
                                </div>
                                <hr width="100%">
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- Footer -->

        <cu:footer/>

    </div>
    <!-- jquery -->
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/pages/employee/leave/leave.js"></script>
    <!-- Bootstrap -->
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bootstrap/js/popper.js"></script>
</body>

</html>