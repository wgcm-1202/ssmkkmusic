$(function(){
	var $audio = $("audio");
	var player = new Player($audio);
	var progress;
	var volume;
	var lyric;

	//0.自定义滚动条
	/* $("#music_list").mCustomScrollbar(); */
	//1.加载歌曲列表

	$.getJSON("http://localhost:8080/ssmkkmusic_war_exploded/playSongListFirst",function(data){
		initMusicInfo(data[0]);
		initMusicLyric(data[0]);
		player.$musicList = data;
		var MusicList = $("#deitslist");
		$.each(data,function(index,ele){
			var item = createMusicList(index,ele);
			MusicList.append(item);
		});
		$(".list_li").eq(0).find(".play-btn").trigger('click');
	});

	//1.加载歌曲列表
	window.onfocus = function () {
		getMusicList();
	}
	function getMusicList(){
		$.getJSON("http://localhost:8080/ssmkkmusic_war_exploded/playSongList",function(data){
			initMusicInfo(data[0]);
			initMusicLyric(data[0]);
			player.$musicList = data;
			var MusicList = $("#deitslist");
			$.each(data,function(index,ele){
				var item = createMusicList(index,ele);
				MusicList.append(item);
			});
		})
	}
	getLastList();
	function getLastList() {
		$.getJSON("source/musicList.json",function (data) {
			player.$musicList = data;
			var LastList = $("#deitlately");
			$.each(data,function(index,ele){
				var item = createLastList(index,ele);
				LastList.append(item);
			});
		})
	}
	function initMusicInfo(music){

		$(".song_singer").text(music.singer);
		$("#title").text(music.name);
		$(".song_img").attr("src",music.picture);
		$(".song_name").text(music.singer);
		$(".song-singer").text(music.singer);
		$(".song_album").text(music.album);
		$(".total_time").text(" / " + music.time);
	}
	//3.初始化歌词
	function initMusicLyric(music){
		lyric = new Lyric(music.link_lrc);
		$(".play-list-lyric").html("");
		lyric.loadLyric(function(){
			$.each(lyric.lyrics,function(index,ele){
				var $item = $("<p>"+ele+"</p>");
				$(".play-list-lyric").append($item);
			});
		});
        $("#listening").click(function(){
            $("#deitslist").show();
            $("#deitslist .plat-btn").attr("disabled",false);
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
            $("#deitslist .plat-btn").attr("disabled",true);
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
            $("#visible .plat-btn").attr("disabled",false);
            $("#visible .plat-btn").attr("disabled",false);
            $("#visible1").removeClass("ap");
            $("#visible1").css("pointer-events","none");
            $("#visible").css("pointer-events","none");
        });
        $("#listen-control").click(function(){
            $("#visible").toggleClass(" ap");
            $("#visible1").removeClass("ap");
            $("#visible1").css("pointer-events","none");
        });
        $("#lyric-control").click(function(){
            $("#visible1").css("pointer-events","auto");
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
	}
	//4.初始化进度条
	initProgress();
	function initProgress(){
		//音乐播放进度条
		var $progress_bar = $("#progress_bar");
		var $progress_line = $("#progress_line");
		var $progress_dot = $("#progress_dot");
		progress = new Progress($progress_bar,$progress_line,$progress_dot);
		progress.progressClick(function(value){
			player.musicSeekTo(value);
		});
		progress.progressMove(function(value){
			player.musicSeekTo(value);
		});

		//音量进度条
		var $volume_bar = $("#volume_bar");
		var $volume_line = $("#volume_line");
		var $volume_dot = $("#volume_dot");
		volume = new Progress($volume_bar,$volume_line,$volume_dot);
		volume.progressClick(function(value){
			player.volumeSeekTo(value);
		});
		volume.progressMove(function(value){
			player.volumeSeekTo(value);
		});
	}
	bindEvent();
	function bindEvent(){
		$("#deitslist").delegate(".play-btn", "click", function(event) {
			var $li = $(this).parents(".list_li");
			$(this).toggleClass("play5")
			$li.siblings().find(".play-btn").html("");
			$li.siblings().find(".play-btn").removeClass("play5");
			if($(this).attr("class").indexOf("play5")!=-1){
				$(this).html("");
				$("#pause").html("");
			}else{
				$(this).html("");
				$("#pause").html("");
			}
			player.playMusic($li.get(0).index,$li.get(0).music);

			// 7)变换歌曲图片和背景和歌词
			initMusicInfo($li.get(0).music);
			player.musicTimeUpdate(function(currentTime,duration,timeStr){
				//同步播放时间
				$(".progress_time").text(timeStr);
				//同步进度条
				var value = (currentTime / duration) * 100;
				progress.setProgress(value);
				/* //同步歌词
				var index = lyric.currentLyric(currentTime);
				var $item = $(".lyric li").eq(index);
				$item.addClass('current');
				$item.siblings().removeClass('current');
				//纯净版歌词
				var $item_pure = $(".pure_lyric li").eq(index);
				$item_pure.addClass('current');
				$item_pure.siblings().removeClass('current');
				//滚动歌词
				if(index <= 2) return;
				$(".lyric").css("marginTop",(-index + 2)*33);
				if(index <= 3) return;
				$(".pure_lyric").css("marginTop",(-index + 3)*58); */
			});
		});
		$("#deitlately").delegate(".play-btn", "click", function(event) {
			var $li = $(this).parents(".list_li");
			$(this).toggleClass("play5")
			$li.siblings().find(".play-btn").html("");
			$li.siblings().find(".play-btn").removeClass("play5");
			if($(this).attr("class").indexOf("play5")!=-1){
				$(this).html("");
				$("#pause").html("");
			}else{
				$(this).html("");
				$("#pause").html("");
			}
			player.playMusic($li.get(0).index,$li.get(0).music);

			// 7)变换歌曲图片和背景和歌词
			initMusicInfo($li.get(0).music);
			player.musicTimeUpdate(function(currentTime,duration,timeStr){
				//同步播放时间
				$(".progress_time").text(timeStr);
				//同步进度条
				var value = (currentTime / duration) * 100;
				progress.setProgress(value);
				/* //同步歌词
				var index = lyric.currentLyric(currentTime);
				var $item = $(".lyric li").eq(index);
				$item.addClass('current');
				$item.siblings().removeClass('current');
				//纯净版歌词
				var $item_pure = $(".pure_lyric li").eq(index);
				$item_pure.addClass('current');
				$item_pure.siblings().removeClass('current');
				//滚动歌词
				if(index <= 2) return;
				$(".lyric").css("marginTop",(-index + 2)*33);
				if(index <= 3) return;
				$(".pure_lyric").css("marginTop",(-index + 3)*58); */
			});
		});
		$("#pause").click(function(){
			if(player.currentMusic == -1){//如果没有播放过音乐，播放第0首
				$(".list_li").eq(0).find(".play-btn").trigger('click');
			}else{//如果播放过音乐，就播放那首
				$(".list_li").eq(player.currentMusic).find(".play-btn").trigger('click');

			}
		});
		$(".pre").click(function(){
			$(".list_li").eq(player.preIndex()).find(".play-btn").trigger('click');
		});
		// 3)下一首按钮
		$(".next").click(function(){
			$(".list_li").eq(player.nextIndex()).find(".play-btn").trigger('click');
		});

		$(".play-list-container").delegate(".checkbox", "click", function(event) {
			var $pl=$(this).parents(".play-list");
			$(this).toggleClass("checked");
			$pl.siblings().find(".checkbox").removeClass("checked");
			if($(this).attr("class").indexOf("checked")!=-1){
				$(this).find(".checkbox1").show();
			}else{
				$(this).find(".checkbox1").hide();
			}

		});

		//(5)歌曲删除按钮事件
		$("#deitlately").delegate(".delete_btn", "click", function(event) {
			var $li = $(this).parents(".list_li");
			var id=$(this).attr("id");
			if($li.get(0).index == player.currentMusic){
				$(".next").trigger('click');
			}
			$.ajax(
				{
					url: "http://localhost:8080/ssmkkmusic_war_exploded/deleteSong?id="+id,
					dataType:"json",
					success:
						function (result) {
							console.log(result);
						}
				}
			);
			//删除页面上的
			$li.remove();
			//删除保存在数组里的
			player.changeMusic($li.get(0).index);
			//重新排序
			$(".list_li").each(function(index,ele){
				ele.index = index;
				$(ele).find(".number").text(index+1);
			});
			//如果删除的是正在播放的音乐，就播放下一首音乐
		});
		$("#volume_left").click(function(){
			$(this).toggleClass("volume_left2");
			if($(this).attr("class").indexOf("volume_left2") != -1){
				$(this).html("");
				player.volumeSeekTo(0);
			}else{
				$("#volume_left").html("");
				player.volumeSeekTo(1);
			}
		});
		$(document).keydown(function(e){
			var e = e || window.event;
			if(e.keyCode == 32){
				if(player.currentMusic == -1){//如果没有播放过音乐，播放第0首
					$(".list_li").eq(0).find(".play-btn").trigger('click');
				}else{//如果播放过音乐，就播放那首
					$(".list_li").eq(player.currentMusic).find(".play-btn").trigger('click');
				}
			}
		});

		$(document).keydown(function(e){
			var e = e || window.event;
			if(e.keyCode == 37){
				player.musicMoveBack();
			}
			if(e.keyCode == 39){
				player.musicMoveOn();
			}
		});
		//(12)清除列表点击事件
		var clear_btn = $(".footer-idle").find('.clear');
		clear_btn.click(function(){
			$(".list_li").remove();
		});
		//(13)全选按钮点击事件
		var select_all = $(".footer-editing .checkbox");
		select_all.click(function(){
			$(".list_li .checkbox").addClass('checked');
			$(".list_li .checkbox1").show();
			$("#ckeckbox1").show();
			if(select_all.attr("class").indexOf("checked")!=-1){
				$(".list_li .checkbox").removeClass('checked');
				$(".list_li .checkbox1").hide();
				$("#checkbox1").hide();
			}
		});
		//(14)顶部菜单栏的删除按钮点击事件
		$(".remove").click(function(){
			var selected = $(".checked").parents(".list_li");
			selected.remove();
			//重新排序
			$(".list_li").each(function(index,ele){
				ele.index = index;
				$(ele).find(".number").text(index+1);
			});
			//清除全选框的勾
			$(".footer-editing .checkbox").removeClass('checked');
			$("#checkbox1").hide();
		});
		$("#Mode").click(function(){
			var $namemode=$("#Mode").html();
			// $namemode=$.trim($namemode)
			console.log($namemode)
			if($namemode==("")){
				$("#Mode").html("");
			}else if($namemode==("")){
				$("#Mode").html("");
			}else if($namemode==("")){
				$("#Mode").html("");
			}
		});
		player.musicTimeUpdate(function(currentTime,duration,timeStr){
			//循环播放
			var $namemode=$("#Mode").html();
			$namemode=$.trim($namemode)
			console.log($namemode)
			if($namemode!==("") ){
				if(currentTime == duration){
					$(".list_li").eq(player.nextIndex()).find(".play-btn").trigger('click');
				}
			}
			//随机播放
			if($namemode!==("")){
				if(currentTime == duration){
					var random = Math.round(Math.random()*(player.$musicList.length-1));
					$(".list_li").eq(random).find(".play-btn").trigger('click');
					// console.log(random);
				}
			}
			//单曲循环
			if($namemode!==("")){
				if(currentTime == duration){
					player.music_single_cycle();
				}
			}
		});

	}

	function createMusicList(index,music){
		var $li = $("<tr class=\"list_li\" draggable=\"true\">\n"+
			"<td class=\"checked1\" style=\"display: none;\">\n"+
			"<div class=\"index-container\">\n"+
			"<div class=\"checkbox\" style=\"-moz-user-select: none;\"><div class=\"checkbox1 iconfont\" style=\"display:none;\"></div></div>\n"+
			"</td>\n"+
			"<td class=\"unselectable1\">\n"+
			"<div class=\"index-container\"><span class=\"number index\">"+(index+1)+"</span>\n"+
			"<div class=\"audio-icon unselectable\">\n"+
			"<div class=\"column paused\" style=\"animation-delay: -1.2s;\"></div>\n"+
			"<div class=\"column paused\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -1.5s;\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -0.9s;\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -0.6s;\"></div>\n"+
			"</div>\n"+
			"<div class=\"iconfont play-btn\"></div>\n"+
			"</div>\n"+
			"</td>\n"+
			"<td>\n"+
			"<a href=\"\"><span class=\"em\">"+music.name+"</span></a></td>\n"+
			"<td><div class=\"singers\">\n"+
			"<a href=\"\">"+music.singer+"</a></div></td>\n"+
			"<td><div class=\"duration-container not-editing\">\n"+
			" <span class=\"duration\">"+music.time+"</span>\n"+
			"<div class=\"operations\">\n"+
			" <div class=\"iconfont\"></div>\n"+
			" <div class=\"iconfont\"></div>\n"+
			" <div class=\"iconfont\"></div>\n"+
			"<div class=\"delete_btn iconfont\" id=\""+(index+1)+"\"></div></div>\n"+
			"</div>\n"+
			"</td>\n"+
			"</tr>");
		$li.get(0).index = index;
		$li.get(0).music = music;
		return $li;
	}
	function createLastList(index,music){
		var $li = $("<tr class=\"list_li\" draggable=\"true\">\n"+
			"<td class=\"checked1\" style=\"display: none;\">\n"+
			"<div class=\"index-container\">\n"+
			"<div class=\"checkbox\" style=\"-moz-user-select: none;\"><div class=\"checkbox1 iconfont\" style=\"display:none;\"></div></div>\n"+
			"</td>\n"+
			"<td class=\"unselectable1\">\n"+
			"<div class=\"index-container\"><span class=\"number index\">"+(index+1)+"</span>\n"+
			"<div class=\"audio-icon unselectable\">\n"+
			"<div class=\"column paused\" style=\"animation-delay: -1.2s;\"></div>\n"+
			"<div class=\"column paused\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -1.5s;\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -0.9s;\"></div>\n"+
			"<div class=\"column paused\" style=\"animation-delay: -0.6s;\"></div>\n"+
			"</div>\n"+
			"<div class=\"iconfont play-btn\"></div>\n"+
			"</div>\n"+
			"</td>\n"+
			"<td>\n"+
			"<a href=\"\"><span class=\"em\">"+music.name+"</span></a></td>\n"+
			"<td><div class=\"singers\">\n"+
			"<a href=\"\">"+music.singer+"</a></div></td>\n"+
			"<td><div class=\"duration-container not-editing\">\n"+
			" <span class=\"duration\">"+music.time+"</span>\n"+
			"<div class=\"operations\">\n"+
			" <div class=\"iconfont\"></div>\n"+
			" <div class=\"iconfont\"></div>\n"+
			" <div class=\"iconfont\"></div>\n"+
			"<div class=\"delete_btn iconfont\" id=\""+(index+1)+"\"></div></div>\n"+
			"</div>\n"+
			"</td>\n"+
			"</tr>");
		$li.get(0).index = index;
		$li.get(0).music = music;
		return $li;
	}
});