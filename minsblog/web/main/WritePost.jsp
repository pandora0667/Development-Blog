<%--
  Created by IntelliJ IDEA.
  User: sangminlee
  Date: 2020/01/18
  Time: 3:58 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Min's TIL Blog</title>
    <link rel="icon" type="image/png" href="favicon.png">
    <link rel="stylesheet" href="/main/lib/material-icons.css">
    <link rel="stylesheet" href="/main/lib/base16-light.css">
    <link rel="stylesheet" href="/main/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="/main/lib/default.css">
    <link rel="stylesheet" href="/main/lib/github-markdown.css">
    <link rel="stylesheet" href="/main/lib/spell-checker.min.css">
    <link rel="stylesheet" href="/main/lib/sweetalert.css">
    <link rel="stylesheet" href="/main/index.css">
</head>
<body id="toplevel">
<div id="in">
    <form id="context" method="post" action="add.do"><textarea id="code" name="contextArea"># New Document</textarea></form>
</div>
<div id="out" class="markdown-body"></div>
<div id="menu">
    <span>Save As</span>
    <div id="saveas-markdown">
        <svg height="64" width="64" xmlns="http://www.w3.org/2000/svg">
            <g transform="scale(0.0625)">
                <path d="M950.154 192H73.846C33.127 192 0 225.12699999999995 0 265.846v492.308C0 798.875 33.127 832 73.846 832h876.308c40.721 0 73.846-33.125 73.846-73.846V265.846C1024 225.12699999999995 990.875 192 950.154 192zM576 703.875L448 704V512l-96 123.077L256 512v192H128V320h128l96 128 96-128 128-0.125V703.875zM767.091 735.875L608 512h96V320h128v192h96L767.091 735.875z"/>
            </g>
        </svg>
        <span>Markdown</span>
    </div>
    <div id="saveas-html">
        <svg height="64" width="64" xmlns="http://www.w3.org/2000/svg">
            <g transform="scale(0.0625) translate(64,0)">
                <path d="M608 192l-96 96 224 224L512 736l96 96 288-320L608 192zM288 192L0 512l288 320 96-96L160 512l224-224L288 192z"/>
            </g>
        </svg>
        <span>HTML</span>
    </div>
    <a id="close-menu">&times;</a>
</div>
<div id="navbar">
    <div id="navcontent">
        <a id="logo" href="https://github.com/jbt/markdown-editor" tooltip="Check out the code on Github!">
            <p id="title" class="left">Min's Blog</p>
        </a>
        <p id="browsersavebutton" title="Browser Save (Experimental)" class="navbutton left"><a><i
                style="color: aliceblue" class="material-icons">save</i></a></p>
        <p id="sharebutton" title="Generate Shareable Link" class="navbutton left"><a href="#"><i
                style="color: aliceblue" class="material-icons">cancel</i></a></p>
    </div>
</div>
<script>
    var save = document.getElementById('browsersavebutton');
    save.onclick = function () {
        document.getElementById('context').submit();
    }
</script>
<script src="/main/lib/markdown-it.js"></script>
<script src="/main/lib/markdown-it-footnote.js"></script>
<script src="/main/lib/highlight.pack.js"></script>
<script src="/main/lib/emojify.js"></script>
<script src="/main/codemirror/lib/codemirror.js"></script>
<script src="/main/codemirror/overlay.js"></script>
<script src="/main/codemirror/xml/xml.js"></script>
<script src="/main/codemirror/markdown/markdown.js"></script>
<script src="/main/codemirror/gfm/gfm.js"></script>
<script src="/main/codemirror/javascript/javascript.js"></script>
<script src="/main/codemirror/css/css.js"></script>
<script src="/main/codemirror/htmlmixed/htmlmixed.js"></script>
<script src="/main/codemirror/lib/util/continuelist.js"></script>
<script src="/main/lib/spell-checker.min.js"></script>
<script src="/main/lib/rawinflate.js"></script>
<script src="/main/lib/rawdeflate.js"></script>
<script src="/main/lib/sweetalert.min.js"></script>
<script src="/main/index.js"></script>
</body>
</html>
