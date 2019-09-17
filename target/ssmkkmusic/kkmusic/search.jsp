<%@ page import="com.pojo.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/24
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("basePath", request.getContextPath());
%>
<html>
<head>
    <title>歌单</title>
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
                    <h1 class="lg" title="千千音乐官网">
                        <a id="bm-logo" href="http://music.taihe.com/" title="千千音乐-听见世界">
                            <img style="width:123px;height:41px" src="img/logo_2x.png" alt="千千音乐-听见世界">
                        </a>
                    </h1>
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
                            <%
                                User user = (User) session.getAttribute("user");
                                if (user!=null){
                            %>
                            <div class="menu-login" id="menu-login" onmouseenter="a()" onmouseleave="b()"><img id="anchor-user-name" src="img/6ec2e78e8be799bde6b49b689e.jpg"><em
                                    class="vip-info undefined"></em></div>
                            <div id="userbar" class="userinfo_box">
                                <div id="menu-user1" style="display: none; width: 204px;" class="mn-tip mnd-tip" onmouseenter="a()"
                                     onmouseleave="b()"> <span class="u_ddl_arrow"> <em></em>
											</span>
                                    <div class="mnd">
                                        <div class="uuser-info">
                                            <p class="uuser-name"><a href="/user" target="_blank">${user.getName()}</a></p>
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
                            <%
                            }else {
                            %>
                            <div class="menu-login" id="menu-login">
                                <i></i>
                                <p><a id="user_login_modal_btn" >登录</a> / <a target="_blank"  id="user_add_modal_btn">注册</a></p>
                            </div>
                            <%
                                }
                            %>
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
                            <a href="http://localhost:8080/ssmkkmusic_war_exploded/" onclick="window.parent.document.getElementById('iframe1').src='index.jsp'" class=" " data-log="nav-home">首页</a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/ssmkkmusic_war_exploded/slist" onclick="window.parent.document.getElementById('iframe1').src='songlist.jsp'" class=" active" data-log="nav-music-songlist">歌单</a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/ssmkkmusic_war_exploded/singer" onclick="window.parent.document.getElementById('iframe1').src='singerlist.jsp'" class=" " data-log="nav-singer">歌手</a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/ssmkkmusic_war_exploded/tag" class=" " data-log="nav-music-cate">分类</a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/ssmkkmusic_war_exploded/top" onclick="window.parent.document.getElementById('iframe1').src='rankinglist.jsp'" class=" " data-log="nav-top">榜单</a>
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
            <div class="search-view view-without-leftbar">
                <div class="search-header">
                    <h2>搜索结果</h2>
                    <div class="tabs unselectable">
                        <div class="tab active">歌曲</div>
                        <div class="tab">专辑</div>
                        <div class="tab">艺人</div>
                        <div class="tab">歌单</div>
                        <div class="tab">MV</div>
                        <div class="tab">用户</div>
                    </div>
                </div>

                <div class="search-content">
                    <div class="table idle song-table search-songs hh">
                        <div class="table-container">
                            <table>
                                <thead>
                                <tr>
                                    <th class="th-index" style="width: 8%;">#</th>
                                    <th class="th-songName" style="width: 23%;">歌曲</th>
                                    <th class="th-artist" style="width: 23%;">歌手</th>
                                    <th class="th-album" style="width: 23%;">专辑</th>
                                    <th class="th-duration" style="width: 23%;">时长</th>
                                </tr>
                                <tr class="division">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:if test="${!empty page.list }">
                                    <c:forEach items="${page.list}" var="songs" varStatus="index">
                                        <c:if test="${index.index%2==0}">
                                            <tr class="odd">
                                                <td>
                                                    <div class="index-container"><span class="em index">${index.index+1}</span>
                                                        <div class="audio-icon unselectable">
                                                            <div class="column paused" style="animation-delay: -1.2s;"></div>
                                                            <div class="column paused"></div>
                                                            <div class="column paused" style="animation-delay: -1.5s;"></div>
                                                            <div class="column paused" style="animation-delay: -0.9s;"></div>
                                                            <div class="column paused" style="animation-delay: -0.6s;"></div>
                                                        </div>
                                                        <div class="iconfont play-btn" href="/playSongList?id=${songs.sid}"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="songName-container">
                                                        <div class="with-mv-icon">
                                                            <div class="custom-content">
                                                                <div class="song-name em"><a href="/song/mT0yE15cf99"><span>${songs.sname}</span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="artist-container">
                                                        <div class="singers"><a href="/artist/dz264c5b"><span><span class="highlight">${songs.singer.singer_name}</span></span></a></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="album-container">
                                                        <div class="album"><a href="/album/nnnTjke49aa"><span>${songs.cd.CDname}</span></a></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="duration-container ops-container"><span class="duration">${songs.stime}</span>
                                                        <div class="operations ops-right">
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${index.index%2!=0}">
                                            <tr class="even">
                                                <td>
                                                    <div class="index-container"><span class="em index">${index.index+1}</span>
                                                        <div class="audio-icon unselectable">
                                                            <div class="column paused" style="animation-delay: -1.2s;"></div>
                                                            <div class="column paused"></div>
                                                            <div class="column paused" style="animation-delay: -1.5s;"></div>
                                                            <div class="column paused" style="animation-delay: -0.9s;"></div>
                                                            <div class="column paused" style="animation-delay: -0.6s;"></div>
                                                        </div>
                                                        <div class="iconfont play-btn"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="songName-container">
                                                        <div class="song-name em"><a href="/song/bAgH1d3dd7"><span>${songs.sname}</span></a></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="artist-container">
                                                        <div class="singers"><a href="/artist/dz264c5b"><span><span class="highlight">${songs.singer.singer_name}</span></span></a></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="album-container">
                                                        <div class="album"><a href="/album/jFTnc500a"><span>${songs.cd.CDname}</span></a></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="duration-container ops-container"><span class="duration">${songs.stime}</span>
                                                        <div class="operations ops-right">
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                            <div class="ops-item">
                                                                <div class="iconfont"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                                </tbody>
                            </table>
                        </div>
                        <div class="row" style="margin: 0 auto; text-align:center;width: 100%">
                            <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
                            <div class="col-md-6" style="width: 100%">
                                当前第：${page.pageNum}页，总共：${page.pages}页，总共：${page.total}条记录
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li><a href="${pageContext.request.contextPath}/search?pg=1" rel="external nofollow" >首页</a></li>
                                        <c:if test="${page.hasPreviousPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/search?pg=${page.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                                    <span aria-hidden="true">«</span>
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:forEach items="${page.navigatepageNums }" var="page_Num">
                                            <c:if test="${page_Num == page.pageNum }">
                                                <li class="active"><a href="#" rel="external nofollow" >${ page_Num}</a></li>
                                            </c:if>
                                            <c:if test="${page_Num != page.pageNum }">
                                                <li><a href="${pageContext.request.contextPath}/search?pg=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${page.hasNextPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/search?pg=${page.pageNum+1}" rel="external nofollow" aria-label="Next">
                                                    <span aria-hidden="true">»</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li><a href="${pageContext.request.contextPath}/search?pg=${page.pages}" rel="external nofollow" >末页</a></li>
                                    </ul>
                                </nav>

                            </div>

                            <!-- 分页条 -->
                            <div class="col-md-6">
                            </div>

                        </div>
                    </div>
                    <div class="hh" style="display: none;">55</div>
                    <div class="adaptive-list hh" style="opacity: 1;display: none;">
                        <c:forEach items="${page.list}" var="s" varStatus="index">
                            <c:if test="${index.index==0}">
                                <div class="artist-item unselectable" style="flex: 0 0 16.6667%; max-width: 16.6667%;">
                                    <a href="/artist/dz264c5b">
                                        <div class="cover" style="background-image: url(${pageContext.request.contextPath}/${s.singer.photoUrl})"></div></a>
                                    <div class="info"><div class="name">
                                        <a href="/artist/dz264c5b"><span><span class="highlight">${s.singer.singer_name}</span></span></a>
                                    </div>
                                        <div class="tag"><a>${s.singer.tag.tag1}</a><a>${s.singer.tag.tag2}</a><a>${s.singer.getTag().tag3}</a>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${index.index>0}">
                                <c:forEach begin="0" end="${index.index}" var="a">
                                    <c:if test="${s.singer.singer_name!=page.list.get(a).singer.singer_name}">
                                        <div class="artist-item unselectable" style="flex: 0 0 16.6667%; max-width: 16.6667%;">
                                            <a href="/artist/dz264c5b">
                                                <div class="cover" style="background-image: url(${pageContext.request.contextPath}/${s.singer.photoUrl})"></div></a>
                                            <div class="info"><div class="name">
                                                <a href="/artist/dz264c5b"><span><span class="highlight">${s.singer.singer_name}</span></span></a>
                                            </div>
                                                <div class="tag"><a>${s.singer.tag.tag1}</a><a>${s.singer.tag.tag2}</a><a>${s.singer.getTag().tag3}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:if>



                            </c:forEach>
                        <div class="row" style="margin: 0 auto; text-align:center;width: 100%">
                            <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
                            <div class="col-md-6" style="width: 100%">
                                当前第：${page.pageNum}页，总共：${page.pages}页，总共：${page.total}条记录
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li><a href="${pageContext.request.contextPath}/search?pg=1" rel="external nofollow" >首页</a></li>
                                        <c:if test="${page.hasPreviousPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/search?pg=${page.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                                    <span aria-hidden="true">«</span>
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:forEach items="${page.navigatepageNums }" var="page_Num">
                                            <c:if test="${page_Num == page.pageNum }">
                                                <li class="active"><a href="#" rel="external nofollow" >${ page_Num}</a></li>
                                            </c:if>
                                            <c:if test="${page_Num != page.pageNum }">
                                                <li><a href="${pageContext.request.contextPath}/search?pg=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${page.hasNextPage }">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/search?pg=${page.pageNum+1}" rel="external nofollow" aria-label="Next">
                                                    <span aria-hidden="true">»</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li><a href="${pageContext.request.contextPath}/search?pg=${page.pages}" rel="external nofollow" >末页</a></li>
                                    </ul>
                                </nav>

                            </div>

                            <!-- 分页条 -->
                            <div class="col-md-6">
                            </div>

                        </div>
                    </div>
                    <div class="adaptive-list hh" style="opacity: 1; display: none;">88</div>
                    <div class="hh" style="display: none;">66</div>
                    <div class="hh" style="display: none;">77</div>
                </div>
            </div>
            <div style="clear:both"></div>
        </div>
        <div class="music-context-menu">
            <nav role="menu" tabindex="-1" style="position:fixed;opacity:0;pointer-events:none" class="react-contextmenu">
                <nav class="react-contextmenu-item react-contextmenu-submenu" style="position:relative" role="menuitem" tabindex="-1"
                     aria-haspopup="true">
                    <div class="react-contextmenu-item">
                        <div class="content">加入歌单</div>
                    </div>
                    <nav style="position:absolute;transition:opacity 1ms;top:0;left:100%" class="react-contextmenu collect-submenu"
                         role="menu" tabindex="-1">
                        <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false"><a href="/newCollect">
                            <div class="content">加入新的歌单</div>
                        </a></div>
                    </nav>
                </nav>
                <div class="react-contextmenu-item react-contextmenu-item--divider" role="menuitem" tabindex="-1" aria-disabled="false"
                     aria-orientation="horizontal"></div>
                <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
                    <div class="content">添加到播放列表</div>
                </div>
                <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
                    <div class="content">手机试听</div>
                </div>
                <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false">
                    <div class="content">分享</div>
                </div>
                <div class="react-contextmenu-item" role="menuitem" tabindex="-1" aria-disabled="false"><a href="/song/undefined#comments">
                    <div class="content">评论</div>
                </a></div>
            </nav>
            <div class="react-contextmenu-wrapper">
                <div></div>
            </div>
        </div>
        <div taihe="" class="music-foot clearfix layout-footer_taihe" monkey="music-foot" alog-alias="music-foot-alog">
            <a class="bd-cloud-logo" target="_blank" href="https://cloud.baidu.com/"></a><span class="work-together">战略合作：</span>
            <div class="follow-contain">
                <a href="" class="" id="weixin_follow">加微信好友</a>
                <a href="" target="_blank" class="">加关注</a>
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
    <div class="modal fade" id="userLoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 0px;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">用户登录</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">username</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" class="form-control" id="username_login_input" placeholder="username">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="password_login_input" placeholder="password">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;border-top: 0px">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin: 0 auto;">退出</button>
                    <button type="button" class="btn btn-primary" id="user_login_btn">登录</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="userAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 0px;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myRgModalLabel">用户注册</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">username</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" class="form-control" id="username_add_input" placeholder="username">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="password_add_input" placeholder="password">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">age</label>
                            <div class="col-sm-10">
                                <input type="text" name="age" class="form-control" id="age_add_input" placeholder="age">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">email</label>
                            <div class="col-sm-10">
                                <input type="text" name="email" class="form-control" id="email_add_input" placeholder="email">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;border-top: 0px">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin: 0 auto;">退出</button>
                    <button type="button" class="btn btn-primary" id="user_save_btn">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function reset_form(ele) {
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }

    //点击新增按钮弹出模态框。
    $("#user_login_modal_btn").click(function() {
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#userLoginModal form");
        //弹出模态框
        $("#userLoginModal").modal({
            backdrop: "static"
        });
    });
    //点击登录
    $("#user_login_btn").click(function() {
        $.ajax({
            url: "${pageContext.request.contextPath}/login",
            type: "POST",
            data: $("#userLoginModal form").serialize(),
            success: function(result) {
                if (result.code == 100) {
                    alert("成功");
                    window.location.href = "/ssmkkmusic_war_exploded/";
                    $("#userAddModal").modal('hide');
                    //2、显示刚才保存的数据
                } else {
                    //显示失败信息
                    alert("失败");
                    console.log(result);
                }
            }
        });
    });
    $("#user_add_modal_btn").click(function() {
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#userAddModal form");
        //弹出模态框
        $("#userAddModal").modal({
            backdrop: "static"
        });
    });
    //点击保存，保存员工。
    $("#user_save_btn").click(function() {
        $.ajax({
            url: "${pageContext.request.contextPath}/add",
            type: "POST",
            data: $("#userAddModal form").serialize(),
            success: function(result) {
                //alert(result.msg);
                if (result.code == 100) {
                    alert("成功");
                    //员工保存成功；
                    //1、关闭模态框
                    window.location.href="/ssmkkmusic_war_exploded/";
                    $("#userAddModal").modal('hide');
                    //2、显示刚才保存的数据
                } else {
                    //显示失败信息
                    alert("失败");
                    console.log(result);
                }
            }
        });
    });
    /*$(document).on("click",".select-area-btn",function () {
        var typeName=$(this).attr("{types.typeId}")
        $.ajax({
            url:"{pageContext.request.contextPath}/tag",
            type:"POST",
            data:{"tagname":tagname},
            success:function (result) {

            }
        })
    })*/
</script>
<script>
    $().ready(function(){
        $(".tabs .tab").click(function(){
            var $index=$(this).index();
            $(".search-content .hh").eq($index).show().siblings().hide();
            $(this).addClass("active").siblings().removeClass("active");
        });
    })
</script>
</body>
</html>
