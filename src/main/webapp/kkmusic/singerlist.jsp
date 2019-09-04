<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/25
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset=utf-8"utf-8">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>虾米音乐 - 发现音乐新世界</title>
    <meta name="keywords" content="虾米音乐(xiami.com) - 发现音乐新世界">
    <meta name="description" content="虾米音乐是专业音乐内容发现平台，依托专业曲库内容和精准推荐算法，带你发现音乐惊喜，提升音乐审美。平台致力于扶持原创音乐，2014年启动原创音乐扶持项目——寻光计划。">
    <script type="text/javascript" src="jquery/1.11.0/jquery1.11.0.js"></script>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/app.css">
    <link href="css/styles.css" rel=" stylesheet">
    <script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function a() {
            var box = document.getElementById("menu-user1");
            box.style.cssText = "display: block; width: 204px;";
        }

        function b() {
            var box = document.getElementById("menu-user1");
            box.style.cssText = "display: none ; width: 204px;";
        }
        $(document).ready(function() {
            $(".button.unselectable.selector-btn.selector").click(function () {
                $("#list-gender").toggleClass("react-contextmenu--visible");
                $("#ichange").toggleClass("arrows");
            });
        });
    </script>
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.eot");
            src: url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.eot?#iefix")
            format("embedded-opentype"), url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.woff2")
            format("woff2"), url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.woff")
            format("woff"), url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.ttf")
            format("truetype"), url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.svg#iconfont") format("svg")
        }

        .iconfont {
            font-family: iconfont;
            text-align: center;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }
        .arrow{
            transform: rotateZ(0deg);
        }
        .arrows{
            transform: rotateZ(180deg);
        }
    </style>
</head>
<body>
<div id="app">
    <div class="page-container">
        <div class="responsive narrow-screen top-header-wrapper">
            <!-- start 页面顶部搜索框及用户中心 -->
            <div class="screen-hd clearfix">
                <div class="music-head " monkey="music-head">
                    <h1 class="lg" title="千千音乐官网"> <a id="bm-logo" href="http://music.taihe.com/" title="千千音乐-听见世界"><img style="width:123px;height:41px"
                                                                                                                         src="img/logo_2x.png" alt="千千音乐-听见世界"></a> </h1>
                    <div class="search-wrap">
                        <form id="search_form" name="f1" action="/search">
                            <div class="search">
										<span class="s_ipt_wr">
											<span class="ui-placeholder-container"><label for="ww" class="ui-placeholder-label">请输入歌名、歌词、歌手或专辑</label><input
                                                    type="text" name="key" data-value="" data-default="请输入歌名、歌词、歌手或专辑" id="ww" class="kw s_ipt s_ipt_def" size="42"
                                                    maxlength="100" autocomplete="off"></span>
										</span><span class="s_btn_wr"><input type="submit" value="" class="s_btn" onmousedown="this.className='s_btn '"
                                                                             onmouseout="this.className='s_btn'"></span><span class="s_tools"></span>
                                <!-- 去掉s_btn_h类名为搜索点击 onmousedown="this.className='s_btn s_btn_h'"-->
                            </div>
                            <div id="loading-pic"></div>
                            <div class="sug-result"></div>
                        </form>
                    </div>

                    <div class="menu-right">
                        <a href="http://music.taihe.com/vip" class="vip" id="userCenter" target="_blank"><i></i>VIP</a>
                        <div class="menu-user" id="menu-user-con">
                            <div class="menu-login" id="menu-login" onmouseenter="a()" onmouseleave="b()"><img id="anchor-user-name" src="img/6ec2e78e8be799bde6b49b689e.jpg"><em
                                    class="vip-info undefined"></em></div>
                            <div id="userbar" class="userinfo_box">
                                <div id="menu-user1" style="display: none; width: 204px;" class="mn-tip mnd-tip" onmouseenter="a()"
                                     onmouseleave="b()"> <span class="u_ddl_arrow"> <em></em>
											</span>
                                    <div class="mnd">
                                        <div class="uuser-info">
                                            <p class="uuser-name"><a href="/user" target="_blank">王白洛</a></p>
                                        </div>
                                        <div class="uuser-active">
                                            <ul class="clearfix">
                                                <li id="messageDynamic" class="left"><a href="/user/dynamic" target="_blank"><i></i><span>动态</span><b>0</b></a></li>
                                                <li id="messageFriend" class="center"><i></i><a href="/user/friend" target="_blank"><span>关注</span><b>2</b></a></li>
                                                <li id="messageFans" class="right"><i></i><a href="/user/fans" target="_blank"><span>粉丝</span><b>0</b></a></li>
                                            </ul>
                                        </div>
                                        <ul class="uuser-list">
                                            <li><a id="messageHint" class="my-message" href="/message" target="_blank" rel="nofollow"><i style="display: block;"></i><em></em><span>我的消息</span></a></li>
                                            <li><a class="my-songlist" href="/user" target="_blank" rel="nofollow"><i></i><span>我的歌单</span></a></li>
                                            <li><a class="my-paylist" href="/paylist" target="_blank" rel="nofollow"><i></i><span>购买记录</span></a></li>
                                            <li><a class="my-info" href="http://127.0.0.1:8848/kkmusic/user.html" target="_blank" rel="nofollow"><i></i><span>账号设置</span></a></li>
                                            <li><a class="my-bind" href="/user/bind" target="_blank" rel="nofollow"><i></i><span>分享绑定</span></a></li>
                                            <li><a href="javascript:;" class="logout" id="logout" rel="nofollow"><i></i><span>退出</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form style="width:0;height:0;" name="vform" id="vform" action="https://www.baidu.com/">
                        <input type="hidden" name="ct" value="301989888">
                        <input type="hidden" name="rn" value="20">
                        <input type="hidden" name="pn" value="0">
                        <input type="hidden" name="db" value="0">
                        <input type="hidden" name="sf/vsearch" value="">
                        <input type="hidden" name="word" value="">
                    </form>
                </div>

                <div class="music-head-nav">
                </div>
            </div>
            <!-- end 页面顶部搜索框及用户中心 -->

            <!-- start 导航栏 -->
            <div class="nav-wrapper sup-nav-wrapper rsp-custom">
                <div class="screen-hd clearfix">
                    <ul class="sup-nav rsp-an-container">
                        <!--mis取不到导航数据时，导航容错 -->
                        <li>
                            <a href="http://music.taihe.com/" class=" " data-log="nav-home">首页</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/songlist" class=" " data-log="nav-music-songlist">歌单</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/artist" class="active" data-log="nav-singer">歌手</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/tag" class=" " data-log="nav-music-cate">分类</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/top" class=" " data-log="nav-top">榜单</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/mv" class=" " data-log="nav-music-mv">MV</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.showstart.com/event/list" class=" " data-log="nav-showstart">演出</a>
                        </li>
                        <li>
                            <a href="http://music.taihe.com/redrank" class=" " data-log="nav-redrank">U榜</a>
                        </li>
                    </ul>
                    <div class="search-btns">
                        <a class="search-btn down-btn pr" href="http://music.taihe.com/download/index.html?pst=header" target="_blank">
                            <i class="icon icon-down"></i>
                            <p class="down-btn-qr pa">
                                <img src="img/qr_header.png" alt="千千音乐客户端" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;daoliu_top_nav&quot;,&quot;sub&quot;:&quot;qr&quot;}">
                                <span>扫描下载App</span>
                                <span>尊享高品质音乐</span>
                            </p>
                            <span class="text" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;daoliu_top_nav&quot;,&quot;sub&quot;:&quot;btn&quot;}">客户端</span>
                        </a>
                        <a class="search-btn fm-btn" title="千千音乐随心听" href="http://fm.taihe.com/" target="_blank" data-log="nav-fm-new">
                            <i class="icon icon-fm"></i>
                            <span class="text">随心听</span>
                        </a>
                        <a class="search-btn mbox-btn" title="我的音乐盒" href="http://play.taihe.com/" target="_blank" data-log="nav-mymbox-new">
                            <i class="icon icon-mbox"></i>
                            <span class="text">音乐盒</span>
                        </a>

                    </div>
                </div>
            </div>
            <!-- end 导航栏 -->
        </div>
        <div class="content-wrapper">
            <div class="list-view artist-list-view view-without-leftbar" data-spm-anchor-id="a2oj1.12028229.0.i5.47d44cc04kHgTM">
                <div class="list-header">
                    <div class="list-title">艺人</div>
                    <div class="tabs unselectable">
                        <div class="tab active">全部</div>
                        <div class="tab">华语</div>
                        <div class="tab">欧美</div>
                        <div class="tab">日本</div>
                        <div class="tab">韩国</div>
                        <div class="tab">音乐人</div>
                        <div class="tab">其他</div>
                    </div>
                </div>
                <div class="list-select-category" data-spm-anchor-id="a2oj1.12028229.0.i1.47d44cc04kHgTM">
                    <div class="select">
                        <div>
                            <div class="button unselectable selector-btn selector" data-spm-anchor-id="a2oj1.12028229.0.i4.47d44cc04kHgTM" >全部<span
                                    class="iconfont selector-icon" data-spm-anchor-id="a2oj1.12028229.0.i3.47d44cc04kHgTM" onclick="d()"></span><span class="ripple"
                                                                                                                                                       style="height: 109px; width: 109px; top: -54.5px; left: 9.3px;" data-spm-anchor-id="a2oj1.12028229.0.i2.47d44cc04kHgTM"></span></div>
                        </div>
                        <div class="react-contextmenu-wrapper">
                            <div></div>
                        </div>
                    </div>
                    <div class="select">
                        <div>
                            <div class="button unselectable selector-btn selector">全部标签<span class="iconfont selector-icon"></span><span
                                    class="ripple" style="height: 141px; width: 141px; top: -47.5px; left: -67.7px;" data-spm-anchor-id="a2oj1.12028229.0.i0.47d44cc04kHgTM"></span></div>
                        </div>
                        <div class="react-contextmenu-wrapper">
                            <div></div>
                        </div>
                    </div>
                </div>
                <div class="list-container artist-list">
                    <div class="adaptive-list" style="opacity: 1;">
                        <c:if test="${!empty pageInfo.list}">
                        <c:forEach items="${pageInfo.list}" var="singer">
                        <div class="artist-item unselectable" style="flex: 0 0 16.6667%; max-width: 16.6667%;">
                            <a href="https://www.xiami.com/artist/dz264c5b">
                            <div class="cover" style="background-image: url(${singer.photoUrl});"></div>
                            </a>
                            <div class="info">
                                <div class="name"><a href="https://www.xiami.com/artist/dz264c5b">${singer.singer_name}</a></div>
                                <div class="tag"><a>#${singer.tag.tag1} </a><a>#${singer.tag.tag2} </a><a>#${singer.tag.tag3}</a></div>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
                    </div>
                </div>
              <%--  <ul class="rc-pagination" unselectable="unselectable">
                    <li title="上一页" class="rc-pagination-disabled rc-pagination-prev" aria-disabled="true"><a class="rc-pagination-item-link"></a></li>
                    <li title="1" class="rc-pagination-item rc-pagination-item-1 rc-pagination-item-active" tabindex="0"><a>1</a></li>
                    <li title="2" class="rc-pagination-item rc-pagination-item-2" tabindex="0"><a>2</a></li>
                    <li title="3" class="rc-pagination-item rc-pagination-item-3" tabindex="0"><a>3</a></li>
                    <li title="4" class="rc-pagination-item rc-pagination-item-4" tabindex="0"><a>4</a></li>
                    <li title="5" class="rc-pagination-item rc-pagination-item-5 rc-pagination-item-before-jump-next" tabindex="0"><a>5</a></li>
                    <li title="向后 5 页" tabindex="0" class="rc-pagination-jump-next"><a class="rc-pagination-item-link"></a></li>
                    <li title="19" class="rc-pagination-item rc-pagination-item-19" tabindex="0"><a>19</a></li>
                    <li title="下一页" tabindex="0" class=" rc-pagination-next" aria-disabled="false"><a class="rc-pagination-item-link"></a></li>
                </ul>--%>
                <div class="row" style="margin: 0 auto; text-align:center;width: 100%">
                    <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
                    <div class="col-md-6" style="width: 100%">
                        当前第：${pageInfo.pageNum}页，总共：${pageInfo.pages}页，总共：${pageInfo.total}条记录
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/slist?pg=1" rel="external nofollow" >首页</a></li>
                                <c:if test="${pageInfo.hasPreviousPage }">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/slist?pg=${pageInfo.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                </c:if>

                                <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                    <c:if test="${page_Num == pageInfo.pageNum }">
                                        <li class="active"><a href="#" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                    <c:if test="${page_Num != pageInfo.pageNum }">
                                        <li><a href="${pageContext.request.contextPath}/slist?pg=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${pageInfo.hasNextPage }">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/slist?pg=${pageInfo.pageNum+1}" rel="external nofollow" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li><a href="${pageContext.request.contextPath}/slist?pg=${pageInfo.pages}" rel="external nofollow" >末页</a></li>
                            </ul>
                        </nav>

                    </div>

                    <!-- 分页条 -->
                    <div class="col-md-6">
                    </div>

                </div>

            </div>
        </div>
        <div taihe="" class="music-foot clearfix layout-footer_taihe" monkey="music-foot" alog-alias="music-foot-alog">
            <a class="bd-cloud-logo" target="_blank" href="https://cloud.baidu.com/"></a><span class="work-together">战略合作：</span>
            <div class="follow-contain">
                <a href="javascript:void(0)" class="weixin-follow" id="weixin_follow">加微信好友</a>
                <a href="http://e.weibo.com/musicbaidu" target="_blank" class="weibo-follow">加关注</a>
            </div>
            <a href="http://music.taihe.com/feedback" target="_blank" rel="nofollow">意见反馈</a>
            <i class="module-line"></i>
            <a target="_blank" href="http://music.taihe.com/doc/contact" rel="nofollow">联系我们</a>
            <i class="module-line"></i>
            <a target="_blank" href="http://music.taihe.com/doc/help" rel="nofollow">帮助中心</a>
            <i class="module-line"></i>
            <a href="http://cloudmusic.qianqian.com/" target="_blank" rel="nofollow">资源合作开放平台</a>
            <i class="module-line"></i>
            <a href="http://y.taihe.com/" target="_blank">原创音乐人</a>
            <div class="footer-license">
                <span class="copy" style="margin:0">©2019 Qianqian</span>

                <a target="_blank" href="http://music.taihe.com/doc/culture_license" class="footer-wangwen">粤网文[2018]0902-359号</a>
                <span>
							<a target="_blank" class="anbei" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44030502002309"
                               style=""><img src="img/icon_police.png" style="width: 16px;vertical-align: -10%;margin-left:5px;">
								<p class="footer-beian">粤公网安备 44030502002309号</p>
							</a>
						</span>
                <a href="http://music.taihe.com/doc/tb_license" class="footer-zengzhi" target="_blank">增值电信业务经营许可证：粵B2-20180819</a>
                <p class="pfont" style="color:#999">
                    <a class="javascript:void(0)" style="text-decoration: none;color:#999">违法和不良信息举报电话: 010-84369708 转8012</a>&nbsp;
                    <a style="color:#999" href="mailto:jubao@taihe.com">举报邮箱: jubao@taihe.com</a> &nbsp;
                    <a target="_blank" style="color:#999" href="http://music.taihe.com/feedback">反馈中心</a>
                </p>
            </div>
        </div>
    </div>
</div>
<nav role="menu" tabindex="-1" class="react-contextmenu" id="list-gender" style="position: fixed; top: 234px; left: 150px;">
    <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
        <div class="content">
            <div class="list-select">
                <div>全部</div>
                <div class="iconfont selected"></div>
            </div>
        </div>
    </div>
    <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
        <div class="content">
            <div class="list-select">
                <a href="${pageContext.request.contextPath}/singer?sex=男">男</a>
            </div>
        </div>
    </div>
    <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
        <div class="content">
            <div class="list-select">
                <a href="${pageContext.request.contextPath}/singer?sex=女">女</a>
            </div>
        </div>
    </div>
    <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
        <div class="content">
            <div class="list-select">
                <div>组合</div>
            </div>
        </div>
    </div>
</nav>
</body>
</html>

