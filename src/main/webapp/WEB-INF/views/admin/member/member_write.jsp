<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- 대시보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더 Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">회원등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">회원등록</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- 본문내용 Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="row"><!-- 부트스트랩의 디자인 클래스 row -->
          <div class="col-12"><!-- 그리드시스템중 12가로칼럼 width:100% -->
          <!-- form start -->
              <form name="write_form" action="/admin/member_write" method="post">                
         
         <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">CREATE member</h3>
              </div>
              <!-- /.card-header -->
               <div class="card-body">
                  <div class="form-group">
                    <label for="user_id">user_id</label>
                    <input type="text" class="form-control" name="user_id" id="user_id" placeholder="ID를 입력해 주세요" required>
					<!-- 폼에서 input같은 입력태그에는 name속성이 반드시 필요, 이유는 DB에 입력할때, 
					값을 전송하게 되는데, 전송값을 저장하는 이름이 name가 되고, 위에서는 user_id 입니다. -->                  
                  </div>
                  <div class="form-group">
                    <label for="user_pw">Password</label>
                    <input type="password" class="form-control" name="user_pw" id="user_pw" placeholder="암호를 입력해 주세요." required>
                  </div> 
                  <div class="form-group">
                  <label for="user_name">user_name</label>
                  <input type="text" class="form-control" name="user_name" id="user_name" placeholder="이름을 입력해 주세요." required>
                  <!-- 필수입력 값은 html5에서 지원하는 유효성 검사중 required 속성을 사용해서 빈(null)값 체크(유효성검사) -->
                 </div> 
                 <div class="form-group">
                 <label for="email">email</label>
                 <input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력해 주세요." required>
                 </div>
                 <div class="form-group">
                 <label for="point">point</label>
                 <input type="text" class="form-control" name="point" id="point" placeholder="포인트를 입력해 주세요." required>
                 </div>
                 <div class="form-group">
                 <label for="enabled">enabled</label>
                 <select class="form-control" name="enabled" id="enabled">
					<option value="0">false</option>
					<option value="1" selected>true</option>
				</select>
                 </div>
                 <div class="form-group">
                 <label for="enabled">levels</label>
                 <select class="form-control" name="levels" id="levels">
					<option value="ROLE_ADMEN">ROLE_ADMEN</option>
					<option value="ROLE_USER" selected>ROLE_USER</option>
				</select>
                 </div>
                </div>
                <!-- /.card-body -->

              
            </div>
          
          <!-- 버튼영역 시작 -->
            <div class="card-body">
            	<a href="/admin/member_list" class="btn btn-primary float-right mr-1">LIST ALL</a>
              	<button type="submit" class="btn btn-danger float-right mr-1">SUBMIT</a>
              	<!-- a채그는 링크이동은 되지만, post값을 전송하지는 못합니다. 그래서, button채그를 사용. -->
              </div>
          <!-- 버튼영역 끝 -->
          
          </form>
          <!-- 폼내부에 버튼이 있어야지만, 전송버튼이  -->
          </div>
        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp"%>