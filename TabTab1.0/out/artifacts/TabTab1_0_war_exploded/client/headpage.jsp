<%--
  Created by IntelliJ IDEA.
  User: HANDSOME
  Date: 2020/6/17
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html style="padding-bottom: 54px;">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>jquery bootstrapsTabTab游戏网站</title>
    <meta name="description" content="简洁的jQuery bootstraps响应式电商网站模板" />
    <meta name="keywords" content="网站模板,jQuery bootstrap响应电商网站模板,jquery,jquery插件" />
    <link rel="Shortcut icon" href="//www.jq22.com/favicon.ico" />
    <link href="css/headpage_css/demo.css?v4" rel="stylesheet" media="all" />
    <!--[if IE]>

    <style type="text/css">
        li.purchase a {
            padding-top: 5px;
            background-position: 0px -4px;
        }

        li.remove_frame a {
            padding-top: 5px;
            background-position: 0px -3px;
        }
    </style>

    <![endif]-->
    <style>
        .fdad a{color:#000;display:inline-block;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}.fdad{top:66px;}.xgcj li{font-size:14px;line-height:20px;list-style-type:none;transition:all 1s ease 0s;border-radius:5px;}.xgcj li:hover{background-color:#e4e4e4;}.xgcj{background-color:rgba(255,255,255,.3);overflow-x:hidden;}.xgcj ul{padding:10px}.xgcj h3{line-height:30px;}.xgcj p{padding-left:20px;font-size:13px;display:none;}.xgcj span{font-family:"宋体";}.xgcj li:hover p{display:block;}
    </style>
    <script type="text/javascript">
        var txt = "http://www.jq22.com/demo/jquerybootstrapdianshanmoban202005120839";
        window.g1 = txt.substr(0, 3);
        window.g2 = txt.substr(0, 19);
    </script>
    <script src="js/headpage_js/pace.min.js" charset="gbk"></script>
    <link href="css/headpage_css/pace-theme-barber-shop.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/headpage_js/jquery.qrcode.min.js"></script>
    <script type="text/javascript">
        var dqfl = "UI";
        var theme_list_open = false;

        $(document).ready(function () {
            function fixHeight() {
                var headerHeight = $("#switcher").height();
                $("#iframe").attr("height", $(window).height() - 54 + "px");
            }
            $(window).resize(function () {
                fixHeight();
            }).resize();

            $('.icon-monitor').addClass('active');

            $(".icon-mobile-3").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-3');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-2").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-2');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });


            $(".icon-mobile-1").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width');
                $('.icon-tablet,.icon-mobile,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-tablet").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('tablet-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-monitor").click(function () {
                $("#by").css("overflow-y", "hidden");
                $('#iframe-wrap').removeClass().addClass('full-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            if (dqfl.indexOf("APP模板") != -1) {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-2');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            }
        });
    </script>
    <script type="text/javascript">
        function Responsive($a) {
            if ($a == true) $("#Device").css("opacity", "100");
            if ($a == false) $("#Device").css("opacity", "0");
            $('#iframe-wrap').removeClass().addClass('full-width');
            $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
            $(this).addClass('active');
            return false;
        };
    </script>
</head>
<body id="by" style="overflow-y: hidden">
<div id="switcher">
    <div class="center">
        <ul>
            <li class="logoTop" id="sj2"><a href="http://www.jq22.com/jquery-info23037">jquery bootstraps响应式电商网站模板</a></li>
            <div id="Device">
                <li class="device-monitor"><a href="javascript:">
                    <div class="icon-monitor">
                    </div>
                </a></li>
                <li class="device-mobile"><a href="javascript:">
                    <div class="icon-tablet">
                    </div>
                </a></li>
                <li class="device-mobile"><a href="javascript:">
                    <div class="icon-mobile-1">
                    </div>
                </a></li>
                <li class="device-mobile-2"><a href="javascript:">
                    <div class="icon-mobile-2">
                    </div>
                </a></li>
                <li class="device-mobile-3"><a href="javascript:">
                    <div class="icon-mobile-3">
                    </div>
                </a></li>
            </div>
            <li class="top2" id="sj"><a href="#">手机二维码预览</a><div class="vm">
                <div id="output"></div>
                <p style="color: #808080">扫一扫，直接在手机上打开</p>
            </div>
            </li>
            <script>
                jQuery('#output').qrcode({ width: 150, height: 150, text: window.location.href });
            </script>
            <li class="remove_frame" style="display:n"><a href="http://www.jq22.com/demo/jquerybootstrapdianshanmoban202005120839" title="移除框架"></a></li>
        </ul>
    </div>
</div>
<div id="iframe-wrap">
    <iframe id="iframe" src="http://www.jq22.com/demo/jquerybootstrapdianshanmoban202005120839" frameborder="0" width="100%"></iframe>
</div>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".fdr").click(function () {
                $(".fdad").hide();
            });
        });
    </script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b3a3fc356d0af38b811a0ef8d50716b8";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</body>
</html>

