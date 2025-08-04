<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/main.css"> -->
    <link rel="stylesheet" type="text/css" href="css/boardlist_aside.css">
    <link rel="stylesheet" type="text/css" href="css/boardlist_main.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <title>í´ëì ê¸°í ì»¤ë®¤ëí°</title>
</head>
<body>
	<%
		String sid = (String) session.getAttribute("memberId");
		if(sid == null) {
			response.sendRedirect("login.jsp");
		}
		//로그인 하지 않으면 본 페이지를 볼수 없음.
	%>

    <div id="wrap">
        <header>
            <a href="index.html"><img id="logo" src="images/logo.png"></a>
            <nav id="top_menu">
                HOME  |  LOGIN  |  JOIN  |  NOTICE
            </nav>
            <nav id="main_menu">
                <ul>
                    <li><a href="board_list.html">ìì ê²ìí</a></li>
                    <li><a href="#">ê¸°í ì°ì£¼</a></li>
                    <li><a href="#">ê³µë êµ¬ë§¤</a></li>
                    <li><a href="#">ì°ì£¼í ìë´</a></li>
                    <li><a href="#">íì ê²ìí</a></li>
                </ul>
            </nav>
        </header>

        <aside>
            <article id="login_box"> <!-- ë¡ê·¸ì¸ ë°ì¤ -->
                <img id="login_title" src="images/ttl_login.png">
                <div id="input_button">
                    <form>
                        <ul id="login_input">
                            <li><input type="text"></li>
                            <li><input type="password"></li>
                        </ul>
                        <input id="login_btn" type="image" src="images/btn_login.gif">
                    </form>
                </div>
                <div class="clear"></div>
                <div id="join_search">
                    <img src="images/btn_join.gif">
                    <img src="images/btn_search.gif">
                </div>
            </article> <!-- ë¡ê·¸ì¸ ë°ì¤ ë -->

            <nav id="sub_menu">
                <ul>
                    <li><a href="#">+ ìì  ê²ìí</a></li>
                    <li><a href="#">+ ë°©ëªë¡</a></li>
                    <li><a href="#">+ ê³µì§ì¬í­</a></li>
                    <li><a href="#">+ ë±ì ìì²­</a></li>
                    <li><a href="#">+ í¬í ê°¤ë¬ë¦¬</a></li>
                </ul>
            </nav>

            <article id="sub_banner">
                <ul>
                    <li><img src="images/banner1.png"></li>
                    <li><img src="images/banner2.png"></li>
                    <li><img src="images/banner3.png"></li>
                </ul>
            </article>
            
        </aside>

        <main>
            <img src="images/comm.gif">
            <h2 id="board_title">ìì  ê²ìí</h2>
            <div id="total_search">
                <div id="total">â· ì´ 3ê°ì ê²ìë¬¼ì´ ììµëë¤.</div>
                <div id="search">
                    <div id="search_img">
                        <img src="images/select_search.gif">
                    </div>
                    <div id="search_select">
                        <select>
                            <option>ì ëª©</option>
                            <option>ë´ì©</option>
                            <option>ê¸ì´ì´</option>
                        </select>
                    </div>
                    <div id="search_input">
                        <input type="text">
                    </div>
                    <div id="search_btn">
                        <img src="images/search_button.gif">
                    </div>
                </div>
            </div> <!-- total_search ë -->
            
            <table> <!-- ê²ìí ê¸ ëª©ë¡ íì´ë¸ -->
                <tr>
                    <th>ë²í¸</th>
                    <th>ì ëª©</th>
                    <th>ê¸ì´ì´</th>
                    <th>ì¼ì</th>
                    <th>ì¡°íì</th>
                </tr>
                <tr>
                    <td class="col1">1</td>
                    <td class="col2"><a href="board_view.html">ê¹ì¤íµëì ì ë¬¼ì¸ ë³´ëì¹´ê° ì ë§ ëíë¤ì!!</a></td>
                    <td class="col3">ë£¨ë°í </td>
                    <td class="col4">2025-07-15</td>
                    <td class="col5">15</td>
                </tr>
                <tr>
                    <td class="col1">2</td>
                    <td class="col2"><a href="board_view.html">ê¹ì¤íµëì ì ë¬¼ì¸ ë³´ëì¹´ê° ì ë§ ëíë¤ì!!</a></td>
                    <td class="col3">ë£¨ë°í </td>
                    <td class="col4">2025-07-15</td>
                    <td class="col5">45</td>
                </tr>
                <tr>
                    <td class="col1">3</td>
                    <td class="col2"><a href="board_view.html">ê¹ì¤íµëì ì ë¬¼ì¸ ë³´ëì¹´ê° ì ë§ ëíë¤ì!!</a></td>
                    <td class="col3">ë£¨ë°í </td>
                    <td class="col4">2025-07-15</td>
                    <td class="col5">57</td>
                </tr>
            </table> <!-- ê²ìí ê¸ ëª©ë¡ ë -->
            <div id="buttons">
                <div class="buttons_col1">
                    â ì´ì  1 ë¤ì â¶
                </div>
                <div class="buttons_col2">
                    <img src="images/list.png">
                    <a href="board_write.html"><img src="images/write.png"></a>
                </div>
            </div>                    
        </main>
        <div class="clear"></div>
        
        <footer>
            <img id="footer_logo" src="images/footer_logo.gif">
            <ul id="address">
                <li>ìì¸ì ê°ë¨êµ¬ ì¼ì±ë  1234 ì° : 123-1234</li>
                <li>TEL : 02-123-1234  Email : email@domain.com</li>
                <li>copyright&copy; ë£¨ë°í  All Rights Reserved</li>
            </ul>
            <ul id="footer_sns">
                <li><img src="images/facebook.gif"></li>
                <li><img src="images/blog.gif"></li>
                <li><img src="images/twitter.gif"></li>
            </ul>
        </footer>
    </div>
</body>
</html>