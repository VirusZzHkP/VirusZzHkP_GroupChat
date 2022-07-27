<?php
session_start();
if(isset($_SESSION['userUid'])){
    date_default_timezone_set('Asia/Kolkata');
    $text = $_POST['text'];
    
    $text_message = "<div class='msgln'><span class='chat-time'>".date("Y-m-d H:i:s A")."</span> <b class='user-name'>".$_SESSION['userUid']."</b> ".stripslashes(htmlspecialchars($text))."<br></div>";
    file_put_contents("log.html", $text_message, FILE_APPEND | LOCK_EX);
}
?>
