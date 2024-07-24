<?php
function insert_lienhe($hoten,$phone,$thongtin){
    $sql = "INSERT INTO lienhe(hoten,phone,thongtin) VALUES ('$hoten','$phone','$thongtin')";
    pdo_execute($sql);
}
function loadall_lienhe(){
    $sql ="SELECT * FROM lienhe ORDER BY id_lienhe asc";
    $listlienhe=pdo_query($sql);
    return $listlienhe;
}
function loadone_lienhe($id){
    $sql ="SELECT * FROM lienhe WHERE id_lienhe=".$id;
    $onelh=pdo_query_one($sql);
    return $onelh;
}
function update_trangthai_lienhe($trangthai,$id){
    $sql = "UPDATE lienhe set trangthai =".$trangthai." where id_lienhe=".$id;
    pdo_execute($sql);
}
?>