<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/28
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${list.slname}</title>
    <link rel="stylesheet" type="text/css" href="../css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="../css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="../css/LqCZVfDu.css">
    <link rel="stylesheet" type="text/css" href="../css/ZtkFNkCw.css">
    <script type="text/javascript" src="../static/js/jquery-3.2.1.min.js"></script>
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';
            src: url('${pageContext.request.contextPath}/static/font/iconfont.eot');
            src: url('${pageContext.request.contextPath}/static/font/iconfont.eot?#iefix') format('embedded-opentype'),
            url('${pageContext.request.contextPath}/static/font/iconfont.woff') format('woff'),
            url('${pageContext.request.contextPath}/static/font/iconfont.ttf') format('truetype'),
            url('${pageContext.request.contextPath}/static/font/iconfont.svg#iconfont') format('svg');
        }

        .iconfont {
            font-family: "iconfont" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>
<body class="sns " data-tiptaihe="0">
<!-- 太合域名 -->
<div class="responsive narrow-screen top-header-wrapper">
    <!-- start 页面顶部搜索框及用户中心 -->
    <div class="screen-hd clearfix">
        <div class="music-head " monkey="music-head">
            <h1 class="lg" title="千千音乐官网"> <a id="bm-logo" href="http://music.taihe.com/" title="千千音乐-听见世界">
                <img style="width:123px;height:41px" src="../img/logo_2x.png" alt="千千音乐-听见世界"></a> </h1>
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
            <script>
                function a() {
                    var box = document.getElementById("menu-user1");
                    box.style.cssText = "display: block; width: 204px;";
                }

                function b() {
                    var box = document.getElementById("menu-user1");
                    box.style.cssText = "display: none ; width: 204px;";
                }
            </script>
            <div class="menu-right">
                <a href="http://music.taihe.com/vip" class="vip" id="userCenter" target="_blank"><i></i>VIP</a>
                <div class="menu-user" id="menu-user-con">
                    <c:if test="${!empty user}">
                        <div class="menu-login" id="menu-login" onmouseenter="a()" onmouseleave="b()"><img id="anchor-user-name" src="../img/6ec2e78e8be799bde6b49b689e.jpg"><em
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
                    </c:if>
                    <c:if test="${empty user}">
                        <div class="menu-login" id="menu-login">
                            <i></i>
                            <p><a id="user_login_modal_btn" >登录</a> / <a target="_blank"  id="user_add_modal_btn">注册</a></p>
                        </div>
                    </c:if>
                </div>
            </div>
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
                    <a href="http://localhost:8080/ssmkkmusic_war_exploded/slist" onclick="window.parent.document.getElementById('iframe1').src='songlist.jsp'" class=" " data-log="nav-music-songlist">歌单</a>
                </li>
                <li>
                    <a href="http://localhost:8080/ssmkkmusic_war_exploded/singer" onclick="window.parent.document.getElementById('iframe1').src='singerlist.jsp'" class=" " data-log="nav-singer">歌手</a>
                </li>
                <li>
                    <a href="http://localhost:8080/ssmkkmusic_war_exploded/tag" class=" " data-log="nav-music-cate">分类</a>
                </li>
                <li>
                    <a href="http://localhost:8080/ssmkkmusic_war_exploded/top" onclick="window.parent.document.getElementById('iframe1').src='rankinglist.jsp'" class="active " data-log="nav-top">榜单</a>
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
                        <img src="../img/qr_header.png" alt="千千音乐客户端" >
                        <span>扫描下载App</span>
                        <span>尊享高品质音乐</span>
                    </p>
                    <span class="text" >客户端</span>
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
<div class="music-main" alog-alias="music-main-alog">
    <div class="music-main-body">
        <div class="music-body clearfix">
            <div class="songlist-left">
                <div class="songlist-info-box" data-songlistid="566456291" data-userid="20003175276">
                    <div class="songlist-info pr">
                        <div class="songlist-info-share pa">
                            <div class="share-box pa none" >

                            </div>
                            <span class="c9 f14">
										<i class="share-num-text fr" >分享</i><i
                                    class="songlist-info-share-icon" ></i>
									</span>
                        </div>
                        <div class="songlist-info-inside clearfix">
                            <div class="songlist-info-pic pr">
                                <a href=""><img src="../${list.slurl}" alt="${list.slname}"></a>
                            </div>
                            <div class="songlist-info-msg">
                                <h1 class="songlist-info-songlisttitle c3 f24 fb">${list.slname}</h1>
                                <div class="songlist-info-user pr">
											<span class="songlist-info-username f16 pa" >by
												${list.user.name}</span>
                                </div>
                                <div class="songlist-info-tag">
                                    <i>标签：</i>
                                    <a href="/songlist/tag/${list.t.tag1}" target="_blank" >${list.t.tag1}</a>
                                    <a href="/songlist/tag/${list.t.tag1}" target="_blank" >${list.t.tag2}</a>
                                    <a href="/songlist/tag/${list.t.tag1}" target="_blank" >${list.t.tag3}</a>
                                </div>

                            </div>
                        </div>

                        <!-- <div class="clearfix"></div> -->
                        <div class="songlist-info-btn clearfix">
                            <ul class="col-btns fl" dd="0">
                                <li class="col-play">
                                    <a href="javascript:void(0)" class="btn-play" >
                                        <span class="btn-text"><i class="btn-icon btn-play-icon"></i>播放全部</span>
                                    </a>
                                </li>
                                <li class="col-add">
                                    <a href="javascript:void(0)" class="btn-add" >
                                        <span class="btn-text"><i class="btn-icon btn-add-icon"></i>添加</span>

                                    </a>
                                </li>
                                <!-- // 0表示未收藏且可收藏，1表示已收藏，2表示是自己的歌单，无法收藏 -->

                                <li class="col-down">
                                    <a href="javascript:void(0)" class="btn-batchdown">
                                        <span class="btn-text"><i class="btn-icon btn-batchdown-icon"></i>批量下载</span>
                                    </a>
                                </li>
                                <c:choose>
                                    <c:when test="${list.user.id!=user.id and integers.contains(user.id)}">
                                        <li class="col-collect">
                                            <a href="javascript:void(0)" class="btn-collect" title="" data-is-collect="" data-collected="">
												<span class="btn-text"><i class="btn-icon btn-collect-icon"></i><span class="collectText">已收藏</span>
                                                    <em class="to collectNum">${list.collection}</em></span>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:when test="${list.user.id!=user.id and integers.contains(user.id)==false}">
                                        <li class="col-collect">
                                            <a href="javascript:void(0)" class="btn-collect" title="" data-is-collect="" data-collected="">
												<span class="btn-text"><i class="btn-icon btn-collect-icon"></i><span class="collectText">收藏</span>
                                                    <em class="to collectNum">${list.collection}</em></span>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:when test="${list.user.id==user.id}">
                                        <li class="col-collect">
                                            <a href="javascript:void(0)" class="btn-collect-mylist" title="" data-is-collect="" data-collected="">
												<span class="btn-text"><i class="btn-icon btn-collect-icon"></i><span class="collectText">收藏</span>
                                                    <em class="to collectNum">${list.collection}</em></span>
                                            </a>
                                        </li>
                                    </c:when>
                                </c:choose>
                            </ul>
                        </div>
                        <div class="songlist-info-desc">
                            <span class="c3 f14">歌单简介：</span>
                            <span class="c9 songlist-info-desc-text" data-desctext="${list.slinfo}">${list.slinfo}</span>
                        </div>
                    </div>
                </div>
                <div class="main-body">
                    <div class="songlist-list-box pr">
                        <div class="songlist-list-header clearfix">
                            <h3 class="title-h3 f16 c3 fb">歌曲列表</h3>
                            <span class="songlist-listen f14 c9">36805次播放</span>
                        </div>
                        <div class="songlist-list">
                            <div class="songlist-list-name">
                                <span class="songlist-list-name-song">歌曲</span>
                                <span class="songlist-list-name-artist">歌手</span>
                                <span class="songlist-list-name-album">专辑</span>
                            </div>
                            <block>

                            </block>
                            <div class="table-box" id="songListView">
                                <div class="song-list-wrap">
                                    <ul>
                                        <c:forEach items="${list.songs}" var="song" varStatus="index">
                                        <li songid="" class="songlist-item clearfix ">
                                            <div class="songlist-inline songlist-number">
                                                ${index.index+1}
                                            </div>
                                            <div class="songlist-inline songlist-title">
														<span class="songname">
															<a href="/song/332202516" class="songlist-songname namelink overdd  width27percent" target="_blank"
                                                               data-hasmv="0" title="${song.sname}" >
																${song.sname}
															</a>
															<span class="artist-wusun iconfont pr" data-biaoshi="lossless,perm-1"></span>
														</span>
                                                <div class="list-menu songlistmenu">
                                                    <a href="javascript:void(0);" class="icon-play   iconfont" title="播放" data-hasmv="0" >
                                                    </a>
                                                    <div class="pr adds icon-add-wrap  " title="添加" style="display: inline-block;" data-hasmv="0"
                                                         data-songid="332202516">
                                                        <a href="javascript:void(0);" class="icon-add  iconfont" data-hasmv="0" ></a>
                                                        <ul class="add-to add-tos pa none" style="display: none;">
                                                            <li>
                                                                <div class="add-to-sub add-to-songlist pr" >添加到歌单</div>
                                                            </li>
                                                            <li class="add-to-unic">
                                                                <a class="add-to-sub add-to-pc" data-songid="332202516">添加到客户端</a>
                                                            </li>
                                                            <li><a class="add-to-sub add-to-playlists" >添加到歌曲列表</a></li>
                                                        </ul>
                                                    </div>
                                                    <a href="javascript:void(0);" class="icon-down   iconfont" title="下载" data-hasmv="0" ></a>
                                                    <a href="javascript:void(0);" class="icon-share iconfont" title="分享" data-hasmv="0" data-songid="332202516"
                                                       data-title="Stuck in the Middle" data-albumtitle="The Hunch" data-author="Pink Spider" data-picbig="http://qukufile2.qianqian.com/data2/pic/5e927b704e5ff89d3bfff1f14718f6e6/332202259/332202259.jpg@s_2,w_150,h_150"
                                                       ></a>
                                                </div>
                                            </div>
                                            <div class="songlist-inline songlist-album overdd songlistheaderpercent">
                                                <span class="singer">
															<a target="_blank" href="/artist/239939554" title="${song.singer.singer_name}">${song.singer.singer_name}</a>
														</span>
                                            </div>
                                            <a href="/album/332202246" title="${song.cd.CDname}" target="_blank" class="album-name ">
                                                <div class="songlist-inline songlist-time overdd albumpercent">${song.cd.CDname}</div>
                                            </a>
                                            <div class="songlist-other"></div>
                                        </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="page_navigator-box">
                            <div class="page-navigator-hook  { pageNavigator:{ 'total':11, 'size':20, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                                <div class="page-cont">
                                    <div class="page-inner">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <div class="songlist-right">
                <div class="songlist-similar-list side-right clearfix">
                    <h3 class="f16 c3 fb">推荐歌单</h3>
                    <dl class="songlist-similar">
                        <dt>
                            <a href="/songlist/566456291" >
                                <img src="${pageContext.request.contextPath}/img/bos_ugcclient_c4eced0b8520db7d9df6b7bdf983d71f.jpg"
                                     alt="">
                            </a>
                        </dt>
                        <dd><a href="/songlist/566456291" class="to f14" >节奏上身
                            忘掉烦恼</a></dd>
                    </dl>
                    <dl class="songlist-similar">
                        <dt>
                            <a href="/songlist/566404577" >
                                <img src="${pageContext.request.contextPath}/img/bos_ugcclient_c56e4c7b81fedcf92f8e3cb01255d760.jpg"
                                     alt="">
                            </a>
                        </dt>
                        <dd><a href="/songlist/566404577" class="to f14" >清新的感觉</a></dd>
                    </dl>
                    <dl class="songlist-similar">
                        <dt>
                            <a href="/songlist/566326789" >
                                <img src="${pageContext.request.contextPath}/img/bos_ugcclient_a92503a54634e2dcc9e743d50e0fda4e.jpg"
                                     alt="">
                            </a>
                        </dt>
                        <dd><a href="/songlist/566326789" class="to f14" >Fake
                            Brain</a></dd>
                    </dl>
                    <dl class="songlist-similar">
                        <dt>
                            <a href="/songlist/566328608" >
                                <img src="${pageContext.request.contextPath}/img/bos_ugcclient_0a2f75e8e4a58ddb4373b8f3d21392d6.jpg"
                                     alt="">
                            </a>
                        </dt>
                        <dd><a href="/songlist/566328608" class="to f14" >Evening
                            star</a></dd>
                    </dl>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div id="pop-hui" class="pop-hui-dis"></div>
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
                       style=""><img src="../img/icon_police.png" style="width: 16px;vertical-align: -10%;margin-left:5px;">
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
<div class="layout-bdbrowser">
    <span class="icon-add2box"></span>
</div>
<script>
    $(document).ready(function () {
        $(".btn-collect").click(function () {
            alert(12)
            var slid=${list.slid};
            var userid=${user.id};
            var url="${pageContext.request.contextPath}/Collect";
            var args ={"id":slid,"userid":userid};
            alert(123)
            $.post(url,args,function(result) {
                if (result == 1) {
                    window.location.href = "/ssmkkmusic_war_exploded/slone/${list.slid}";
                }else {
                    console.log(result);
                }
            });
    });
    })
   /* $(function () {
        to_now({list.slid});
    });
    function to_now(slid) {
        $.ajax({
            url:"{pageContext.request.contextPath}/slone/"+slid,
            type:"GET",
            success:function (result) {
                build_collect(result);
            }
        });
    }
    function build_collect(result) {
        $(".col-collect").empty();
        if ()
    }*/
</script>
</body>
</html>
