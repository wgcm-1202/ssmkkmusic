<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/26
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户中心</title>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/icPAuGfP.css">
    <link rel="stylesheet" type="text/css" href="css/d2s4Vb8j.css">
    <!-- <link rel="stylesheet" type="text/css" href="/common/widget/feed/feed.css"/> -->

</head>
<body data-tiptaihe="0">

<!-- 太合域名 -->
<div class="responsive narrow-screen top-header-wrapper">
    <hr class="header_divider">
    <!-- start 页面顶部搜索框及用户中心 -->
    <div class="screen-hd clearfix">
        <div class="music-head " monkey="music-head">
            <h1 class="lg" title="千千音乐官网"> <a id="bm-logo" href="http://music.taihe.com/" title="千千音乐-听见世界"><img style="width:123px;height:41px"
                                                                                                                 src="img/logo_2x.png"
                                                                                                                 alt="千千音乐-听见世界"></a> </h1>
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
                <div class="search-info">
                    <ul class="hot-search">
                        <li>
                            <a class="key" href="http://music.taihe.com/artist/2517" c-tj="{&quot;page&quot;:&quot;index&quot;,&quot;pos&quot;:&quot;search&quot;,&quot;sub&quot;:&quot;hot_\/artist\/2517&quot;}">薛之谦</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664331571" c-tj="{&quot;page&quot;:&quot;index&quot;,&quot;pos&quot;:&quot;search&quot;,&quot;sub&quot;:&quot;hot_\/song\/664331571&quot;}">有一种悲伤</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664320614" c-tj="{&quot;page&quot;:&quot;index&quot;,&quot;pos&quot;:&quot;search&quot;,&quot;sub&quot;:&quot;hot_\/song\/664320614&quot;}">傻了吧</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664055967" c-tj="{&quot;page&quot;:&quot;index&quot;,&quot;pos&quot;:&quot;search&quot;,&quot;sub&quot;:&quot;hot_\/song\/664055967&quot;}">生而为一</a>
                        </li>
                    </ul>
                </div>
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
                    <div class="menu-login" id="menu-login"><img id="anchor-user-name" src="img/6ec2e78e8be799bde6b49b689e.jpg" onmouseenter="a()" onmouseleave="b()"><em
                            class="vip-info undefined"></em></div>
                    <div id="userbar" class="userinfo_box">
                        <div id="menu-user1" style="display: none; width: 204px;" class="mn-tip mnd-tip"> <span class="u_ddl_arrow"> <em></em>
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
                                    <li><a class="my-info" href="http://127.0.0.1:8848/kkmusic/user.html" target="_blank"
                                           rel="nofollow"><i></i><span>账号设置</span></a></li>
                                    <li><a class="my-bind" href="/user/bind" target="_blank" rel="nofollow"><i></i><span>分享绑定</span></a></li>
                                    <li><a href="javascript:;" class="logout" id="logout" rel="nofollow"><i></i><span>退出</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="music-head-nav">
            <!-- <div id="user-info-wrapper">
        <div id="user-info" monkey="NI_user_info"></div>
        <div id="play-info" class="loading" monkey="NI_play_list"></div>
    </div> -->
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
                    <a href="http://music.taihe.com/artist" class=" " data-log="nav-singer">歌手</a>
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
                        <img src="img/qr_header.png"
                             alt="千千音乐客户端" c-tj="{&quot;page&quot;:&quot;widget&quot;,&quot;pos&quot;:&quot;daoliu_top_nav&quot;,&quot;sub&quot;:&quot;qr&quot;}">
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




<div class="music-main" alog-alias="music-main-alog">
    <div class="music-main-body">
        <!-- music-body移到内层 -->
        <div class="uuser-wrap">
            <div class="music-body">


                <div class="uuser-left">

                    <!-- -->
                    <div class="ugc-title uuserlist-bookmark-hook"><span>我的自建歌单<b class="blue">(1)</b></span></div>
                    <div class="uuser-list-tmpl uuser-songlist" data-bdid="0">
                        <ul class="songlist-list">
                            <li>
                                <div class="img-wrap">
                                    <img src="img/songlist_default_150_red.png">
                                    <div class="num"><i></i><span>0</span></div>
                                    <div class="btn-bg">
                                        <a href="http://music.taihe.com/songlist/566565421" class="link"></a>
                                        <a href="javascript:;" class="play songlist-play-hook" data-listid="566565421"></a>
                                    </div>
                                </div>
                                <p class="text-title"><a href="http://music.taihe.com/songlist/566565421">我的歌单</a></p>
                                <p class="text-user">0首</p>
                                <div class="btn-plu">
                                    <a href="http://music.taihe.com/songlist/edit/566565421" target="_blank" class="edit edit-hook"></a>
                                    <a href="javascript:;" class="close songlist-del-hook" data-songlistid="566565421"></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div id="uuserPage" class="page_wiget nop_page_wiget">


                        <div class="page-navigator-hook  { pageNavigator:{ 'total':1, 'size':16, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                            <div class="page-cont">
                                <div class="page-inner">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="uuser-right">
                    <div class="uuser-info-wrap">
                        <div class="uuser-info">
                            <div class="uuser-img">
                                <img src="img/6ec2e78e8be799bde6b49b689e.jpg">
                                <a href="http://music.taihe.com/user/edit" class="edit" style="display: none;">更换头像</a>
                            </div>
                            <p class="uuser-name"><span>王白洛</span>
                            </p>
                            <p class="uuser-line">90后·女生</p>
                        </div>
                        <div class="uuser-active">
                            <ul>
                                <li><a href="http://music.taihe.com/user/dynamic">
                                    <span>动态</span>
                                    <b>0</b></a>
                                </li>
                                <li class="center"><a href="http://music.taihe.com/user/friend">
                                    <span>关注</span>
                                    <b>2</b></a>
                                </li>
                                <li><a href="http://music.taihe.com/user/fans">
                                    <span>粉丝</span>
                                    <b>0</b></a>
                                </li>
                            </ul>
                            <div class="uuser-active-btn friend-btn-hook active-self-hook" data-bdid="0">
                                <a href="http://music.taihe.com/user/edit" class="setting">个人设置</a>
                            </div>
                        </div>
                        <div class="uuser-tag">
                            <div class="music-title">音乐口味</div>
                            <ul>
                                <li>
                                    <p>莫扎特也不知道TA喜欢什么</p>
                                </li>
                            </ul>
                        </div>
                        <div class="uuser-bind">
                            <div class="item-sina">
                                <span>绑定微博</span>
                                <a href="http://music.taihe.com/user/bind" class="bind-sina"></a>
                            </div>
                        </div>
                        <div class="uuser-desc">
                            <div class="music-title">个人简介</div>
                            <p>这个人很神秘</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- -->
        <div class="music-body clearfix">

            <div class="uuser-left collectlist-bookmark collectlist-bookmark-hook">
                <div class="ugc-title"><span>我的收藏</span>
                    <ul class="ugc-tilte-tag collect-tab-hook">
                        <li class="visited">
                            <span>歌单(0)</span>
                        </li>
                        <li>
                            <span>专辑(0)</span>
                        </li>
                        <li>
                            <span>歌手(0)</span>
                        </li>
                        <li>
                            <span>文章(0)</span>
                        </li>
                    </ul>
                </div>
                <div class="collect-list-tmpl">
                    <div class="down-no-data"></div>
                </div>
                <div id="collectPage" class="page_wiget">


                    <div class="page-navigator-hook  { pageNavigator:{ 'total':0, 'size':16, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                        <div class="page-cont">
                            <div class="page-inner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="uuser-left buylist-bookmark buylist-bookmark-hook">
                <div class="ugc-title"><span>已购音乐</span>
                    <ul class="ugc-tilte-tag buy-tab-hook">
                        <li class="visited">
                            <span>专辑(0)</span>
                        </li>
                        <li>
                            <span>单曲(0)</span>
                        </li>
                    </ul>
                </div>
                <div class="buy-list-tmpl">
                    <div class="buy-no-data"></div>
                </div>
                <div id="buyPage" class="page_wiget">


                    <div class="page-navigator-hook  { pageNavigator:{ 'total':0, 'size':16, 'start':0, 'show_total':0, 'focus_neighbor':0 } }">
                        <div class="page-cont">
                            <div class="page-inner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- -->
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
                       style=""><img src="img/icon_police.png"
                                     style="width: 16px;vertical-align: -10%;margin-left:5px;">
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
    <div class="weixin-detail" id="weixin_detail">
        <div class="weixin-qr"></div>
        <span>微信扫一扫<br>精选音乐每日推送!</span>
    </div>


</div>
<div style="display:none">\site\layout\footer\footer_taihe.html.tpl</div>

</div>

</body>
</html>