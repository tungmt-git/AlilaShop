<?php
function loadall_vaitro(){
    $sql ="SELECT * FROM vaitro ORDER BY id_vaitro desc";
    $listvaitro=pdo_query($sql);
    return $listvaitro;
}
function loadall_trangthai(){
    $sql ="SELECT * FROM trangthai ORDER BY id desc";
    $listtrangthai=pdo_query($sql);
    return $listtrangthai;
}
function loadall_trangthai_lienhe(){
    $sql ="SELECT * FROM trangth_lh ORDER BY id desc";
    $trangthai_lh=pdo_query($sql);
    return $trangthai_lh;
}
?>