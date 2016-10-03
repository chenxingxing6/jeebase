<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="staticPath" value="${pageContext.request.contextPath}/static"/>
<c:set var="adminPath" value="${pageContext.request.contextPath}/admin"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>菜单管理</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1" name="viewport" />
  <meta content="" name="description" />
  <meta content="" name="author" />
  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
  <link href="${staticPath}/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${staticPath}/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
  <link href="${staticPath}/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="${staticPath}/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN PAGE LEVEL PLUGINS -->
  <link href="${staticPath}/global/plugins/jstree/dist/themes/default/style.min.css" rel="stylesheet" type="text/css" />
  <!-- END PAGE LEVEL PLUGINS -->
  <!-- BEGIN THEME GLOBAL STYLES -->
  <link href="${staticPath}/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
  <link href="${staticPath}/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
  <!-- END THEME GLOBAL STYLES -->
  <!-- BEGIN THEME LAYOUT STYLES -->
  <link href="${staticPath}/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
  <link href="${staticPath}/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
  <link href="${staticPath}/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
  <!-- END THEME LAYOUT STYLES -->
  <link rel="shortcut icon" href="favicon.ico" /> </head>
<!-- END HEAD -->

<body>
        <div class="row">

          <div class="col-md-3">

            <div class="portlet light bordered">
              <div class="portlet-title">
                <div class="caption">
                  <i class="icon-social-dribbble font-blue-sharp"></i>
                  <span class="caption-subject font-blue-sharp bold uppercase">菜单管理</span>
                </div>
              </div>
              <div class="portlet-body">
                <div id="tree_1" class="tree-demo">
                  <ul>
                    <li> Root node 1
                      <ul>
                        <li data-jstree='{ "selected" : true }'>
                          <a href="javascript:;"> Initially selected </a>
                        </li>
                        <li data-jstree='{ "icon" : "fa fa-briefcase icon-state-success " }'> custom icon URL </li>
                        <li data-jstree='{ "opened" : true }'> initially open
                          <ul>
                            <li data-jstree='{ "disabled" : true }'> Disabled Node </li>
                            <li data-jstree='{ "type" : "file" }'> Another node </li>
                          </ul>
                        </li>
                        <li data-jstree='{ "icon" : "fa fa-warning icon-state-danger" }'> Custom icon class (bootstrap) </li>
                      </ul>
                    </li>
                    <li data-jstree='{ "type" : "file" }'>
                      <a href="http://www.jstree.com"> Clickanle link node </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>

          </div>

        </div>
<!--[if lt IE 9]>
<script src="${staticPath}/global/plugins/respond.min.js"></script>
<script src="${staticPath}/global/plugins/excanvas.min.js"></script>
<![endif]-->

        <script src="${staticPath}/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${staticPath}/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${staticPath}/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="${staticPath}/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${staticPath}/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${staticPath}/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${staticPath}/global/plugins/jstree/dist/jstree.min.js" type="text/javascript"></script>
        
        <script src="${staticPath}/global/scripts/app.min.js" type="text/javascript"></script>
        
<script src="${staticPath}/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${staticPath}/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${staticPath}/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->

<script>

    jQuery(document).ready(function() {
      $('#tree_1').jstree({
        "core" : {
          "themes" : {
            "responsive": false
          }
        },
        "types" : {
          "default" : {
            "icon" : "fa fa-folder icon-state-warning icon-lg"
          },
          "file" : {
            "icon" : "fa fa-file icon-state-warning icon-lg"
          }
        },
        "plugins": ["types"]
      });

      // handle link clicks in tree nodes(support target="_blank" as well)
      $('#tree_1').on('select_node.jstree', function(e,data) {
        var link = $('#' + data.selected).find('a');
        if (link.attr("href") != "#" && link.attr("href") != "javascript:;" && link.attr("href") != "") {
          if (link.attr("target") == "_blank") {
            link.attr("href").target = "_blank";
          }
          document.location.href = link.attr("href");
          return false;
        }
      });
    });
</script>

</body>