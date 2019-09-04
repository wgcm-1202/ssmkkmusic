<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/9/3
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="jquery/1.11.0/jquery1.11.0.js"></script>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/app.css">
    <link href="css/styles.css" rel=" stylesheet">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <!-- <link rel="stylesheet" href="css/music.css"> -->
    <script src="js/qqmusic/jquery.js"></script>
    <script src="js/qqmusic/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/qqmusic/player.js"></script>
    <script src="js/qqmusic/progress.js"></script>
    <script src="js/qqmusic/lyric.js"></script>
    <!-- <script src="js/qqmusic/music.js"></script> -->
    <script src="js/qqmusic/play-list.js"></script>
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url("fonts/font_765926_x1m7j8km80b.eot");
            src: url("fonts/font_765926_x1m7j8km80b.eot?#iefix") format("embedded-opentype"), url("fonts/font_765926_x1m7j8km80b.woff2") format("woff2"), url("fonts/font_765926_x1m7j8km80b.woff") format("woff"), url("fonts/font_765926_x1m7j8km80b.ttf") format("truetype"), url("fonts/font_765926_x1m7j8km80b.svg#iconfont") format("svg")
        }

        .iconfont {
            font-family: iconfont;
            text-align: center;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }

        .arrow {
            transform: rotateZ(0deg);
        }

        .arrows {
            transform: rotateZ(180deg);
        }
        .play5{

        }
        .player .play-list-container.ap {
            opacity: 1;
            -webkit-transform: translateY(0);
            -ms-transform: translateY(0);
            transform: translateY(0);
            transition-timing-function: cubic-bezier(0, 0, 0, 1.25);

            position: absolute;
        }
        .player .common-mode .play-bar .main-control .play-btn1 {
            height: 42px;
            width: 42px;
            color: #fff;
            background-color: #ff410f;
            border-radius: 50%;
            font-size: 42px;
            line-height: 42px;
            cursor: pointer;
        }
        .visible {
            opacity: 0;
            -webkit-transform: translateY(0);
            -ms-transform: translateY(0);
            transform: translateY(0);
            transition-timing-function: cubic-bezier(0, 0, 0, 1.25);
        }
        .checkbox.checked {
            background-color: #ff410f;
            border: none;
            color: #fff;
        }
        .checkbox {
            width: 16px;
            height: 16px;
            min-width: 16px;
            border: 1px solid #999;
            border-radius: 2px;
            box-sizing: border-box;
            background-color: #f2f2f2;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            cursor: pointer;
        }
        .volume-control .bar .handle { background-color: #FF410F }
    </style>
</head>
<body>
<div id="app">
    <div class="page-container" style="min-height: 0%;">

        <div class="player unselectable" data-spm="player">
            <audio id="audio" preload="preload" src=""></audio>
            <div class="common-mode active" style="opacity: 1; position: fixed;bottom:0;transform: translateY(0px);">

                <div class="play-list-container visible" id="visible">
                    <div class="play-list">
                        <div class="tabs unselectable">
                            <div class="tab active" id="listening">正在播放</div>
                            <div class="tab" id="listened">上次播放</div>
                        </div>
                        <div class="table idle" style="opacity: 1;">
                            <div class="table-container">
                                <table id="music_list">
                                    <thead>
                                    <tr>
                                        <th class="th-index" style="width: 10%;"></th>
                                        <th class="th-songName" style="width: 30%;"></th>
                                        <th class="th-artist" style="width: 30%;"></th>
                                        <th class="th-duration" style="width: 30%;"></th>
                                    </tr>
                                    </thead>
                                    <tbody id="deitslist" class="">

                                    </tbody>
                                    <tbody id="deitlately" style="display: none;">
                                    <tr class="" draggable="true">
                                        <td class="checked1" style="display: none;">
                                            <div class="index-container">
                                                <input class="checkbox unselectable" type="checkbox"></div>
                                        </td>
                                        <td class="unselectable1">
                                            <div class="index-container">
                                                <span class="em index">01</span>
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
                                            <a href="/song/xNJXg39bb7d"><span class="em">Fire Away</span></a>
                                        </td>
                                        <td>
                                            <div class="singers">
                                                <a href="/artist/bqImmsS3aeae">Prince Paris</a> / <a href="/artist/9c7kd6f9bba">Steve Reece</a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="duration-container not-editing">
                                                <span class="duration">02:49</span>
                                                <div class="operations">
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="footer footer-idle" id="footer-idle">
                            <div class="count">共1首</div>
                            <div class="edit" id="footeredit">编辑列表</div>
                            <div class="clear">清空</div>
                        </div>
                        <div class="footer footer-editing" id="footer-editing">
                            <div class="select-all">
                                <div class="checkbox unselectable">
                                    <div class="checkbox1 iconfont" id="checkbox1" style="display: none;"></div>
                                </div>
                            </div>
                            <div class="selected-count">已选择0首</div>
                            <div class="select add-to-collect-select">
                                <div>
                                    <div class="add-to-collect">加到歌单</div>
                                </div>
                                <div class="react-contextmenu-wrapper">
                                    <div></div>
                                </div>
                            </div>
                            <div class="remove">移除</div>
                            <div class="division"></div>
                            <div class="cancel" id="footercancel">取消</div>
                        </div>
                        <div class="iconfont close" id="close"></div>
                    </div>
                </div>
                <div class="play-list-container visible"id="visible1" style="pointer-events: none;">
                    <div class="play-list playing">
                        <div class="lyric-title">歌词</div>
                        <div class="play-list-lyric">
                            <p class="">走心小卖家 - 张雪飞</p>
                            <p class="">作词：张雪飞</p>
                            <p class="">作曲：Qwala / 张雪飞</p><br class="empty-row">
                            <p class="">Looking looking Who We Are Are Are</p>
                            <p class="">告诉朋友真的好爱她</p>
                            <p class="">我是个走心的小卖家</p>
                            <p class="">得到你的时候我会爱不释手</p>
                            <p class="">Put It Down</p>
                            <p class="">给我给我你的微信号码</p>
                            <p class="">我想请你坐在我的副驾</p>
                            <p class="">我绝不会跟你去吵架</p>
                            <p class="">用双新鞋来堵住你的嘴巴</p>
                            <p class="">So baby know</p>
                            <p class="">看你第一眼忍不住蠢蠢欲动</p>
                            <p class="">当天晚上陪我做第一场春梦</p>
                            <p class="">梦里的我像儿童对着你口水直流</p>
                            <p class="">梦里的你像玩具一样 让我爱不释手</p>
                            <p class="">想摸你的头 水床上翻跟头</p>
                            <p class="">我在享受 温柔的眼眸</p>
                            <p class="">就在此时此刻 被我占有</p>
                            <p class="">多希望一直让我停留在了你的梦中</p>
                            <p class="">像诸葛草船借箭成竹在胸只欠东风</p>
                            <p class="">你陪我讨论着 无比配合的</p>
                            <p class="">研究一些不良的内容 我想你会懂</p>
                            <p class="">也在跟我诉说过 给你伤害的</p>
                            <p class="">那些对你发过誓的杂种 那我会是哪种</p>
                            <p class="">你是百花争艳的优胜者像花后</p>
                            <p class="">对你电话号熟悉已经超过10086</p>
                            <p class="">我相信我比那群秀假表的瓜皮优秀</p>
                            <p class="">把你的名字印在鞋上然后当做我的logo</p>
                            <p class="">Looking looking Who We Are Are Are</p>
                            <p class="active">告诉朋友真的好爱她</p>
                            <p class="">走心的小卖家家家家</p>
                            <p class="">得到你的时候我会爱不释手</p>
                            <p class="">Put It Down</p>
                            <p class="">给我给我你的微信号码</p>
                            <p class="">我想请你坐在我的副驾</p>
                            <p class="">我绝不会跟你去吵架</p>
                            <p class="">用双新鞋来堵住你的嘴巴</p>
                            <p class="">So baby know</p>
                            <p class="">用一百双椰子挂满圣诞树</p>
                            <p class="">当礼物告诉你我对你痴心绝对</p>
                            <p class="">坦白告诉你我是个微商</p>
                            <p class="">但如果你感兴趣的话</p>
                            <p class="">就来我家看看我的鞋柜</p>
                            <p class="">穿上新鞋把烦恼都给踢碎</p>
                            <p class="">送你双新鞋创造聊天机会</p>
                            <p class="">你的性感不是穿上高跟鞋</p>
                            <p class="">就能更强烈</p>
                            <p class="">满大街的高跟别以为自己更特别 ye ye</p>
                            <p class="">我喜欢你身上味道不需要任何名牌的香水</p>
                            <p class="">我想要当你的骑士队</p>
                            <p class="">阻挡着你周围徘徊的魔鬼</p>
                            <p class="">我能够想到最浪漫的味道</p>
                            <p class="">就是和你在家里吹着空调</p>
                            <p class="">告诉你对我来说多么重要</p>
                            <p class="">一本正经的在压低我的音调</p>
                            <p class="">Looking looking Who We Are Are Are</p>
                            <p class="">告诉朋友真的好爱她</p>
                            <p class="">走心的小卖家家家家</p>
                            <p class="">得到你的时候我会爱不释手</p>
                            <p class="">Put It Down</p>
                            <p class="">给我给我你的微信号码</p>
                            <p class="">我想请你坐在我的副驾</p>
                            <p class="">我绝不会跟你去吵架</p>
                            <p class="">用双新鞋来堵住你的嘴巴</p>
                            <p class="">So baby know</p>
                            <p class="">我想带着你到全世界去旅行</p>
                            <p class="">每个场景的笑容都记录</p>
                            <p class="">一直到我们之间都再也没距离</p>
                            <p class="">你的每个要求我都会去满足</p>
                            <p class="">我们的婚礼做黑怕专场我来当mc</p>
                            <p class="">Vcr的视频配上hiphop拍成mv</p>
                            <p class="">情话写进歌里一直唱到80岁</p>
                            <p class="">颤抖的手去擦拭你眼角的泪</p>
                            <p class="">Ok baby baby baby baby</p>
                            <p class="">Sing for you every day</p>
                            <p class="">Ok baby baby baby baby</p>
                            <p class="">Sing for you every day</p>
                            <p class="">Ok baby baby baby baby</p>
                            <p class="">Sing for you every day</p>
                            <p class="">Ok baby baby baby baby</p>
                            <p class="">Sing for you Sing for you</p>
                            <p class="">Every day every day</p>
                        </div>
                        <div class="iconfont close"></div>
                        <div class="footer">
                            <div class="translation-switch"><span>翻译</span>
                                <div class="switch"></div>
                            </div><a class="edit-lyric" href="//emumo.xiami.com/wiki/addlrc/id/1796987533" target="_blank" rel="noreferrer noopener">歌词纠错</a>
                        </div>
                    </div>
                </div>
                <div class="audio-progress">
                    <div class="range" id="progress_bar">
                        <div class="bar" id="progress_line" style="right: 100%; padding-right: 26px;">
                            <div class="handle" id="progress_dot" style="margin-left: 0px;">
                                <span class="progress_time" id="nowtime"></span>
                                <span class="total_time" id="totaltime"></span></div>
                        </div>
                    </div>
                </div>
                <div class="play-bar" data-spm-anchor-id="a2oj1.12028025.player.i0.54776ee1tUUXwQ">
                    <div class="music">
                        <a class="cover-link" href="/song/mSIV7o8ce75">
                            <div class="transitive-image unselectable">
                                <img class="active song_img" src="">
                            </div>
                        </a>
                        <div class="info">
                            <div class="scroll">
                                <div class="content scrolling" style="transition-duration: 100ms; transform: translateX(-5px);">
                                    <a class="title" href="/song/mSIV7o8ce75" id="title"></a>
                                </div>
                            </div>
                            <div class="singers"><a href="/artist/nn9UOG5f080" class="song-singer"></a></div>
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
                        <div class="pre iconfont" id="previous"></div>
                        <div class="play-btn"><span class="iconfont" id="pause" style="font-size: 42px;"></span></div>
                        <div class="next iconfont" id="next"></div>
                    </div>

                    <div class="tunings">
                        <div class="volume-control">
                            <div class="iconfont" id="volume_left"></div>
                            <div class="range" id="volume_bar">
                                <div class="bar" id="volume_line">
                                    <div class="handle" id="volume_dot">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="play-mode-control">
                            <div class="iconfont" id="Mode" bindIndex="1"></div>
                        </div>
                        <div class="lyric-control iconfont" id="lyric-control"></div>
                        <div class="play-list-control iconfont" id="listen-control"></div>
                        <div class="immersion-control iconfont"></div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(function(){
                $("#listening").click(function(){
                    $("#deitslist").show();
                    $("#deitlately").hide();
                    $("#listening").addClass(" active");
                    $("#listened").removeClass(" active");
                    $(".duration-container").addClass("not-editing");
                    $("#footer-idle").show();
                    $("#footer-editing").hide();
                    $(".checked1").hide();
                    $(".unselectable1").show();
                });
                $("#listened").click(function(){
                    $("#deitslist").hide();
                    $("#deitlately").show();
                    $("#listening").removeClass(" active");
                    $("#listened").addClass(" active");
                    $(".duration-container").addClass("not-editing");
                    $("#footer-idle").show();
                    $("#footer-editing").hide();
                    $(".checked1").hide();
                    $(".unselectable1").show();
                });
                $(".close").click(function(){
                    $("#visible").removeClass("ap");
                    $("#visible1").removeClass("ap");
                });
                $("#listen-control").click(function(){
                    $("#visible").toggleClass(" ap");
                    $("#visible1").removeClass("ap");
                });
                $("#lyric-control").click(function(){
                    $("#visible1").toggleClass(" ap");
                    $("#visible").removeClass("ap");
                });
                $("#footeredit").click(function(){
                    $(".duration-container").removeClass("not-editing");
                    $("#footer-idle").hide();
                    $("#footer-editing").show();
                    $(".checked1").show();
                    $(".unselectable1").hide();
                });
                $("#footercancel").click(function(){
                    $(".duration-container").addClass("not-editing");
                    $("#footer-idle").show();
                    $("#footer-editing").hide();
                    $(".checked1").hide();
                    $(".unselectable1").show();
                });
            });
        </script>
    </div>
</div>
</body>
</html>
