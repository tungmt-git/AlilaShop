<?php
function insert_binhluan($id,$tieude,$user,$noidung,$ngaybinhluan){
    $sql = "INSERT INTO binhluan(idsp,tieude,username,noidung,ngaybinhluan) VALUES ('$id','$tieude','$user','$noidung','$ngaybinhluan')";
    pdo_execute($sql);
}
function loadall_binhluan($idpro){
    $sql ="SELECT * FROM binhluan where 1";
    if($idpro>0){ $sql.= " AND idpro='".$idpro."'";}
    $sql.= " ORDER BY id desc";
    $listbinhluan=pdo_query($sql);
    return $listbinhluan;
}
function load_binhluan_cungsanpham($id){
    $sql = "SELECT * from binhluan where idsp=".$id." ORDER BY id desc";
    $listsanpham=pdo_query($sql);
    return $listsanpham;
}
?>