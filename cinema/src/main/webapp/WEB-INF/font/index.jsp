<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>My 影院</title>
    <link  href="css/nav_1.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link  href="css/SpryTabbedPanels.css"rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/bigpicroll.js"></script>
    <script src="js/SpryTabbedPanels.js"type="text/javascript"></script>
    <script src="js/index_login_2.js" type="text/javascript"></script>
    <style type="text/css">
        * {
            margin:0;
            padding:0;
        }
        a {
            color:#a6c063;
            font-size:15px;
            font-family:"宋体";
        }
        a:link, a:visited {
            text-decoration:none;
        }
        a:hover {
            color:#F9F;
        }
        a:active {
            text-decoration:none;
        }
        #footer_1 p {
            margin:7px 0;
        }
        #ad_2 img {
            margin:2px 2px;
        }
        #myTop_2{
            background:url(pic/navigation1.jpg); height:30px; padding-top:5px;
        }
        #myTop_2 #myTop_2_img1_2{
            height:20px; margin-left:159px; margin-top:0px;
        }
        #myTop_2 #myTop_2_img2_2{
            height:20px; margin-left:100px; margin-top:0px;
        }
        #user_2{
            display:inline-table ;
            position:absolute;
            right:159px ;
            background-color:rgb(238, 238, 238);
            padding:5px 25px;
            border-radius:5px;
        }
        #myTop_2 #myTop_2_a1_2{
            padding:0px 10px; color:rgb(99, 166, 187);
        }
        #myTop_2 #myTop_2_a2_2{
            padding:0px 10px; color:rgb(99, 166, 187);
        }
    </style>

</head>
<body>
<!--************************************************顶部登录注册-begin******************************************************-->
<div id="myTop_2">
    <img  id="myTop_2_img1_2"src="pic/wwwlogo.png">
    <img  id="myTop_2_img2_2"src="pic/wwwlogo_1.png">
    <div id="user_2">
        <a  id="myTop_2_a1_2"href="javascript:openLogin()" style="">登录</a>
        <a  id="myTop_2_a2_2"href="#" style="" >免费注册</a>
    </div>
</div>
<!--************************************************顶部登录注册-end******************************************************-->


<!--************************************************主体内容部分-begin***************************************************-->
<div style="width:960px; margin:0 auto;">
    <div style=" background:url(pic/title_final.jpg); height:120px;  border-radius:6px; margin-top:2px;">
        <div style="left:783px; top:96px; position:relative; width:180px">
            <input value="搜电影" type="text"  style="float:left;"/>
            <a href="#" ><img  src="pic/soso.jpg" style="height:20px; margin:0px; float:left;"/></a>
            <div style="clear:both"></div>
        </div>
    </div>
    <!--********************************************导航栏-begin**********************************************-->
    <div class="outer">
        <ul>
            <li>
                <a class="xmenu2" href="index.html">
                    <b class="xsnazzy">
                        <b class="xtop"> <b class="xb1"></b>
                            <b class="xb2"></b> <b class="xb3"></b>
                            <b class="xb4"></b> </b>
                        <span class="xboxmrc"> 首页 </span> </b>
                </a>
            </li>
            <li>
                <a class="xmenu2" href="movie_list_show.html">
                    <b class="xsnazzy">
                        <b class="xtop">
                            <b class="xb1"></b>
                            <b class="xb2"></b>
                            <b class="xb3"></b>
                            <b class="xb4"></b>
                        </b>
                        <span class="xboxmrc"> 看电影 </span>
                    </b>
                </a>
            </li>
            <li>
                <a class="xmenu2" href="tuangou/tuan.html">
                    <b class="xsnazzy">
                        <b class="xtop">
                            <b class="xb1"></b>
                            <b class="xb2"></b>
                            <b class="xb3"></b>
                            <b class="xb4"></b>
                        </b> <span class="xboxmrc"  > 团购 </span>
                    </b>
                </a>
            </li>
            <li>
                <a class="xmenu2" href="news_list.html">
                    <b class="xsnazzy">
                        <b class="xtop">
                            <b class="xb1"></b>
                            <b class="xb2"></b>
                            <b class="xb3"></b>
                            <b class="xb4"></b>
                        </b>
                        <span class="xboxmrc"> 资讯 </span>
                    </b>
                </a>
            </li>
            <li>
                <a class="xmenu2" href="personalCenter_final.html">
                    <b class="xsnazzy">
                        <b class="xtop">
                            <b class="xb1"></b>
                            <b class="xb2"></b>
                            <b class="xb3"></b>
                            <b class="xb4"></b>
                        </b>
                        <span class="xboxmrc"> my影院 </span>
                    </b>
                </a>
            </li>
        </ul>
        <div style="height:3px; background-color:#FC9;margin-top:12px;margin-left:3px;"></div>
    </div>
    <!--********************************************导航栏-end**********************************************-->


    <!-- ****************************影片获取焦点开始*************************-->
    <div id="index_focus_1">
        <div id="index_focus_bar_1"style=" "></div>
        <div class="hdwrap">
            <div class="hdflash f_list">
                <div class="flashlist">
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/01.jpg" alt="意外的恋爱时光 Love Speaks (2013)" title="意外的恋爱时光 Love Speaks (2013)"/>
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="意外的恋爱时光 Love Speaks (2013)" target="_blank">
                                    意外的恋爱时光 Love Speaks (2013)
                                </a>
                            </h2>
                            <p>
                                该片是一部具备亲切自然风格的浪漫气质喜剧，讲述毫无交集的两个人在寻觅
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/02.jpg" alt="钢铁侠3Iron Man 3 (2013)" title="钢铁侠3Iron Man 3 (2013)" >
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="钢铁侠3Iron Man 3 (2013)" target="_blank">
                                    钢铁侠3Iron Man 3 (2013)
                                </a>
                            </h2>
                            <p>
                                在《钢铁侠3》中，托尼·斯塔克将遭遇到一个能力似乎没有界限的强敌的挑战
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/03.jpg" alt="致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)" title="致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)" >
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)" target="_blank">
                                    致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)
                                </a>
                            </h2>
                            <p>
                                自喻为"玉面小飞龙"的郑微，洋溢着青春活力，心怀着对邻家哥哥——林静浓浓
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/04.jpg" alt=" 疯狂原始人 The Croods (2013)" title=" 疯狂原始人 The Croods (2013)"/>
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title=" 疯狂原始人 The Croods (2013)" target="_blank">
                                    疯狂原始人 The Croods (2013)
                                </a>
                            </h2>
                            <p>
                                原始人克鲁德一家六口在老爸Grug（尼古拉斯·凯奇 Nicolas Cage
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/05.jpg" alt="同谋 Conspirators (2013)" title="同谋 Conspirators (2013)" />
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.afeidy.com/?s=vod-read-id-1985.html" title="同谋 Conspirators (2013)" target="_blank">
                                    同谋 Conspirators (2013)
                                </a>
                            </h2>
                            <p>
                                泰国私家侦探陈探（郭富城 饰）年幼父母失踪，长大后为了寻找父母的踪迹而当上私家侦探，在查案中发
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/06.jpg" alt="枪花 (2013)" title="枪花 (2013)" />
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="枪花 (2013)" target="_blank">
                                    枪花 (2013)
                                </a>
                            </h2>
                            <p>
                                由闻名编剧朱睿执笔，刘国豪导演拍照的时髦谍战剧《枪花》一反往日谍战剧
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/07.jpg" alt="盛夏晚晴天 (2013)" title="盛夏晚晴天 (2013)"/>
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="盛夏晚晴天 (2013)" target="_blank">
                                    盛夏晚晴天 (2013)
                                </a>
                            </h2>
                            <p>
                                《盛夏晚晴天》全集在线观看，由欢瑞世纪影视传媒股份有限公司和美亚长城
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: none;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/08.jpg" alt="那金花和她的女婿 (2013)" title="那金花和她的女婿 (2013)"/>
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="那金花和她的女婿 (2013)" target="_blank">
                                    那金花和她的女婿 (2013)
                                </a>
                            </h2>
                            <p>
                                那金花是位非常讲究的老太太，有点势利，精于算计，身上散发着典型的小市
                            </p>
                        </div>
                    </div>
                    <div class="f_out" style="display: block;">
                        <a href="http://www.lanrentuku.com/" target="_blank">
                            <img src="pic/09.jpg" alt="金枝欲孽2 金枝慾孽貳 (2013)" title="金枝欲孽2 金枝慾孽貳 (2013)"/>
                        </a>
                        <div class="picintro">
                            <h2>
                                <a href="http://www.lanrentuku.com/" title="金枝欲孽2 金枝慾孽貳 (2013)" target="_blank">
                                    金枝欲孽2 金枝慾孽貳 (2013)
                                </a>
                            </h2>
                            <p>
                                《金枝欲孽贰》讲述另一个时空、另一个后宫、另一番截然不同的"金枝欲孽"
                            </p>
                        </div>
                    </div>
                </div>
                <div class="flash_tab">
                    <div class="tabs f_tabs" style="width:330px;">
                        <ul>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="意外的恋爱时光 Love Speaks (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="钢铁侠3Iron Man 3 (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title=" 疯狂原始人 The Croods (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="同谋 Conspirators (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="枪花 (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="盛夏晚晴天 (2013)">
                                </a>
                            </li>
                            <li class="f_tab opdiv">
                                <a href="javascript:void(0);" title="那金花和她的女婿 (2013)">
                                </a>
                            </li>
                            <li class="f_tab noopdiv">
                                <a href="javascript:void(0);" title="金枝欲孽2 金枝慾孽貳 (2013)">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <script type="text/javascript">
                    FeatureList(".f_list", {
                        "onclass": "noopdiv",
                        "offclass": "opdiv",
                        "pause_on_act": "mouseover",
                        "interval": 2000,
                        "speed": 5
                    });
                </script>
            </div>
        </div>
    </div>
    <!-- ****************************影片获取焦点结束*************************-->

    <!--***********************************主体内容展示-begin**********************************-->
    <div id="index_middle_content_1">
        <div id="index_main_content_1">
            <div id="TabbedPanels1" class="TabbedPanels">
                <ul class="TabbedPanelsTabGroup">
                    <li class="TabbedPanelsTab" tabindex="0">
                        <a href="##">正在热映</a>
                    </li>
                    <li class="TabbedPanelsTab" tabindex="0">
                        <a href="##">即将上映</a>
                    </li>
                </ul>
                <div class="TabbedPanelsContentGroup">
                    <div class="TabbedPanelsContent">
                        <div class="movie_intro_1">
                            <div class="index_left_1">
                                <c:forEach var="movie" items="${movieList}" >
                                    <a href="##">
                                        <div class="index_pic_1">
                                            <img src="${movie.mPic}"/>
                                        </div>
                                        <img src="pic/xzgp_btn.jpg" style="margin-left:50px;" onclick="location.href='cinema/showList/${movie.mId}'"/>
                                        <h4><center>${movie.mName}</center></h4>
                                    </a>
                                </c:forEach>

                                <div style="clear:both"></div>
                                <div class="index_fenye_1"></div>
                            </div>
                        </div>
                    </div>
                    <div class="TabbedPanelsContent">
                        <div class="movie_intro_1">
                            <div class="index_left_1">
                                <a href="##" >
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_2.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>富春山居图</center></h4>
                                </a>
                                <a href="##" >
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_3.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>致命黑兰</center></h4>
                                </a>
                                <a href="##" >
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_3.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>致命黑兰</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_1.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>中国合伙人</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_2.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>富春山居图</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_3.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>致命黑兰</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_3.jpg" />
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>致命黑兰</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_1.jpg"/>
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>中国合伙人</center></h4>
                                </a>
                                <a href="##">
                                    <div class="index_pic_1">
                                        <img src="pic/movie_scan_3.jpg" />
                                    </div>
                                    <img src="pic/scan_1.png" style="margin-left:50px;"/>
                                    <h4><center>致命黑兰</center></h4>
                                </a>
                                <div style="clear:both"></div>
                                <div class="index_fenye_1"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--***********************************主体内容展示-end**********************************-->


        <!--*********************************************右侧栏目-begin******************************************************-->
        <div id="index_main_right_1" style="">
            <div id="index_main_right_top_1">
                <h2 style=""><span>今日要闻</span></h2>
                <ul>
                    <li><a href="##"><strong>香港资深艺人苏杏璇去世</strong></a></li>
                    <li><a href="##"><strong>Beauty:江山美人如此多娇</strong></a></li>
                    <li><a href="##"><strong>"超人"主创将出席上影节真容</strong></a></li>
                    <li><a href="##"><strong>图解"国产特工大片"诞生</strong></a></li>
                    <li><a href="##"><strong>沃茨《戴安娜》首曝预告</strong></a></li>
                    <li><a href="##"><strong>冯小刚私人定制首露真容</strong></a></li>
                    <li><a href="##"><strong>Beauty:江山美人如此多娇</strong></a></li>
                    <li><a href="##"><strong>"超人"主创将出席上影节真容</strong></a></li>
                    <li><a href="##"><strong>图解"国产特工大片"诞生</strong></a></li>
                </ul>
                <div id="scan_more_1" align="right"><a href="##"><strong>查看更多>></strong></a></div>
            </div>
            <div id="index_main_right_vip_1">
                <h2><span>会员专区</span></h2>
                <div style="background-color:#FFFFFF;margin-top:5px;margin-bottom:5px;">
                    <a href="index.html" style="margin-left:8px; border-top:1px solid gray; padding:1px;"><img src="pic/ka_1.png"/></a>
                    <a href="index.html" style="margin-left:8px;border-top:1px solid gray;padding:1px;"><img src="pic/ka_2.png"/></a>
                    <a href="index.html" style="margin-left:8px;border-top:1px solid gray;padding:1px;"><img src="pic/ka_3.png"/></a>
                </div>
            </div>
            <div id="index_main_right_ad_1">

            </div>
        </div>
        <style type="text/css">
            #index_main_right_1_ul_li_hover{
                background-color:#2385AA;
                color:black;
            }
        </style>
        <script type="text/javascript">
            S(document).ready(function(){
                alert("jlaj;la;halhoha");
                /*S("#index_main_right_1 ul li a").css("color","red");*/
            });
        </script>
        <!--*********************************************右侧栏目-end******************************************************-->
        <div style="clear:both"></div>
    </div>
    <img src="pic/movie_2.jpg" style=" width:960px;"/>
    <!----------------------影评-begin--------------------->
    <div id="index_yp_content_1" style=" background-color:#EEEEEE; border-bottom:5px solid #000033;border-top:5px solid #000033; letter-spacing:0.1em;">
        <h2 style="height:35px; line-height:35px;margin-left:10px; padding-left:10px;">影评<a href="##" style="margin-left:20px;">进入>></a></h2>
        <div id="index_yp_1" style="width:98%; margin:auto;">
            <div id="index_yp_intro_1" style="border:1px solid silver; width:480px; float:left; margin-bottom:8px;">
                <h3 style="height:25px; line-height:25px;width:95%;margin:0 auto; margin-top:13px;"><a href="##">《逆光飞翔》：光影上的命运双人舞</a></h3>
                <p style=" width:95%;margin:5px auto;">
                    <img src="pic/yinhao.png"/>
                    《逆光飞翔》应说是本年度到目前为止院线上映国片里，除了《一代宗师》外声光画最出挑的真人电影，王家卫显然也很中意这部电影中影像符号传递出的美学风格。
                    <a href="##">[阅读全文]</a>
                </p>
                <div id="index_yp_img_1">
                    <img src="pic/04.jpg" style="height:190px;width:93%; margin-top:5px;margin-left:13px; margin-bottom:13px; border:5px solid silver;"/>
                </div>
                <ul style="width:95%;float:left; margin-left:13px;margin-bottom:13px;">
                    <li style="height:25px; line-height:25px"><a href="##">《天机·富春山居图》："半路导演"的飘渺大梦</a></li>
                    <li style="height:25px; line-height:25px"><a href="##">《逆光飞翔》：那边风景独好</a></li>
                    <li style="height:25px; line-height:25px"><a href="##">《被解救的姜戈》：腔调是怎样炼成的</a></li>
                    <li style="height:25px; line-height:25px"><a href="##">《斯托克》：我杀了我叔叔</a></li>
                </ul>
            </div>
            <div id="index_yp_right_1" style="border:1px solid silver;width:400px;height:430px; float:left; margin-left:50px;"></div>
            <div style="clear:both"></div>
        </div>
    </div>
</div>
<!----------------------影评-end--------------------->
<div id="footer_1">
    <center>
        <p>
            <a href="" target="_blank">关于我们</a>
            <a href="" target="_blank">诚聘英才</a>
            <a href="" target="_blank">免责声明</a>
            <a href="" target="_blank">商标声明</a>
            <a href="" target="_blank">注册服务条款</a>
            <a href="" target="_blank">合作信息</a>
            <a href="" target="_blank">广告事物</a> </p>
        <p> <span>热线电话：8888-888</span> <span>地址：杨凌区 西北农林科技大学 信息工程学院</span> </p>
        <p> <span>Copyright 2013-2014 mycinema</span></p>
        <p></p>
    </center>
</div>
</div>
</div>


<!--广告栏
<div  id="ad_2" style="width:147px; background-color:#FFF; position:fixed; right:2px; bottom:2px;">
  <table>
    <tr >
      <td colspan="2"><a href="#" ><img src="pic/hot1_a.jpg" style=" width:143px;"/> </a></td>
    </tr>
    <tr>
    <td colspan="2" ><a href="#" ><img src="pic/hot2_a.jpg" style=" width:143px; "/></td>
    </tr>
    <tr>
   	<td ><a href="#" ><img src="pic/vancltop1_a.jpg" style="height:130px "/></a> </td></td>
    <td ><a href="#" ><img src="pic/vancltop2_a.jpg" style="height:130px   "/></a> </td></td>
    </tr>
  </table>
</div>
-->

<!--登录框-->
<div id="login_2" style="width:375px; border-radius:8px; padding:10px; position:absolute; z-index:111; top: 249px;left: 419px; background-image:url(pic/login_index_bg.jpg);background-repeat: repeat; display:none; "  >
    <div style="">
        <div  style="cursor: move" onmousedown="Drag(this.parentNode.parentNode, event)" >
            <div  id="btn_close_2" style="background-image:url(pic/bt_close_login_index.jpg);width: 25px;height: 15px;position: absolute;right: 10px;top: 10px; cursor: pointer;" onclick="closeLogin()"></div>
            <div id="share_tit_2" style="font-size: 22px;height: auto;line-height: 120%;margin: 0 14px;padding-left: 0;border-bottom: 1px solid #ababab;padding-bottom: 19px">会员登录</div>
        </div>
        <div >
            <div style=" margin-bottom:10px;">
                <form>
                    <dl id="login_userinfo_2" style="padding:10px 20px; line-height: 30px;">
                        <dd>
                            <label data-login="account-label">登录帐号：</label>
                            <input type="text" name="account" >
                        </dd>
                        <dd>
                            <label>登录密码：</label>
                            <input type="password" name="password" >
                            <a href="#" class="ml6">忘记密码？</a></dd>
                        <dd  style="display: none;">
                            <label>验证码：</label>
                            <input type="text" name="vcode"  value="" style="width:115px;">
                        </dd>
                        <dd  style="display: none;"><img src="" > <a href="#" onclick="return false;" >刷新</a> </dd>
                        <dd>
                            <input type="checkbox" data-login="auto" name="" value="">
                            下次自动登录</dd>
                    </dl>
                    <p  style="text-align:center;">
                        <input type="button" value="免费注册" style="width:130px; height:30px;background-color:#E4E4E4; margin-right:20px; border-radius:5px;" >
                        <input type="submit"  value="登录"  style="width:130px; height:30px; background-color:#F90; border-radius:5px;">
                    </p>
                </form>
            </div>
            <p id="dialogButtonRegion_1370930678517" class="tip_btnbox" style="display: none;
      	 background: none;text-align: center;padding: 0 0 30px 0;">
            </p>
        </div>
    </div>
</div>
<!--登录框背景-->
<div id="overflow_2" style="background-color: rgb(0, 0, 0); opacity: 0.6; zoom: 1; z-index: 110; position: absolute; margin: 0px; padding: 0px; top: 0px; left: 0px; width: 100%; height: 2000px; background-position: initial initial; background-repeat: initial initial; display:none;"></div>
<script type="text/javascript">
    var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
</body>
</html>
