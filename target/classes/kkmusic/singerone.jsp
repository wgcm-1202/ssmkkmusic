<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/9/5
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>薛之谦_薛之谦歌曲大全_薛之谦专辑_千千音乐-听见世界</title>
    <meta content="薛之谦,专辑,薛之谦歌曲,薛之谦专辑,薛之谦好听的歌,薛之谦新歌,薛之谦图片,薛之谦MV,薛之谦演唱会,薛之谦资料,薛之谦简介,在线听歌,试听,MP3歌曲免费下载,好听的歌,薛之谦歌曲,薛之谦好听的歌,薛之谦新歌,薛之谦歌曲大全"
          name="keywords">

    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
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
        .artist-content .tab-box ul li {
            float: left;
            text-align: center;
            width: 100px;
            font-size: 16px;
            color: #333;
            border-bottom: 2px solid transparent;
            cursor: pointer;
            line-height: 39px;
            height: 39px;
        }
        .artist-content .tab-box ul li.active {
            color: #e13228;
            border-bottom: 2px solid #e13228;
        }
        .artist-content .list-box.active {
            display: block;
        }
        .artist-content .list-box {
            display: none;
            margin-bottom: 20px;
        }
        #mv-list{
            margin-left: -26px;
            padding: 30px 0 20px 0;
        }
        #album-list{
            padding: 20px 0;
            padding-top: 20px;
            margin-left: -34px;
            padding-top: 30px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/singerone/TRvomjw3.css">
    <link rel="stylesheet" type="text/css" href="css/singerone/ssuS4NPk.css">
    <link rel="stylesheet" type="text/css" href="css/singerone/MyfqZYCZ.css">
    <!-- 	<link rel="stylesheet" type="text/css" href="css/XJNcf7D7.css">
        <link rel="stylesheet" type="text/css" href="css/zXIhO3Dc.css"> -->
</head>
<body class="sns " data-tiptaihe="0">
<!-- 太合域名 -->
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
            <script>
                function a(){
                    var box=document.getElementById("menu-user1");
                    box.style.cssText="display: block; width: 204px;";
                }
                function b(){
                    var box=document.getElementById("menu-user1");
                    box.style.cssText="display: none ; width: 204px;";
                }
            </script>
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
<script>
    function c(){
        var box=document.getElementById("pop");
        box.style.cssText="display: block;";
    }
    function d(){
        var box=document.getElementById("pop");
        box.style.cssText="display: none ;";
    }
</script>
<div class="music-main" alog-alias="music-main-alog">
    <div class="music-main-body">
        <div class="music-body clearfix">

            <div class="artist-info-box pr">
                <div class="artist-info pr clearfix">
                    <div class="artist-img-box fl t">
                        <img src="${singer.photoUrl}" alt="艺人头像" title="歌曲名称" class="music-artist-img">
                    </div>
                    <div class="artist-detail-box fl">
                        <h2 class="title artist-title-unic" data-artistid="88">
                            <span class="artist-name">${singer.singer_name}</span>
                            <span class="hot"><i class="iconfont"></i>
										<span class="hot-nums-detail">${singer.collectioncount}万</span>
									</span>
                            <span id="collect" class="collect collect-top-right" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;top&quot;,&quot;sub&quot;:&quot;collect&quot;}">收藏TA</span>
                        </h2>
                        <p class="from">
                            <span class="area">地区：&nbsp;${singer.area.getAreaName()}</span>
                            <span class="birth">生日：&nbsp;
										${singer.birthday}
										(巨蟹座)
									</span>
                        </p>
                        <p class="introduce">
									<span class="words overdd">${singer.singer_life}
									</span>
                            <span class="more" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;top&quot;,&quot;sub&quot;:&quot;more&quot;}" onclick="c()">更多<i
                                    class="iconfont" on></i></span>
                        </p>
                        <p class="btn">
                            <a href="javascript:void(0);" title="播放薛之谦的热门歌曲" class="play-hot-song" data-tophost50="242078437,100575177,601422013,591310911,266259728,662233750,663742556,568320992,540175998,664162412,7356091,87967607,266942077,241838066,591579114,92447139,565030085,242078465,33341939,610722309,539843843,266990186,599300701,594984095,589759196,100575294,265634484,255982860,566310948,538777113"
                               target="_blank">
                                <span class="iconfont play-hot-song-ico"></span>
                                <span c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;top&quot;,&quot;sub&quot;:&quot;play_hotsong&quot;}">播放热门歌曲</span>
                            </a>
                            <a href="http://fm.baidu.com/#/channel/public_artistid_2517" title="收听薛之谦的电台" class="listen-to-fm" target="_blank">
                                <span class="iconfont listen-to-fm-ico"></span>
                                <span c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;top&quot;,&quot;sub&quot;:&quot;listen_fm&quot;}">收听TA的电台</span>
                            </a>
                            <span class="artist-share iconfont" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;top&quot;,&quot;sub&quot;:&quot;share&quot;}"><i
                                    class="shares-num-artist shares-num-artist-unic" data-total="1228">1228</i></span>
                        </p>
                    </div>
                    <div class="pop-introduce-box pr" style="display: none;" id="pop">
                        <i class="close iconfont"  onclick="d()"></i>
                        <div class="pop-introduce">
                            <p>薛之谦，中国内地男歌手，籍贯上海市。2004年，第一次参加大型歌唱比赛莱卡我型我Show全国偶像歌手大赛，但其后由于种种原因退出比
                                赛。2005年再次站上了我型我Show的舞台。赛后成功签约上腾娱乐，成为一名艺人，2006年带着超高人气的他，成功发行同名专辑。销量一路飙红，连
                                续再版三次，总销量突破50万张，也是06年中国内地销量最好的新人之一。2007年推出个人第二张专辑《你过得好吗》，首月预售达15万张。2008年
                                推出单曲《传说》。专辑《深深爱过你》于2008年11月26日正式发行。<br>入行经历<br>在瑞士就读“酒店管理”的薛之谦，在一次归国探亲中，
                                偶遇唱片公司星探，其星探是在上海音乐领域有着相当知名度的人物，在征得爸爸的同意后，（君子协定：3年内不能在音乐事业上取得一定成绩，就需继续就读
                                “酒店管理”专业）便随即签订合约。但得到的不是歌手的身份，却是演员的工作。从此，薛之谦就出现在各大片场中，对演戏毫无基础的他，曾无数次遭到导演的
                                冷嘲热讽，但为了音乐他依然坚持。在空闲时间薛之谦便用吉他写歌，收入并不多的他甚至自掏腰包录歌。他两度参加全国性大型歌唱比赛：“莱卡”我型我秀
                                Show
                                全国偶像歌手大赛。首度参加便轻松挺进上海80强，但由于种种的原因，他退出了比赛。2005年他在一次参加我型我秀Show，此次他带着他的原创音乐征
                                服了所有的人，一路过关斩将，虽然没有获得冠军，但是赢得了超高的人气。赛后签约上腾娱乐，正式进入娱乐圈，成为一名歌手。<br>荣誉记录<br><br>东方风云榜<br>▪ 2016 第二十三届 十大金曲 《一半》
                                （获奖）<br>▪ 2014 第二十一届 最佳唱作人 （获奖）<br>▪ 2014 第二十一届 十大金曲 《意外》 （获奖）<br>▪ 2013 第二十届 最具突破创作歌手 （获奖）<br>▪ 2013 第二十届
                                二十年至尊金曲 《认真的雪》 （获奖）<br>▪ 2012 第十九届 年度对唱歌曲 《我们爱过就好》 （获奖）<br>▪ 2012 第十九届 十大金曲 《我终于成了别人的女人》 （获奖）<br>▪ 2010 第十七届
                                最佳年度飞跃 （获奖）<br>▪ 2009 第十六届 最佳舞台演绎奖 （获奖）<br>▪ 2008 第十五届 本地最受欢迎歌手 （获奖）<br>▪ 2007 第十四届 十大金曲 《认真的雪》 （获奖）<br>▪
                                2006 第十三届 新人奖银奖 （获奖）<br>百事风云榜颁奖盛典<br>▪ 2006 内地最受欢迎男歌手五强 （获奖）<br>雪碧中国原创音乐流行榜<br>▪ 2008 第七届 最具潜质歌手奖 《你过得好吗》
                                （获奖）<br>▪ 2008 第七届 最具潜质歌手大奖 （获奖）<br>▪ 2007 第六届 飞跃表现奖 （获奖）<br>▪ 2007 第六届 内地金曲 《认真的雪》 （获奖）<br>▪ 2006 第五届 新人奖
                                （获奖）<br>全球华语歌曲排行榜<br>▪ 2013 第十三届 地区杰出歌手 上海：薛之谦 （获奖）<br>▪ 2011 第十一届 地区杰出歌手 上海：薛之谦 （获奖）<br>▪ 2011 第十一届 年度二十大金曲
                                《我终于成了别人的女人》 （获奖）<br>▪ 2009 第九届 年度金曲奖 深深爱过你 （获奖）<br>▪ 2006 第六届 最受欢迎男新人奖 （获奖）<br>中国风尚大典<br>▪ 2006 内地风尚新人奖 （获奖）<br>第四届特步东南劲爆音乐榜颁奖典礼<br>▪
                                2006 内地劲爆最受欢迎男歌手奖 （获奖）<br>星光大典<br>▪ 2006 最具人气偶像奖 （获奖）<br>天地英雄校园群英会<br>▪ 2006 天地英雄新人奖 （获奖）<br>雪碧中国原创音乐流行榜<br>▪
                                2007 飞跃表现奖 （获奖）<br>华语榜中榜颁奖礼<br>▪ 2016 第二十届 榜中榜最受欢迎唱作歌手 （获奖）<br>▪ 2007 第十三届 传媒推荐奖 （获奖）<br>Music Radio中国TOP排行榜<br>▪
                                2016 年度最佳男歌手 （获奖）<br>▪ 2016 2015年年度金曲 《演员》 （获奖）<br>▪ 2014 年度传媒推荐男歌手 （获奖）<br>▪ 2014 年度最佳金曲 《丑八怪》 （获奖）<br>▪
                                2013 MusicRadio音乐之声推荐唱片内地 《几个薛之谦》 （获奖）<br>▪ 2013 内地最受欢迎男歌手 （提名）<br>▪ 2013 内地年度传媒推荐男歌手 （提名）<br>▪ 2009
                                内地最受欢迎男歌手 《你过得好吗》 （获奖）<br>▪ 2009 年度最佳舞台演绎奖 （获奖）<br>▪ 2009 内地最受欢迎男歌手 （提名）<br>▪ 2009 内地最佳男歌手 （提名）<br>▪ 2009
                                内地最佳舞台演绎歌手 （提名）<br>▪ 2008 内地年度最受欢迎男歌手 （获奖）<br>▪ 2008 内地年度金曲 《你过得好吗》 （获奖）<br>▪ 2007 内地校园人气大奖 薛之谦同名专辑 （获奖）<br>无线音乐盛典<br>▪
                                2008 第二届 无线音乐最具潜力创作偶像 （获奖）<br>北京流行音乐典礼<br>▪ 2009 年度金曲奖 深深爱过你 （获奖）<br>▪ 2008 20大金曲 （获奖）<br>中国原创歌曲榜颁奖礼<br>▪
                                2009 内地最佳舞台表现奖 （获奖）<br>▪ 2009 最佳专辑奖 深深爱过你 （获奖）<br>CCTV风云音乐<br>▪ 2010 媒体推荐创新实力歌手奖 （获奖）<br>▪ 2010 年度网络最受欢迎金曲奖
                                （获奖）<br>全球中文音乐榜上榜<br>▪2015 全球中文音乐榜上榜冠军歌曲 《演员》 （获奖）<br>酷音乐亚洲盛典<br>▪ 2016 年度电视音乐金曲艺人 （获奖）<br>▪ 2016 年度最受欢迎创作人
                                （获奖）<br>音悦v榜<br>▪ 2016 第四届 年度全能艺人 （获奖）<br>▪ 2016 第四届 年度风向艺人 （获奖）<br>▪ 2014 第二届 内地年度创作歌手 （获奖）</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mod-newsong-wrapper">
                <div class="mod-newsong clearfix">
                    <div class="new-album">
                        <a href="http://music.taihe.com/album/664162410" target="_blank" title="《这么久没见》">
                            <i class="mod-new-icon"></i>
                            <i>最新专辑</i>
                            <i>《这么久没见》</i>
                            <i>2019-08-06</i>
                            <i class="module-line vline"></i>
                            <i>华宇世博音乐文化（北京）有限公司</i>
                        </a>
                    </div>
                </div>
            </div>



            <script type="text/javascript">
                /* window.onload=function(){
                    var art=document.getElementById("art-content");
                    var myul=art.getElementsByTagName("ul")[0];
                    var myli=myul.getElementsByTagName("li");
                    var mydiv=art.getElementsByTagName("div");
                    for(var i=0;i<myli.length;i++){
                        myli[i].index=i;
                        myli[i].onclick=function(){
                            for(var j=0;j<myli.length;j++){
                                myli[j].className="tab-item";
                                mydiv[j].className="list-box";
                            }
                            this.className="tab-box.active";
                            mydiv[this.index].className="list-box.active";
                        }
                    }
                } */
                function opensong(evt, names) {
                    var i, tabitem, listbox;
                    listbox = document.getElementsByClassName("list-box");
                    for (i = 0; i < listbox.length; i++) {
                        listbox[i].className =listbox[i].className.replace(" active","");
                    }
                    tabitem = document.getElementsByClassName("tab-item");
                    for (i = 0; i < tabitem.length; i++) {
                        tabitem[i].className =tabitem[i].className.replace(" active","");
                    }
                    document.getElementById(names).className+=" active";
                    evt.currentTarget.className += " active";
                }
                document.getElementById("defaultOpen").click();
            </script>
            <div class="main-body">


                <div class="artist-left">
                    <div class="artist-content" id="art-content">
                        <div class="tab-box">
                            <ul class="clearfix" id="tab-box">
                                <li class="tab-item" onclick="opensong(event,'song-list-box')" id="defaultOpen">歌曲</li>
                                <li class="tab-item" onclick="opensong(event,'album-list-box')" >专辑</li>
                                <li class="tab-item" onclick="opensong(event,'mv-list-box')" >视频</li>
                            </ul>
                            <div class="sort album-sort" type="mv" style="display: block;">
                                <a type="time" href="javascript:;" class="on">时间</a>
                                <i class="module-line"></i>
                                <a href="javascript:;" type="hot" >热度</a>
                            </div>
                            <div class="sort mv-sort" type="mv" style="display: none;">
                                <a type="time" href="javascript:;">时间</a>
                                <i class="module-line"></i>
                                <a href="javascript:;" type="hot" class="on" >热度</a>
                            </div>
                        </div>
                        <div class="list-box song-list-box active" id="song-list-box">
                            <ul class="list-header clearfix">
                                <li class="songlist-header-name">歌曲</li>
                                <li class="songlist-header-album">专辑</li>
                                <li class="songlist-header-time">时长</li>
                            </ul>
                            <link rel="stylesheet" type="text/css" href="css/singerone/ZtkFNkCw.css">
                            <block>
                            </block>
                            <div class="table-box" id="songList">
                                <div class="song-list-wrap">
                                    <ul>
                                        <c:if test="${!empty pageInfo.list}">
                                            <c:forEach items="${pageInfo.list}" var="s" varStatus="index">
                                                <li songid="" class="songlist-item clearfix ">
                                                    <div class="songlist-inline songlist-number">${index.index+1}</div>
                                                    <div class="songlist-inline songlist-title">
														<span class="songname">
															<a href="http://music.taihe.com/song/242078437" class="songlist-songname namelink overdd  " target="_blank"
                                                               data-hasmv="1" title="演员" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;song&quot;}">
																${s.sname}
															</a>
															<a href="http://music.taihe.com/mv/242078437" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;mv&quot;}"
                                                               target="_blank" class="hasmv iconfont"></a>
															<span class="artist-wusun iconfont pr" data-biaoshi="lossless,perm-3"></span>
														</span>
                                                        <div class="list-menu " data-playdata="{&quot;id&quot;:&quot;242078437&quot;,&quot;kr_top&quot;:0,&quot;moduleName&quot;:&quot;playBtn&quot;,&quot;resourceTypeExt&quot;:&quot;0&quot;,&quot;albumId&quot;:&quot;241838068&quot;,&quot;siPresaleFlag&quot;:null,&quot;songPic&quot;:&quot;http:\/\/qukufile2.qianqian.com\/data2\/pic\/49e6161afb13e3eda9d1cb4e304561a2\/613960871\/613960871.jpg@s_2,w_150,h_150&quot;,&quot;songTitle&quot;:&quot;\u6f14\u5458&quot;,&quot;songPublishTime&quot;:&quot;2016-07-18&quot;}">
                                                            <a href="javascript:void(0);" class="icon-play   iconfont" title="播放" data-hasmv="1" data-songid="242078437"
                                                               c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;play&quot;}">
                                                            </a>
                                                            <div class="pr adds icon-add-wrap  " title="添加" style="display: inline-block;" data-hasmv="1"
                                                                 data-songid="242078437">
                                                                <a href="javascript:void(0);" class="icon-add  iconfont" data-hasmv="1" data-songid="242078437" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;add&quot;}"></a>
                                                                <ul class="add-to add-tos pa none">
                                                                    <li>
                                                                        <div class="add-to-sub add-to-songlist pr" data-songid="242078437" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;add_songlist&quot;}">添加到歌单</div>
                                                                    </li>
                                                                    <li class="add-to-unic"><a c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;add_client&quot;}"
                                                                                               class="add-to-sub add-to-pc" data-songid="242078437">添加到客户端</a></li>
                                                                    <li><a class="add-to-sub add-to-playlists" data-songid="242078437" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;add_list&quot;}">添加到歌曲列表</a></li>
                                                                </ul>
                                                            </div>
                                                            <a href="javascript:void(0);" class="icon-down   iconfont" title="下载" data-hasmv="1" data-songid="242078437"
                                                               c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;down&quot;}"></a>
                                                            <a href="javascript:void(0);" class="icon-share iconfont" title="分享" data-hasmv="1" data-songid="242078437"
                                                               data-title="演员" data-albumtitle="初学者" data-author="薛之谦" data-picbig="http://qukufile2.qianqian.com/data2/pic/49e6161afb13e3eda9d1cb4e304561a2/613960871/613960871.jpg@s_2,w_150,h_150"
                                                               c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;share&quot;}"></a>
                                                        </div>
                                                    </div>


                                                    <div class="songlist-inline songlist-album overdd ">
                                                        <a href="http://music.taihe.com/album/241838068" title="初学者" target="_blank" class="album-name " c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;list&quot;,&quot;sub&quot;:&quot;album&quot;}">${s.cd.CDname}</a>
                                                    </div>
                                                    <div class="songlist-inline songlist-time"> ${s.stime}</div>


                                                    <div class="songlist-other"></div>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                            <div class="page_navigator-box">
                                <div class="page-navigator-hook  page-navigator page-navigator-new { pageNavigator:{ 'total':107, 'size':15, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                                    <div class="page-cont">
                                        <div class="page-inner">
                                            <span class="page-navigator-prev-disable 77">&lt;</span>

                                            <span class="page-navigator-current 		PNNW-S">1</span>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=15&amp;size=15&amp;third_type=">2</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=30&amp;size=15&amp;third_type=">3</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=45&amp;size=15&amp;third_type=">4</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=60&amp;size=15&amp;third_type=">5</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=75&amp;size=15&amp;third_type=">6</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=90&amp;size=15&amp;third_type=">7</a>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=105&amp;size=15&amp;third_type=">8</a>



                                            <a class="page-navigator-next" href="http://music.taihe.com/data/style/getsongs?title=&amp;start=15&amp;size=15&amp;third_type=">&gt;</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-box album-list-box" id="album-list-box">
                            <div class="album-list-wrap clearfix">
                                <div class="album-wrap">
                                    <div class="album-item">
                                        <div class="album-img-wrap">
                                            <img src="img/664179967.jpg" alt="">
                                            <a href="http://music.taihe.com/album/664162410" class="album-mask" target="_blank" ></a>
                                            <a href="javascript:void(0);"
                                               class="icon-play iconfont" data-albumid="664162410"></a>
                                        </div>
                                    </div>
                                    <div class="album-name overdd">
                                        <a href="http://music.taihe.com/album/664162410" target="_blank" >《这么久没见》</a>
                                    </div>
                                    <div class="album-date overdd">
                                        <span class="publishtime">2019-08-06</span>
                                    </div>
                                </div>
                                <div class="album-wrap">
                                    <div class="album-item">
                                        <div class="album-img-wrap">
                                            <img src="img/664461220.jpg" alt="">
                                            <a href="http://music.taihe.com/album/663742554" class="album-mask" target="_blank" ></a>
                                            <a href="javascript:void(0);"
                                               class="icon-play iconfont" data-albumid="663742554"></a>
                                        </div>
                                    </div>
                                    <div class="album-name overdd">
                                        <a href="http://music.taihe.com/album/663742554" target="_blank" >《慢半拍》</a>
                                    </div>
                                    <div class="album-date overdd">
                                        <span class="publishtime">2019-07-17</span>
                                    </div>
                                </div>
                                <div class="album-wrap">
                                    <div class="album-item">
                                        <div class="album-img-wrap">
                                            <img src="img/664461286.jpg" alt="">
                                            <a href="http://music.taihe.com/album/662233748" class="album-mask" target="_blank" ></a>
                                            <a href="javascript:void(0);"
                                               class="icon-play iconfont" data-albumid="662233748"></a>
                                        </div>
                                    </div>
                                    <div class="album-name overdd">
                                        <a href="http://music.taihe.com/album/662233748" target="_blank" >《木偶人》</a>
                                    </div>
                                    <div class="album-date overdd">
                                        <span class="publishtime">2019-06-26</span>
                                    </div>
                                </div>
                            </div>
                            <div class="page_navigator-box">

                                <div class="page-navigator-hook  page-navigator page-navigator-new { pageNavigator:{ 'total':20, 'size':12, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                                    <div class="page-cont">
                                        <div class="page-inner">
                                            <span class="page-navigator-prev-disable 77">&lt;</span>

                                            <span class="page-navigator-current 		PNNW-S">1</span>
                                            <a class="page-navigator-number 		PNNW-S" href="http://music.taihe.com/data/style/getalbums?title=&amp;start=12&amp;size=12&amp;third_type=">2</a>



                                            <a class="page-navigator-next" href="http://music.taihe.com/data/style/getalbums?title=&amp;start=12&amp;size=12&amp;third_type=">&gt;</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-box mv-list-box " id="mv-list-box">
                            <div class="mv-list-wrap clearfix">
                                <div class="mv-wrapper">
                                    <div class="mv-img-wrap">
                                        <img src="http://qukufile2.qianqian.com/data2/pic/29ea70979061b4f990fdb67e8f205c10/612092713/612092713.jpg@s_1,w_230,h_130" alt="">
                                        <a class="mask" href="/playmv/612092618" target="_blank" title="肆无忌惮" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}"></a>
                                        <a href="/playmv/612092618" class="icon-play iconfont" target="_blank" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;play_video&quot;}"></a>
                                    </div>
                                    <div class="mv-footer">
                                        <a href="/playmv/612092618" target="_blank" title="肆无忌惮" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}">
                                            肆无忌惮</a>
                                    </div>
                                </div>
                                <div class="mv-wrapper">
                                    <div class="mv-img-wrap">
                                        <img src="http://qukufile2.qianqian.com/data2/pic/413d5de94b67492a2d0a7e44a33c2bd6/612356126/612356126.jpg@s_1,w_230,h_130" alt="">
                                        <a class="mask" href="/playmv/612356081" target="_blank" title="天份" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}"></a>
                                        <a href="/playmv/612356081" class="icon-play iconfont" target="_blank" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;play_video&quot;}"></a>
                                    </div>
                                    <div class="mv-footer">
                                        <a href="/playmv/612356081" target="_blank" title="天份" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}">
                                            天份</a>
                                    </div>
                                </div>
                                <div class="mv-wrapper">
                                    <div class="mv-img-wrap">
                                        <img src="http://qukufile2.qianqian.com/data2/pic/6efe60d2246be1ed83909b18c3adf639/612205575/612205575.jpg@s_1,w_230,h_130" alt="">
                                        <a class="mask" href="/playmv/612205560" target="_blank" title="那是你离开了北京的生活" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}"></a>
                                        <a href="/playmv/612205560" class="icon-play iconfont" target="_blank" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;play_video&quot;}"></a>
                                    </div>
                                    <div class="mv-footer">
                                        <a href="/playmv/612205560" target="_blank" title="那是你离开了北京的生活" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;videoTab&quot;,&quot;sub&quot;:&quot;video_name&quot;}">
                                            那是你离开了北京的生活</a>
                                    </div>
                                </div>
                            </div>
                            <div class="page_navigator-box">

                                <div class="page-navigator-hook  page-navigator page-navigator-new { pageNavigator:{ 'total':901, 'size':9, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                                    <div class="page-cont">
                                        <div class="page-inner">







                                            <span class="page-navigator-prev-disable 77">&lt;</span>

                                            <span class="page-navigator-current 		PNNW-S">1</span>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=9&amp;size=9&amp;third_type=
								    ">2</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=18&amp;size=9&amp;third_type=
								    ">3</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=27&amp;size=9&amp;third_type=
								    ">4</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=36&amp;size=9&amp;third_type=
								    ">5</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=45&amp;size=9&amp;third_type=
								    ">6</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=54&amp;size=9&amp;third_type=
								    ">7</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=63&amp;size=9&amp;third_type=
								    ">8</a>
                                            <a class="page-navigator-number 		PNNW-S" href="	    	/data/artist/getmvlist?start=72&amp;size=9&amp;third_type=
								    ">9</a>
                                            <span class="page-navigator-dots">...</span><a href="			    	/data/artist/getmvlist?start=900&amp;size=9&amp;third_type=

									" class="page-navigator-number 			PNNW-D
								">101</a>


                                            <a class="page-navigator-next" href="	    	/data/artist/getmvlist?start=9&amp;size=9&amp;third_type=
								    ">&gt;</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>	</div>

                    <link rel="stylesheet" type="text/css" href="css/singerone/WBCt1MCY.css">
                </div>
                <div class="artist-right">
                    <div class="artist-fixed">
                        <div class="artist-introduce clearfix">
                            <img class="artist-img" src="img/612757841_002.jpg">
                            <div class="artist-mod-info" data-artistid="88">
                                <p class="artist-mod-name">薛之谦</p>
                                <span id="collectright" class="collect collect-top-right" >收藏TA</span>
                            </div>
                        </div>



                        <link rel="stylesheet" type="text/css" href="css/singerone/lEG14239.css">

                        <div class="like-box clearfix">
                            <h3>猜你喜欢</h3>
                            <div class="like-list">
                                <div class="like-wrap like-wrap-0">
                                    <a href="http://music.taihe.com/artist/164528737" class="like-item" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">
                                        <div class="like-img-wrap">
                                            <img src="img/568351042.jpg" alt="">
                                        </div>
                                    </a>
                                    <div class="like-name overdd" data-artistid="123446035">
                                        <a href="http://music.taihe.com/artist/164528737" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">周深</a>
                                        <i class="foot-collect iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;collect&quot;}"></i>
                                        <i class="foot-collected iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;cancle_collect&quot;}"></i>
                                    </div>
                                </div>
                                <div class="like-wrap like-wrap-1">
                                    <a href="http://music.taihe.com/artist/1557" class="like-item" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">
                                        <div class="like-img-wrap">
                                            <img src="img/612860331.jpg" alt="">
                                        </div>
                                    </a>
                                    <div class="like-name overdd" data-artistid="1483">
                                        <a href="http://music.taihe.com/artist/1557" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">许嵩</a>
                                        <i class="foot-collect iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;collect&quot;}"></i>
                                        <i class="foot-collected iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;cancle_collect&quot;}"></i>
                                    </div>
                                </div>
                                <div class="like-wrap like-wrap-2">
                                    <a href="http://music.taihe.com/artist/1035" class="like-item" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">
                                        <div class="like-img-wrap">
                                            <img src="img/542130620.jpg" alt="">
                                        </div>
                                    </a>
                                    <div class="like-name overdd" data-artistid="14">
                                        <a href="http://music.taihe.com/artist/1035" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">张杰</a>
                                        <i class="foot-collect iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;collect&quot;}"></i>
                                        <i class="foot-collected iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;cancle_collect&quot;}"></i>
                                    </div>
                                </div>
                                <div class="like-wrap like-wrap-last like-wrap-3" data-sameartistlist="{&quot;sameids&quot;:&quot;123446035,1483,14,1842&quot;}">
                                    <a href="http://music.taihe.com/artist/1629" class="like-item" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">
                                        <div class="like-img-wrap">
                                            <img src="img/612761622.jpg" alt="">
                                        </div>
                                    </a>
                                    <div class="like-name overdd" data-artistid="1842">
                                        <a href="http://music.taihe.com/artist/1629" target="_blank" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;artist&quot;}">冷漠</a>
                                        <i class="foot-collect iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;collect&quot;}"></i>
                                        <i class="foot-collected iconfont" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;maybelove&quot;,&quot;sub&quot;:&quot;cancle_collect&quot;}"></i>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div id="download-clients" class="clearfix">
                            <h2 class="clients-title">客户端下载</h2>
                            <a class="more pa" target="_blank" href="http://music.taihe.com/download/index.html?pst=web_applist_more" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;daoliu_right_sidebar&quot;,&quot;sub&quot;:&quot;more&quot;}">更多<span></span></a>
                            <div id="clients-wrapper">
                                <a href="http://music.taihe.com/download/index.html?pst=web_applist_qr" target="blank"> <img src="img/6IUQR8CO.png"
                                                                                                                             class="clients-qr" alt="千千音乐app" c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;daoliu_right_sidebar&quot;,&quot;sub&quot;:&quot;qr&quot;}"></a>

                                <ul id="clients-container">
                                    <li>
                                        <a class="t pc" href="http://download.qianqian.com/channel/1/web_xiangqingad" target="_blank"><span c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;daoliu_right_sidebar&quot;,&quot;sub&quot;:&quot;win&quot;}">
														WIN版<i class="iconfont ico-win"></i></span></a>
                                    </li>
                                    <li>
                                        <a class="t" href="https://itunes.apple.com/cn/app/id468623917?mt=8" target="_blank"><span c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;daoliu_right_sidebar&quot;,&quot;sub&quot;:&quot;ios&quot;}">
														iOS版<i class="iconfont"></i></span></a>
                                    </li>
                                    <li>
                                        <a class="t" href="http://music.taihe.com/cms/Music-danqu.apk" target="_blank"><span c-tj="{&quot;page&quot;:&quot;artist_detail&quot;,&quot;pos&quot;:&quot;daoliu_right_sidebar&quot;,&quot;sub&quot;:&quot;andr&quot;}">
														安卓版<i class="iconfont"></i></span></a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--end sns-left-->
            <div class="sidebar">
            </div>
            <!--end sns_right-->


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
<div class="layout-bdbrowser">
    <span class="icon-add2box"></span>
</div>
</body>
</html>


