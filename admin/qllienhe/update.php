<?php
    if(is_array($onelh)){
        extract($onelh);
    }
    ?>
<div class="row mb ">
    <div class="boxtrai mr">
        <div class="row mb">
                <div class="boxtitle">CẬP NHẬT TRẠNG THÁO</div>
                <div class=" row boxcontent formtaikhoan">
                    <form action="index.php?act=updatelh" method="post">
                    <div class="row mb10">Trạng thái đơn hàng<br>
                        <select name="trangthai" id="">
                                <?php
                                foreach($trangthai_lh as $trangthai){
                                    extract($trangthai);
                                    echo '<option value="'.$id.'">'.$trangthai_lh.'</option>';
                                }
                                ?>
                        </select>
                    </div> 
                        <div class="row mb10">Họ tên khách hàng:<br>
                            <input type="email" name="email" value="<?=$onelh['hoten']?>" disabled><br>
                        </div>
                        <div class="row mb10">SĐT khách hàng:
                            <input type="text" name="user" value="<?=$onelh['phone']?>" disabled>
                        </div>
                        <div class="row mb10">Thông tin / yêu cầu:
                            <input type="text" name="address" value="<?=$onelh['thongtin']?>" disabled>
                        </div>
                    </div><hr>
                        <div class="row mb10">
                            <input type="hidden" name="id" value="<?=$onelh['id_lienhe']?>">
                            <input type="submit" value="Cập nhật trạng thái" name="capnhat">
                        </div>
                    </form>
                    </div>
                </div>

        </div>
    </div>