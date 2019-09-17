<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/9/5
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/1.11.0/jquery1.11.0.js"></script>
    <link rel="stylesheet" type="text/css" href="css/SJ7hBJjY.css">
    <!-- 太合域名 -->
    <link rel="stylesheet" type="text/css" href="css/lWEqcAon.css">
    <link rel="stylesheet" type="text/css" href="css/app.css">
    <link href="css/styles.css" rel=" stylesheet">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <!-- <link rel="stylesheet" href="css/music.css"> -->
    <script src="js/audio/jquery.js"></script>
    <script src="js/audio/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/audio/player.js"></script>
    <script src="js/audio/progress.js"></script>
    <script src="js/audio/lyric.js"></script>
    <script src="js/audio/play-list.js"></script>
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.eot");
            src: url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.eot?#iefix") format("embedded-opentype"),
            url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.woff2") format("woff2"),
            url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.woff") format("woff"),
            url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.ttf") format("truetype"),
            url("${pageContext.request.contextPath}/fonts/font_765926_x1m7j8km80b.svg#iconfont") format("svg")
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
    <div id="block1" style="width:100%;height:100%;position: relative">
        <iframe src="http://localhost:8080/ssmkkmusic_war_exploded/" id="iframe1" scrolling="no" frameborder="0" style="width: 100%;" ></iframe>
    </div>
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
    </div>
</div>
<script>
    $(document).ready(function () {
        $("#iframe1").on("load",function (event) {
            $("#iframe1").contents().find(".icon-btn").on("click",function () {
                console.log($(this).attr("swid"));
                var songid = "playSong?sid=" + $(this).attr("swid");
                $.ajax(
                    {
                        url: songid,
                        dataType: "json",
                        success:
                            function (result) {
                                console.log(result);
                            }
                    }
                );
                    var players=window.focus();
        });
        });
    });
</script>
</body>
</html>