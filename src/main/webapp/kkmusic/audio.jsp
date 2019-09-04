<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/9/3
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
    <div class="page-container" style="min-height: 0%;">
        <div class="player unselectable" data-spm="player">
            <audio id="audio" preload="preload" src=""></audio>
            <div class="common-mode active" style="opacity: 1; position: fixed;bottom:0;transform: translateY(0px);">
                <div class="content_pure">
                    <ul class="pure_lyric"></ul>
                </div>
                <div class="play-list-container visible" id="visible">
                    <div class="play-list">
                        <div class="tabs unselectable">
                            <div class="tab active" id="listening">正在播放</div>
                            <div class="tab" id="listened">上次播放</div>
                        </div>
                        <div class="table idle" style="opacity: 1;" id="music_list">
                            <div class="table-container">
                                <table>
                                    <thead><tr>
                                        <th class="th-index" style="width: 10%;"></th>
                                        <th class="th-songName" style="width: 30%;"></th>
                                        <th class="th-artist" style="width: 30%;"></th>
                                        <th class="th-duration" style="width: 30%;"></th>
                                    </tr></thead>
                                    <tbody id="deitslist" class="music_list">
                                    <tr class="active" draggable="true">
                                        <td id="checked1" style="display: none;">
                                            <div class="index-container">
                                                <input class="checkbox unselectable" type="checkbox"></div>
                                        </td>
                                        <td id="unselectable1">
                                            <div class="index-container">
                                                <span class="em index">01</span>
                                                <div class="audio-icon unselectable">
                                                    <div class="column paused" style="animation-delay: -1.2s;"></div>
                                                    <div class="column paused"></div>
                                                    <div class="column paused" style="animation-delay: -1.5s;"></div>
                                                    <div class="column paused" style="animation-delay: -0.9s;"></div>
                                                    <div class="column paused" style="animation-delay: -0.6s;"></div>
                                                </div>
                                                <div class="iconfont play-btn" id="pause1"></div>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="/song/xOmPpQce08d"><span class="em">异乡人Remix</span></a>
                                        </td>
                                        <td>
                                            <div class="singers">
                                                <a href="/artist/nftreT7c2a7">法老</a> / <a href="/artist/yhDqaoc20fe">福克斯</a> / <a href="/artist/m8HN8ja25bd">单海锋</a> / <a href="/artist/nnH6je90945">隆历奇</a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="duration-container not-editing">
                                                <span class="duration">03:11</span>
                                                <div class="operations">
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                    <div class="iconfont"></div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="" draggable="true"><td>
                                        <div class="index-container">
                                            <span class="em index">04</span>
                                            <div class="audio-icon unselectable">
                                                <div class="column paused" style="animation-delay: -1.2s;"></div>
                                                <div class="column paused"></div>
                                                <div class="column paused" style="animation-delay: -1.5s;"></div>
                                                <div class="column paused" style="animation-delay: -0.9s;"></div>
                                                <div class="column paused" style="animation-delay: -0.6s;"></div>
                                            </div>
                                            <div class="iconfont play-btn" id="pause2"></div>
                                        </div>
                                    </td>
                                        <td><a href="/song/ehj848bdb" data-spm-anchor-id="a2oj1.12028025.player.7">
                                            <span class="em">神话·情话</span></a></td>
                                        <td><div class="singers">
                                            <a href="/artist/iikf494c?spm=a2oj1.12028025.player.8.54776ee1KknkRh" >周华健</a>
                                        </div></td>
                                        <td><div class="duration-container not-editing">
                                            <span class="duration">04:26</span>
                                            <div class="operations">
                                                <div class="like iconfont"></div>
                                                <div class="iconfont"></div>
                                                <div class="iconfont"></div>
                                                <div class="iconfont delelte-btn"></div>
                                            </div>
                                        </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                    <tbody id="deitlately" style="display: none;">
                                    <tr class="" draggable="true">
                                        <td id="checked" style="display: none;"><div class="index-container">
                                            <input class="checkbox unselectable" type="checkbox"></div></td>
                                        <td id="unselectable">
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
                                        <td><div class="singers">
                                            <a href="/artist/bqImmsS3aeae">Prince Paris</a> / <a href="/artist/9c7kd6f9bba">Steve Reece</a>
                                        </div></td>
                                        <td><div class="duration-container not-editing">
                                            <span class="duration">02:49</span>
                                            <div class="operations">
                                                <div class="iconfont"></div>
                                                <div class="iconfont"></div>
                                                <div class="iconfont"></div>
                                                <div class="iconfont"></div>
                                            </div>
                                        </div></td>
                                    </tr></tbody>
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
                                <input class="checkbox unselectable" type="checkbox">
                            </div>
                            <div class="selected-count" >已选择0首</div>
                            <div class="select add-to-collect-select">
                                <div>
                                    <div class="add-to-collect">加到歌单</div>
                                </div>
                                <div class="react-contextmenu-wrapper"><div></div>
                                </div>
                            </div>
                            <div class="remove">移除</div><div class="division"></div>
                            <div class="cancel" id="footercancel">取消</div>
                        </div>
                        <div class="iconfont close" id="close"></div>
                    </div>
                </div>
                <div class="play-list-container visible" id="visible1" style="pointer-events: none;">
                    <div class="play-list">
                        <div class="lyric-title">歌词</div>
                        <div class="song_info">歌曲名：<a href="javascript:;" class="song_name"></a></div>
                        <div class="song_info">歌手名：<a href="javascript" class="song_singer"></a></div>
                        <div class="song_info">专辑名：<a href="javascript" class="song_album"></a></div>
                        <div class="lyricBox">
                            <ul class="lyric"></ul>
                        </div>
                        <div class="iconfont close"></div>
                        <div class="footer" data-spm-anchor-id="a2oj1.12028025.player.i2.54776ee1YNgKuI">
                            <div class="translation-switch"><span>翻译</span>
                                <div class="switch"></div>
                            </div>
                            <a class="edit-lyric"  target="_blank" rel="noreferrer noopener">歌词纠错</a>
                        </div>
                    </div>
                </div>
                <div class="audio-progress">
                    <div class="range">
                        <div class="bar" id="progress_bar" style="right: 100%; padding-right: 26px;">
                            <div class="handle" id="progress_line" style="margin-left: 0px;"><div id="progress_dot">
                                <span class="process_time" id="nowtime"></span>
                                <span class="total_time" id="totaltime"></span></div></div>
                        </div>
                    </div>
                </div>
                <div class="play-bar" data-spm-anchor-id="a2oj1.12028025.player.i0.54776ee1tUUXwQ">
                    <div class="music">
                        <a class="cover-link" href="/song/mSIV7o8ce75">
                            <div class="transitive-image unselectable"><img class="song_img" src="">
                                <img class="active" src="">
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
                        <div class="play-btn"><span class="iconfont" id="pause" style="font-size: 42px;"></span></div>
                        <div class="next iconfont" id="next"></div>
                    </div>

                    <div class="tunings">
                        <div class="volume-control">
                            <div class="iconfont volume_left"></div>
                            <div class="volume_bar">
                                <div class="volume_line">
                                    <div class="volume_dot"></div>
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
                        <div class="lyric-control iconfont" id="lyric-control"></div>
                        <div class="play-list-control iconfont" id="listen-control"></div>
                        <div class="immersion-control iconfont"></div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var AUDIOITEM = document.getElementById("audio");
            // var AUDIOITEM = new Audio();
            var musicFile = ['buzailianxi.mp3', 'haikuotiankong.mp3', 'huawuxue.mp3', 'paomo.mp3', 'untilyou.mp3', 'wulai.mp3'];
            var music = localStorage.getItem('filename') || 'music/' + musicFile[Math.floor(Math.random() * musicFile.length)];
            AUDIOITEM.autoplay = localStorage.getItem('autoplay') ? true : false;
            // AUDIOITEM.currentTime = localStorage.getItem('currentTime') ? localStorage.getItem('currentTime') : 0;
            AUDIOITEM.setAttribute('src', music);
            AUDIOITEM.volume = 0.5;

            var title = music.slice(music.indexOf('/') + 1, music.indexOf('.'));
            document.querySelector('#title').innerText = title;

            // console.log(AUDIOITEM.volume); // 音量0-1
            // console.log(AUDIOITEM.muted); // 是否静音
            // console.log(AUDIOITEM.autoplay);
            // console.log(AUDIOITEM.currentTime);
            // console.log(AUDIOITEM.autobuffer); // 媒体文件播放前是否进行缓冲加载，如果设置了autoplay，则忽略此特性
            // console.log(AUDIOITEM.controls);
            // console.log(AUDIOITEM.loop);

            // 错误处理
            AUDIOITEM.addEventListener('error', function() {
                console.log(AUDIOITEM.error.code); // 1.用户终止 2.网络错误 3.解码错误 4.URL无效
            }, false);

            // 缓冲至可播放时开始播放音乐
            AUDIOITEM.addEventListener("canplay", function() {
                // console.log(AUDIOITEM.currentSrc); // 以字符串形式返回正在播放或已加载的文件

                var allTime = Math.ceil(AUDIOITEM.duration); // 计算总时间，单位为s
                var secs = allTime % 60; // 计算秒钟
                secs = secs.toString().length < 2 ? '0' + secs : secs; // 一位数时前面补0
                var mins = (allTime - secs) / 60; // 计算分钟 等价于 (allTime / 60) % 60
                mins = mins.toString().length < 2 ? '0' + mins : mins; // 一位数时前面补0
                document.getElementById("totaltime").innerHTML = mins + ':' + secs;
                document.getElementById("nowtime").innerHTML = "0:00";

                AUDIOITEM.play(); // 开始播放
            }, false);

            // 播放中(播放时间发生改变)事件监听
            AUDIOITEM.addEventListener("timeupdate", function() {
                var nowTime = AUDIOITEM.currentTime; // 当前播放时间，单位为s
                var totalTime = AUDIOITEM.duration;
                var pWidth = (nowTime / totalTime).toFixed(4) * 100; // 计算进度条百分比
                var nSecs = Math.ceil(nowTime) % 60; // Math.ceil向上取整，被60整除时为60的倍数
                var nMins = Math.ceil(nowTime) - nSecs <= 0 ? '0' : (Math.ceil(nowTime) - nSecs) / 60;
                nMins = nMins.toString().length < 2 ? '0' + nMins : nMins;
                nSecs = nSecs.toString().length < 2 ? '0' + nSecs : nSecs;
                // console.log(nMins, nSecs);
                document.getElementById("nowtime").innerHTML= nMins + ":" + nSecs;
                document.getElementById("progress_bar").style.width = pWidth + "%";
            }, false);
            var pause1 = document.getElementById('pause1');
            var pause = document.getElementById('pause');
            // 控制音乐暂停和播放
            pause.addEventListener('click', function() {
                if (AUDIOITEM.paused == false) {
                    AUDIOITEM.pause();
                    pause.innerHTML = "";
                    pause1.innerHTML = "";
                } else {
                    AUDIOITEM.play();
                    pause.innerHTML = "";
                    pause1.innerHTML = "";
                }
            }, false);

            // 控制音乐暂停和播放
            pause1.addEventListener('click', function() {

                if (AUDIOITEM.paused == false) {
                    AUDIOITEM.pause();
                    pause.innerHTML = "";
                    pause1.innerHTML = "";
                } else {
                    AUDIOITEM.play();
                    pause.innerHTML = "";
                    pause1.innerHTML = "";
                }
            }, false);


            var next = document.getElementById('next');
            // 下一首
            next.addEventListener('click', function(e) {
                e.preventDefault();
                music = 'music/' + musicFile[Math.floor(Math.random() * musicFile.length)];
                AUDIOITEM.setAttribute('src', music);
                var title = music.slice(music.indexOf('/') + 1, music.indexOf('.'));
                document.querySelector('#title').innerText = title;
                AUDIOITEM.play();
            }, false);

            var previous = document.getElementById('previous');
            // 上一首
            previous.addEventListener('click', function(e) {
                e.preventDefault();
                music = 'music/' + musicFile[Math.floor(Math.random() * musicFile.length)];
                AUDIOITEM.setAttribute('src', music);
                var title = music.slice(music.indexOf('/') + 1, music.indexOf('.'));
                document.querySelector('#title').innerText = title;
                AUDIOITEM.play();
            }, false);

            // 播放结束切换歌曲
            AUDIOITEM.addEventListener('ended', function() {
                console.log(AUDIOITEM.ended); // 是否播放结束
                music = 'music/' + musicFile[Math.floor(Math.random() * musicFile.length)];
                AUDIOITEM.setAttribute('src', music);
                var title = music.slice(music.indexOf('/') + 1, music.indexOf('.'));
                document.querySelector('#title').innerText = title;
                AUDIOITEM.play();
            }, false);

            // 点击超链接跳转前存储当前音乐播放进度
            var url = window.location.href;
            var linkItem = document.querySelector('.link-item');
            /*linkItem.addEventListener('click', function(e) {
                e.preventDefault();
                var href = e.target.href;
                if (href !== url) {
                    localStorage.removeItem('filename');
                    localStorage.removeItem('currentTime');
                    localStorage.removeItem('autoplay');
                    localStorage.setItem('autoplay', true);
                    localStorage.setItem('filename', AUDIOITEM.currentSrc);
                    localStorage.setItem('currentTime', AUDIOITEM.currentTime);
                }
                window.location.href = href;
            }, false);*/

        </script>
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
                    $("#checked").hide();
                    $("#checked1").hide();
                    $("#unselectable").show();
                    $("#unselectable1").show();
                });
                $("#listened").click(function(){
                    $("#deitslist").hide();
                    $("#deitlately").show();
                    $("#listening").removeClass(" active");
                    $("#listened").addClass(" active");
                    $(".duration-container").addClass("not-editing");
                    $("#footer-idle").show();
                    $("#footer-editing").hide();
                    $("#checked").hide();
                    $("#checked1").hide();
                    $("#unselectable").show();
                    $("#unselectable1").show();
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
                    $("#checked").show();
                    $("#checked1").show();
                    $("#unselectable").hide();
                    $("#unselectable1").hide();
                });
                $("#footercancel").click(function(){
                    $(".duration-container").addClass("not-editing");
                    $("#footer-idle").show();
                    $("#footer-editing").hide();
                    $("#checked").hide();
                    $("#checked1").hide();
                    $("#unselectable").show();
                    $("#unselectable1").show();
                });

            });
        </script>
    </div>
</div>
</body>
</html>