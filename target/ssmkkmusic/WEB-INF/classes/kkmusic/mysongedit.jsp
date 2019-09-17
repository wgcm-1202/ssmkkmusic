<%@ page import="com.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/8/29
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的歌单歌单编辑_千千音乐-听见世界</title>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/Jx4lItx8.css">
    <script src="static/js/jquery-3.2.1.min.js"></script>
</head>
<body data-tiptaihe="0">
<!-- 太合域名 -->
<div class="responsive narrow-screen top-header-wrapper">
    <div class="screen-hd clearfix">
        <div class="music-head " monkey="music-head">
            <h1 class="lg" title="千千音乐官网"> <a id="bm-logo" href="http://music.taihe.com/" title="千千音乐-听见世界">
                <img style="width:123px;height:41px" src="img/logo_2x.png" alt="千千音乐-听见世界"></a>
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
                <div class="search-info">
                    <ul class="hot-search">
                        <li>
                            <a class="key" href="http://music.taihe.com/artist/2517" >薛之谦</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664331571">有一种悲伤</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664320614">傻了吧</a>
                        </li>
                        <li>
                            &nbsp;
                            <a class="key" href="http://music.taihe.com/song/664055967">生而为一</a>
                        </li>
                    </ul>
                </div>
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
        <div class="music-body clearfix">


            <div class="songlist-edit pr">
                <div class="songlist-edit-header clearfix">
                    <h3 class="title-h2 f20 c3 fb fl">编辑歌单信息</h3>
                    <a href="http://music.taihe.com/songlist/566565421" class="blue f14 fl">返回该歌单详情页 &gt;&gt;</a>
                </div>
                <dl class="songlist-edit-cover pa">
                    <dt>
                        <a href="javascript:void(0)" class="songlist-edit-cover-btn">
                            <img data-initpic="/static/images/default/songlist_default_150_red.png"
                                 src="../${songlist.slurl}" alt="" class="edit-cover-preview">
                            <span class="bg-blue f16 t">更改封面</span></a>
                    </dt>
                    <dd class="c9 f14">支持 jpg \ png \ gif 格式，建议尺寸大于500＊500，文件小于10M</dd>
                </dl>
                <div class="songlist-edit-name">
                    <h3 class="title-h3 f16 c3 fb pr"><i class="pa important-val">*</i>歌单名称:</h3>
                    <div class="edit-detail-box pr">
                        <input type="text" value="${songlist.slname}" placeholder="输入歌单名称" class="edit-name t"><br>
                        <span class="songlist-title-tip t noen"></span>
                        <i class="songlist-num pa c9">26</i>
                    </div>
                </div>
                <div class="songlist-edit-desc">
                    <h3 class="title-h3 f16 c3 fb">歌单简介:</h3>
                    <div class="edit-detail-box pr">
                        <textarea name="" id="" cols="30" rows="10" placeholder="为你的歌单加一点介绍吧" class="edit-desc"></textarea>
                        <span class="desc-text pa t c9">500</span>
                    </div>
                </div>
                <div class="songlist-edit-list">
                    <h3 class="title-h3 f16 c3 fb">歌曲列表:</h3>
                    <div class="edit-detail-box">
                        <div class="edit-list-header">
                            <span class="edit-list-total c9">歌曲(0)</span>
                            <a href="javascript:void(0)" class="add-song-btn blue t">+ 添加歌曲</a>
                        </div>
                        <div class="edit-list-box pr">
                            <div class="add-songs-bg pa" style="display: block;"></div>
                            <ul class="edit-list clearfix" data-listidx="0">
                                <!-- 判断del_status 1下架0正常 copy_type0：未知，1：全部，2：仅下载，3：仅试听 -->
                            </ul>
                        </div>
                        <div class="edit-list-footer">
                        </div>
                    </div>
                </div>
                <div class="songlist-edit-list songlist-edit-list-tag">
                    <h3 class="title-h3 f16 c3 fb">选择标签: </h3>
                    <div class="edit-detail-box">
                        <h3 class="c9 f16 edit-select-tags-text edit-select-tags-tips clearfix">
                            选择三个标签，让歌单更容易被发现
                            <!-- 选择三个标签，让歌单更容易被发现 -->
                        </h3>
                        <div class="edit-tags-box t pr edit-tag-more-show" id="moreshow">
                            <div class="edit-tags-class edit-tags-hot clearfix" id="hot">
                                <h4>热门</h4>
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)" class="t">华语</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="t">流行</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="t">摇滚</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="t">纯音乐</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="t">古典</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" class="t">欧美</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="edit-tags-class clearfix">
                                <h4>语种</h4>
                                <ul>
                                    <li><a href="javascript:void(0)" class="t">华语</a></li>
                                    <li><a href="javascript:void(0)" class="t">欧美</a></li>
                                    <li><a href="javascript:void(0)" class="t">粤语</a></li>
                                    <li><a href="javascript:void(0)" class="t">日语</a></li>
                                    <li><a href="javascript:void(0)" class="t">韩语</a></li>
                                    <li><a href="javascript:void(0)" class="t">纯音乐</a></li>
                                    <li><a href="javascript:void(0)" class="t">小语种</a></li>
                                </ul>
                            </div>
                            <div class="edit-tags-class clearfix">
                                <h4>风格</h4>
                                <ul>
                                    <li><a href="javascript:void(0)" class="t">流行</a></li>
                                    <li><a href="javascript:void(0)" class="t">摇滚</a></li>
                                    <li><a href="javascript:void(0)" class="t">民谣</a></li>
                                    <li><a href="javascript:void(0)" class="t">电子</a></li>
                                    <li><a href="javascript:void(0)" class="t">影视原声</a></li>
                                    <li><a href="javascript:void(0)" class="t">ACG</a></li>
                                    <li><a href="javascript:void(0)" class="t">轻音乐</a></li>
                                    <li><a href="javascript:void(0)" class="t">新世纪</a></li>
                                    <li><a href="javascript:void(0)" class="t">爵士</a></li>
                                    <li><a href="javascript:void(0)" class="t">古典</a></li>
                                    <li><a href="javascript:void(0)" class="t">乡村</a></li>
                                    <li><a href="javascript:void(0)" class="t">说唱</a></li>
                                    <li><a href="javascript:void(0)" class="t">世界音乐</a></li>
                                    <li><a href="javascript:void(0)" class="t">古风</a></li>
                                    <li><a href="javascript:void(0)" class="t">儿歌</a></li>
                                    <li><a href="javascript:void(0)" class="t">朋克</a></li>
                                    <li><a href="javascript:void(0)" class="t">布鲁斯</a></li>
                                    <li><a href="javascript:void(0)" class="t">RnB/Soul</a></li>
                                    <li><a href="javascript:void(0)" class="t">金属</a></li>
                                    <li><a href="javascript:void(0)" class="t">雷鬼</a></li>
                                    <li><a href="javascript:void(0)" class="t">英伦</a></li>
                                    <li><a href="javascript:void(0)" class="t">民族</a></li>
                                    <li><a href="javascript:void(0)" class="t">后摇</a></li>
                                    <li><a href="javascript:void(0)" class="t">拉丁</a></li>
                                </ul>
                            </div>
                            <div class="edit-tags-class clearfix">
                                <h4>情感</h4>
                                <ul>
                                    <li><a href="javascript:void(0)" class="t">快乐</a></li>
                                    <li><a href="javascript:void(0)" class="t">美好</a></li>
                                    <li><a href="javascript:void(0)" class="t">安静</a></li>
                                    <li><a href="javascript:void(0)" class="t">伤感</a></li>
                                    <li><a href="javascript:void(0)" class="t">寂寞</a></li>
                                    <li><a href="javascript:void(0)" class="t">思念</a></li>
                                    <li><a href="javascript:void(0)" class="t">孤独</a></li>
                                    <li><a href="javascript:void(0)" class="t">怀旧</a></li>
                                    <li><a href="javascript:void(0)" class="t">悲伤</a></li>
                                    <li><a href="javascript:void(0)" class="t">感动</a></li>
                                    <li><a href="javascript:void(0)" class="t">治愈</a></li>
                                    <li><a href="javascript:void(0)" class="t">放松</a></li>
                                    <li><a href="javascript:void(0)" class="t">清新</a></li>
                                    <li><a href="javascript:void(0)" class="t">浪漫</a></li>
                                    <li><a href="javascript:void(0)" class="t">兴奋</a></li>
                                    <li><a href="javascript:void(0)" class="t">性感</a></li>
                                    <li><a href="javascript:void(0)" class="t">励志</a></li>
                                </ul>
                            </div>
                            <div class="edit-tags-class clearfix">
                                <h4>场景</h4>
                                <ul>
                                    <li><a href="javascript:void(0)" class="t">运动</a></li>
                                    <li><a href="javascript:void(0)" class="t">驾驶</a></li>
                                    <li><a href="javascript:void(0)" class="t">学习</a></li>
                                    <li><a href="javascript:void(0)" class="t">工作</a></li>
                                    <li><a href="javascript:void(0)" class="t">清晨</a></li>
                                    <li><a href="javascript:void(0)" class="t">夜晚</a></li>
                                    <li><a href="javascript:void(0)" class="t">午后</a></li>
                                    <li><a href="javascript:void(0)" class="t">游戏</a></li>
                                    <li><a href="javascript:void(0)" class="t">旅行</a></li>
                                    <li><a href="javascript:void(0)" class="t">散步</a></li>
                                    <li><a href="javascript:void(0)" class="t">酒吧</a></li>
                                    <li><a href="javascript:void(0)" class="t">夜店</a></li>
                                    <li><a href="javascript:void(0)" class="t">咖啡厅</a></li>
                                    <li><a href="javascript:void(0)" class="t">地铁</a></li>
                                    <li><a href="javascript:void(0)" class="t">校园</a></li>
                                    <li><a href="javascript:void(0)" class="t">婚礼</a></li>
                                    <li><a href="javascript:void(0)" class="t">约会</a></li>
                                    <li><a href="javascript:void(0)" class="t">休息</a></li>
                                </ul>
                            </div>
                            <div class="edit-tags-class clearfix">
                                <h4>主题</h4>
                                <ul>
                                    <li><a href="javascript:void(0)" class="t">经典</a></li>
                                    <li><a href="javascript:void(0)" class="t">翻唱</a></li>
                                    <li><a href="javascript:void(0)" class="t">榜单</a></li>
                                    <li><a href="javascript:void(0)" class="t">现场</a></li>
                                    <li><a href="javascript:void(0)" class="t">KTV</a></li>
                                    <li><a href="javascript:void(0)" class="t">DJ</a></li>
                                    <li><a href="javascript:void(0)" class="t">网络歌曲</a></li>
                                    <li><a href="javascript:void(0)" class="t">器乐</a></li>
                                </ul>
                            </div>
                            <div class="edit-tag-more-box clearfix pa">
                                <span class="fr edit-tag-more c-blue pa" ><a id="changeed" href="javascript:moreshow();">+ 展开</a></span>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    function moreshow(){
                        var box=document.getElementById("moreshow");
                        box.style.cssText="height: 660px;";
                        document.getElementById("hot").style.display="none";
                        document.getElementById("changeed").innerHTML="收起";
                        document.getElementById("changeed").href="javascript:hotshow();";
                    }
                    function hotshow(){
                        var box=document.getElementById("moreshow");
                        box.style.cssText="height: 35px;";
                        document.getElementById("hot").style.display="block";;
                        document.getElementById("changeed").innerHTML="+ 展开";
                        document.getElementById("changeed").href="javascript:moreshow();";
                    }

                </script>
                <div class="songlist-edit-list">
                    <a href="javascript:void(0)" class="songlist-edit-submit submit f16 bg-blue t" data-listid="566565421">保存</a>
                </div>
            </div>

            <div class="common-pop-window" id="common-pop-window" style="display: none; position: fixed;">
                <div class="common-pop-title"><span>更改封面</span>
                    <a href="javascript:;" class="close close-window-hook"></a>
                </div>
                <div class="common-pop-wrap">
                    <div class="pop-edit-cover none" style="display: block;">
                        <form enctype="multipart/form-data" method="post" id="upload" name="upform" action="/upimage">
                            <!-- http://dapeng.music.baidu.com:8088/ugc/upimage -->
                            <div class="pop-upload clearfix pr">
                                <span class="f14 c9 none upload-tip pa">请选择图片剪裁区域！</span>
                                <div class="pop-start-upload pr">
                                    <input type="file" value="选择图片" name="file" class="select-pic pa">
                                    <input type="hidden" value="" name="x1">
                                    <input type="hidden" value="" name="y1">
                                    <input type="hidden" value="" name="x2">
                                    <input type="hidden" value="" name="y2">
                                    <a href="javascript:void(0)" class="upload-btn f14">选择图片</a>
                                    <span class="f14 c9">支持 jpg \ png \ gif 格式，文件小于10M, <i class="cut-control-tip">不能小于500*500</i></span>
                                </div>
                                <div class="pop-cut-img">
                                    <div class="pop-cut-img-box pr fl">
                                        <img id="ferret" class="pa" src="">
                                    </div>
                                    <h4 class="upload-preview-text">预览</h4>
                                    <div class="upload-img-box">
                                        <img class="upload-img" src="">
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix">
                                <input value="保存" type="submit" id="btnAjaxSubmit" class="pop-edit-submit submit f16 bg-blue t">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="common-pop-mask" style="display: none;"></div>
            <div class="common-pop-window" id="common-pop-window1" style="display: none; margin-left: -277px; margin-top: -296px; position: fixed;">
                <div class="common-pop-title"><span>添加歌曲</span><a href="javascript:;" class="close close-window-hook"></a></div>
                <div class="common-pop-wrap">
                    <div class="pop-edit-list none" style="display: block;">
                        <div class="pop-add-song pr">
                            <div class="loading pa none" style="display: none;"></div>
                            <div class="pop-add-tab clearfix">
                                <span class="pop-add-search-tab f14 pop-add-tab-active">搜索歌曲</span>
                                <span class="pop-add-listen-tab f14">最近收听</span>
                            </div>
                            <div class="pop-search pr" style="display: block;">
                                <div class="pop-add-search clearfix pr">
                                    <i class="search-icon pa"></i>
                                    <input type="text" id="search" class="f14 search-text" placeholder="歌曲 歌单 专辑 歌手">
                                    <a href="javascript:void(0)" id="search-btn" class="f16 search-btn">搜索</a>
                                </div>
                                <div class="pop-search-result clearfix">

                                </div>
                                <div class="search-result-tip none pa">没有找到相关的音乐内容</div>
                                <div class="pop-add-turn-page">
                                    <div class="edit-list-footer">
                                        <div class="page-box">
                                            <i class="page-icon-prev page-icon-prev-search"></i>
                                            <span class="page-current page-current-search">第 <i class="page-current-num page-current-num-search">1</i>
														页</span>
                                            <span class="page-line">/</span>
                                            <span class="page-total page-total-search">共 <i class="page-total-num page-total-num-search">1</i> 页</span>
                                            <i class="page-icon-next page-icon-next-search"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pop-listen none pr" style="display: none;">
                                <div class="pop-listen-result clearfix"></div>
                                <div class="listen-result-tip none pa" style="display: block;">没有找到相关的音乐内容</div>
                                <div class="pop-add-turn-page">
                                    <div class="edit-list-footer">
                                        <div class="page-box">
                                            <i class="page-icon-prev page-icon-prev-listen"></i>
                                            <span class="page-current page-current-listen">第 <i class="page-current-num page-current-num-listen">1</i>
														页</span>
                                            <span class="page-line">/</span>
                                            <span class="page-total page-total-listen">共 <i class="page-total-num page-total-num-listen">1</i> 页</span>
                                            <i class="page-icon-next page-icon-next-listen"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="common-pop-mask" style="display: none;"></div>
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
    <div class="weixin-detail" id="weixin_detail" style="display: none;">
        <div class="weixin-qr"></div>
        <span>微信扫一扫<br>精选音乐每日推送!</span>
    </div>


</div>

<div id="fixed-panel" class="panel-">


    <div class="panel-item message-box"><a target="_blank" href="http://music.taihe.com/user/message"></a></div>
    <div class="panel-item qianqian-box"><a target="_blank" href="javascript:;"></a></div>
    <div class="panel-item vip-box"><a target="_blank" href="http://music.taihe.com/vip?pst=banner"></a><span class="item-line"></span></div>
    <div class="panel-item music-show-box"><a target="_blank" href="http://musicshow.qianqian.com/?pst=showbdyx"></a><span
            class="item-line"></span></div>
    <div class="panel-item down-box qr-box">
        <ul class="main container">
            <li class="code-contain">
                <a class="code" target="_blank" href="" title="下载千千音乐客户端"></a></li>
            <li><span>扫描下载APP</span></li>
            <li class="qr-btn">
                <a target="_blank" href="http://music.taihe.com/download/index.html?pst=web_fixed_right_btn">去下载客户端</a></li>
        </ul>
        <a class="icon" target="_blank" href="" title="下载千千音乐客户端"></a>
        <span class="item-line"></span>
    </div>
    <div class="panel-item open-box"><a target="_blank" href="http://cloudmusic.qianqian.com/"></a><span class="item-line"></span></div>
    <div class="panel-item idea-box">
        <ul class="main container">
            <li><a class="item question" target="_blank" href="http://music.taihe.com/feedback"></a></li>
        </ul>
        <a class="icon" target="_blank" href="javascript:;"></a><span class="item-line" style="display: none;"></span>
    </div>
    <div class="panel-item js-go-top css-go-top" style="display: none;"></div>
</div>
<script>
    $(document).ready(function () {
        $(".f16").click(function () {
            $("#common-pop-window").show();
            $(".common-pop-mask").show();
        });
        $(".close-window-hook").click(function () {
            $(".common-pop-window").hide();
            $(".common-pop-mask").hide();
        });
        $(".add-song-btn").click(function () {
            $("#common-pop-window1").show();
            $(".common-pop-mask").show();
        });
    });
</script>
</body>
</html>