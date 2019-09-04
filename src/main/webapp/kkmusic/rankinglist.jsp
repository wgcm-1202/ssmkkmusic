<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/26
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>虾米音乐 - 发现音乐新世界</title>
     <script type="text/javascript" src="jquery/1.11.0/jquery1.11.0.js"></script>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/app.css">
    <link href="css/styles.css" rel=" stylesheet">
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url("/fonts/font_765926_x1m7j8km80b.eot");
            src: url("/fonts/font_765926_x1m7j8km80b.eot?#iefix") format("embedded-opentype"), url("/fonts/font_765926_x1m7j8km80b.woff2") format("woff2"), url("/fonts/font_765926_x1m7j8km80b.woff") format("woff"), url("/fonts/font_765926_x1m7j8km80b.ttf") format("truetype"), url("/fonts/font_765926_x1m7j8km80b.svg#iconfont") format("svg")
        }

        .iconfont {
            font-family: iconfont;
            text-align: center;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }
    </style>
</head>
<body>
<div id="app">
    <div class="page-container">
        <div class="content-wrapper">
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
                                <a href="http://music.taihe.com/artist" class=" " data-log="nav-singer">歌手</a>
                            </li>
                            <li>
                                <a href="http://music.taihe.com/tag" class=" " data-log="nav-music-cate">分类</a>
                            </li>
                            <li>
                                <a href="http://music.taihe.com/top" class="active " data-log="nav-top">榜单</a>
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

            <div class="billboard-view" style="padding-top: 1px;margin-top: -21px;padding-bottom: 0px;">
                <div class="xiami-billboard-wrapper">
                    <div class="xiami-billboard">
                        <div class="block-title unselectable">
                            <h2>虾米官方榜</h2>
                            <div class="external">
                                <div class="tabs unselectable">
                                    <div class="tab active">新歌</div>
                                    <div class="tab">热歌</div>
                                    <div class="tab">原创</div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-main">
                            <div class="cover-group">
                                <div class="img rank1" style="background-image:url(//pic.xiami.net/images/album/img30/119/5d53a94fb00b0_5952530_1565763919.jpg?x-oss-process=image/resize,limit_0,s_542,m_fill/quality,q_80)"></div>
                                <div class="img rank2" style="background-image:url(//pic.xiami.net/images/album/img51/319951/21051294361565319952.jpg?x-oss-process=image/resize,limit_0,s_542,m_fill/quality,q_80)"></div>
                                <div class="img rank3" style="background-image:url(//pic.xiami.net/images/album/img68/510/5d417182c3d3a_25535468_1564569986.jpg?x-oss-process=image/resize,limit_0,s_542,m_fill/quality,q_80)"></div>
                            </div>
                            <div class="billboard-song-list">
                                <div class="row">
                                    <div class="button unselectable remarkable">全部播放<span class="ripple" style="height: 105px; width: 105px; top: 0px; left: 0px;"></span></div>
                                    <div class="external"><a href="/billboard/102">详情<div class="button unselectable round"><i class="iconfont"></i><span
                                            class="ripple" style="height: 40px; width: 40px; top: 0px; left: 0px;"></span></div></a></div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="odd song-block">
                                            <div class="rank">1</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img30/119/5d53a94fb00b0_5952530_1565763919.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/xOlBTxbdf97">你笑起来真好看</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="even song-block">
                                            <div class="rank">2</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img51/319951/21051294361565319952.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/mT0yE15cf99">玫瑰少年</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="odd song-block">
                                            <div class="rank">3</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img68/510/5d417182c3d3a_25535468_1564569986.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/8IV49g17d5e">想死却又不敢</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="even song-block">
                                            <div class="rank">4</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img93/907/5d4c20162f828_45375793_1565270038.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/b1sJqpt4280c">无名之辈（Piano Ver）</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="odd song-block">
                                            <div class="rank">5</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img36/79/5d4cea4388317_3996536_1565321795.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/mT0yPP93b38">李兰妈妈</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="even song-block">
                                            <div class="rank">6</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img84/70/5d4ce95909505_3502784_1565321561.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/xOlxEud0c44">把孤独当作晚餐</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="odd song-block">
                                            <div class="rank">7</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img47/126/5d3a9d6bd4a77_6331047_1564122475.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/xOkhqtb6cac">鳌拜鳌拜鳌拜拜 (DJ版)</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="even song-block">
                                            <div class="rank">8</div>
                                            <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img93/907/5d41964d2aed1_45375793_1564579405.jpg?x-oss-process=image/resize,limit_0,s_80,m_fill/quality,q_80)">
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay:-1.2s"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay:-1.5s"></div>
                                                    <div class="column paused" style="animation-delay:-0.9s"></div>
                                                    <div class="column paused" style="animation-delay:-0.6s"></div>
                                                </div>
                                                <div class="iconfont play-icon"></div>
                                            </div>
                                            <div class="info">
                                                <div class="title"><a href="/song/xOk6zHa9607">牛奶面包</a></div>
                                                <div class="sub-title">
                                                    <div class="singers"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg"></div>
                </div>
                <div class="billboard-list sp-billboard-list">
                    <div class="adaptive-list" style="opacity: 1;">
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img11/492111/21003319221521492111.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/306">K歌榜<i class="iconfont"></i></a></div>
                                <div class="update-date">每天更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img11/492111/21003319221521492111.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/mQXnW48dfbf">画 (Live Piano Session II)</a></div>
                                                <div class="singer">G.E.M.邓紫棋</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xOermi9f436">你的酒馆对我打了烊</a></div>
                                                <div class="singer">陈雪凝</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/iWtid4078">后来</a></div>
                                                <div class="singer">刘若英</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img39/73/5a72ade15e9a1_3664339_1517465057.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/332">抖音热歌榜<i class="iconfont"></i></a></div>
                                <div class="update-date">每天更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img39/73/5a72ade15e9a1_3664339_1517465057.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/mSGBYF5eafe">侧脸</a></div>
                                                <div class="singer">于果</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/mTrNQf7d590">绿色</a></div>
                                                <div class="singer">陈雪凝</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/U7YLW828bd6">可不可以</a></div>
                                                <div class="singer">张紫豪</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img25/92125/16746708001436340562.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/331">热点讨论榜<i class="iconfont"></i></a></div>
                                <div class="update-date">实时更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img25/92125/16746708001436340562.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/8Gw5plfa02f">承受</a></div>
                                                <div class="singer">唐汉霄</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/8GclaPe2087">Here Without You</a></div>
                                                <div class="singer">3 Doors Down</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/8Isb7xed9c7">夜巴黎</a></div>
                                                <div class="singer">歌者词杰</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img7/58507/3599371470901228.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/305">歌单收录榜<i class="iconfont"></i></a></div>
                                <div class="update-date">每天更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img7/58507/3599371470901228.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xLpDZqcf1bc">The Truth That You Leave</a></div>
                                                <div class="singer">Pianoboy</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/bf0BJPk3018f">岁月神偷</a></div>
                                                <div class="singer">金玟岐</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xMPX2ec031e">成都</a></div>
                                                <div class="singer">赵雷</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img43/2110300243/4365301550436530.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/327">趴间热歌榜<i class="iconfont"></i></a></div>
                                <div class="update-date">每天更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img43/2110300243/4365301550436530.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xObmLF12c9f">内涵段子8D360°全景立体车载环绕（Remix）</a></div>
                                                <div class="singer">王诚喜</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/mQXTZs87d3c">Here We Are</a></div>
                                                <div class="singer">华晨宇</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xLrwR81280c">It's Raining Again (Smile)</a></div>
                                                <div class="singer">Skylar Grey</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billboard-item-wrapper unselectable" style="flex: 0 0 50%; max-width: 50%;">
                            <div class="billboard-item" style="background-image:url(//pic.xiami.net/images/album/img29/59/586525ffc9905_2961929_1483023871.jpg?x-oss-process=image/resize,limit_0,s_760,m_fill/quality,q_80)">
                                <div class="cover"></div>
                                <div class="name"><a href="/billboard/324">影视原声榜<i class="iconfont"></i></a></div>
                                <div class="update-date">每天更新</div>
                                <div class="main">
                                    <div class="logo" style="background-image:url(//pic.xiami.net/images/album/img29/59/586525ffc9905_2961929_1483023871.jpg?x-oss-process=image/resize,limit_0,s_300,m_fill/quality,q_80)">
                                        <div class="play-icon iconfont"></div>
                                    </div>
                                    <div class="items">
                                        <div class="item">
                                            <div class="rank">1</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/xNby9pa82a7">光年之外</a></div>
                                                <div class="singer">G.E.M.邓紫棋</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">2</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/8HOEd2ee0b8">追光者</a></div>
                                                <div class="singer">岑宁儿</div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="rank">3</div>
                                            <div class="info">
                                                <div class="song-name"><a href="/song/mQQ8TS78e31">小幸运</a></div>
                                                <div class="singer">田馥甄</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="billboard-list">
                    <h2>全球媒体榜</h2>
                    <div class="adaptive-list" style="opacity: 1;">
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/204">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/95/1542011094295.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/204">美国Billboard单曲榜</a></div>
                            <div class="update-date">每周五更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/206">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/53/1542011279853.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/206">韩国MNET音乐排行榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/201">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/94/1542011324194.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/201">Hito 中文排行榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/203">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/95/1542011374395.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/203">英国UK单曲榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/205">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/15/1542011433715.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/205">oricon公信单曲榜</a></div>
                            <div class="update-date">每周三更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/328">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/79/1542011475279.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/328">美国iTunes榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/329">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/19/1542011529719.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/329">Beatport电音榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                        <div class="global-billboard-item unselectable" style="flex: 0 0 25%; max-width: 25%;">
                            <div class="wrapper"><a href="/billboard/330">
                                <div class="logo" style="background-image:url(//pic.xiami.net/images/common/uploadpic/31/1542011589631.png?x-oss-process=image/resize,limit_0,s_432,m_fill/quality,q_80)">
                                    <div class="play-icon iconfont"></div>
                                </div>
                            </a></div>
                            <div class="name"><a href="/billboard/330">香港商业电台榜</a></div>
                            <div class="update-date">每周一更新</div>
                        </div>
                    </div>
                </div>
            </div>

            <div style="clear:both"></div>
            <div taihe="" class="music-foot clearfix layout-footer_taihe" monkey="music-foot" alog-alias="music-foot-alog" style="margin-top: 65px;">
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
        <div class="player unselectable" data-spm="player"><audio src="https://s128.xiami.net/936/2110324936/2105166051/1812856718_1566455275511_8277.mp3?ccode=xiami_web_web&amp;expire=86400&amp;duration=188&amp;psid=b2f671ab5c37af4cd8fdea3414db8d0f&amp;ups_client_netip=113.118.162.93&amp;ups_ts=1566733300&amp;ups_userid=428705097&amp;utid=WB+rFWJ0FwYCAXF2oUc+Xhn7&amp;vid=1812856718&amp;fn=1812856718_1566455275511_8277.mp3&amp;vkey=Bb8f2c8dd91714b0b40fd4b6747d4309c"></audio>
            <div class="common-mode active" style="opacity: 0; transform: translateY(0px);">
                <div class="play-list-container invisible"></div>
                <div class="audio-progress">
                    <div class="range">
                        <div class="bar" style="right: 100%; padding-right: 0px;">
                            <div class="handle" style="margin-left: 0px;">00:00/03:08</div>
                        </div>
                    </div>
                </div>
                <div class="play-bar">
                    <div class="music"><a class="cover-link" href="/song/mT17Fe4da9f">
                        <div class="transitive-image unselectable"><img class="" src="about:blank"><img class="active" src="//pic.xiami.net/images/album/img12/139/5d5e358266fae_6978912_1566455170.jpg?x-oss-process=image/resize,limit_0,s_144,m_fill"></div>
                    </a>
                        <div class="info">
                            <div class="scroll">
                                <div class="content"><a class="title" href="/song/mT17Fe4da9f">潜到海底去看你</a></div>
                            </div>
                            <div class="singers"><a href="/artist/bqIh9Dc39694">欧阳羽臣</a></div>
                        </div>
                        <div class="select">
                            <div>
                                <div class="quality-selector"><span class="iconfont"></span><span class="iconfont arrow"></span></div>
                            </div>
                            <div class="react-contextmenu-wrapper">
                                <div></div>
                            </div>
                        </div>
                        <div class="favorite iconfont"></div>
                        <div class="more iconfont"></div>
                    </div>
                    <div class="main-control">
                        <div class="prev iconfont"></div>
                        <div class="play-btn"><span class="iconfont"></span></div>
                        <div class="next iconfont"></div>
                    </div>
                    <div class="tunings">
                        <div class="volume-control">
                            <div class="iconfont"></div>
                            <div class="range">
                                <div class="bar">
                                    <div class="handle"></div>
                                    <style>
                                        .volume-control .bar {
                                            width: 100%;
                                        }

                                        .volume-control .bar .handle {
                                            background-color: #FF410F
                                        }
                                    </style>
                                </div>
                            </div>
                        </div>
                        <div class="play-mode-control">
                            <div class="iconfont"></div>
                        </div>
                        <div class="lyric-control iconfont"></div>
                        <div class="play-list-control iconfont"></div>
                        <div class="immersion-control iconfont"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="back-to-top" data-spm="back2top">
            <div class="button unselectable invisible iconfont round"><span class="ripple" style="height: 40px; width: 40px; top: 0px; left: 0px;"></span></div>
        </div>
    </div>
</div>
</body>
</html>
