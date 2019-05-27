<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	 $(function(){
		var resShortList = '${resShortMain}';
		//console.log("Ȯ��: "+resList[0]);
	}) 
</script>
</head>
<body>
	<main class="app-content">
	<div class="app-title">
        <div>
          <h1><i class="fa fa-building"></i>ȸ�ǽ� ����</h1>
          <p>���縦 ������ ��, ȸ�ǽ��� Ȯ���ϼ���</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="resShortMain.jsp">ȸ�ǽ� ����</a></li>
        </ul>
      </div>
      <div class="row user">
      <div class="col-md-3">
          <div class="tile p-0">
            <ul class="nav flex-column nav-tabs user-tabs">
              <li class="nav-item"><a class="nav-link active" data-toggle="tab">���� ����</a></li>
              <li class="nav-item"><a class="nav-link" href="#user-timeline" data-toggle="tab">����</a></li>
              <li class="nav-item"><a class="nav-link" href="#user-timeline" data-toggle="tab">��ȯ ����</a></li>
              <li class="nav-item"><a class="nav-link" href="#user-timeline" data-toggle="tab">GS ��������</a></li>
              <li class="nav-item"><a class="nav-link" href="#user-settings" data-toggle="tab">GS ���Ϻ���</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-9">
          <div class="tab-content">
            <div class="tab-pane active" id="user-timeline">
            <c:forEach items="${resShortMain }" var="resShortList">
              <div class="timeline-post">
                <div class="post-media"><a href="#"><img src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"></a>
                  <div class="content">
                    <h5><a href="#">${resShortList.mrName }</a></h5>
                    <p class="text-muted"><small>${resShortList.brLocation } ${resShortList.mrLocation }</small></p>
                  </div>
                </div>
                <div class="post-content">
                	<table>
                		<tr>	
                			<td><b>��������</b></td>
                			<c:if test="${resShortList.mrType eq 'mr_type_0'}">
    							<td>ȸ�ǽ�</td>
							</c:if>
							<c:if test="${resShortList.mrType eq 'mr_type_1'}">
    							<td>��ȸ�ǽ�</td>
							</c:if>
							<c:if test="${resShortList.mrType eq 'mr_type_2'}">
    							<td>������</td>
							</c:if>
						</tr>
						<tr>
							<td><b>����ð�</b></td>
							<td>�ּ� 30�к���</td>
						</tr> 
						<tr>
							<td><b>�����ο�</b></td>
							<td>${resShortList.mrLimit }��</td>
						</tr>
						<tr>
							<td><b>������</b></td> 
							<td>${resShortList.empName }</td>
						</tr>
                	</table>
                </div>
                <ul class="post-utility">
                  <li class="likes"><i class="fa fa-fw fa-lg fa-wifi"></i>wifi</li>
                  <li class="shares"><i class="fa fa-fw fa-lg fa-laptop"></i>laptop</li>
                  <li class="likes"><i class="fa fa-fw fa-lg fa-chalkboard"></i>White Board</li>
                  <li class="shares"><i class="fa fa-fw fa-lg fa-laptop"></i>Beam project</li>
                  <li class="comments"><a class="nav-link" href="#user-settings" data-toggle="tab">��� ���� ��û</a></li>  
                </ul>
              </div>
              </c:forEach>
               </div>
              <div class="tab-pane fade" id="user-settings">
              <div class="tile user-settings">
                <h4 class="line-head">��� ���� ��û</h4>
                <form>
                  <div class="row mb-4">
                    <div class="col-md-4">
                      <label>��û�� ��</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="col-md-4">
                      <button class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i> �ֱ� �̷� �ҷ����� </button>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <label>ȸ�ǽ� ��</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>���� ���� ����</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>���� ���� ����</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="col-md-4">
                      <label>��� ����</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>ȸ�� ����</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>������</label>
                      <input class="form-control" type="text">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>���� ���</label>
                      <input class="form-control" type="text">
                    </div>
                     <div class="clearfix"></div>
                    <div class="col-md-4">
                      <label>����</label>
                      <input type=checkbox name=snack value="���� ����"><br> 
                    </div>
                  </div>
                   <div class="clearfix"></div>
                  <div class="row mb-10">
                    <div class="col-md-12">
                      <button class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i> Save</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        </div>
	</main>
</body>
</html>