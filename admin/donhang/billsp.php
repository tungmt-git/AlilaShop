<?php
    // var_dump(is_array($sanpham));die();
    if(is_array($oneOrder)){
        extract($oneOrder);
    }
?>
<div class="row">
            <div class="row formtitle"><h1>Thông tin đơn hàng</h1></div>
            <div class="row frmcontent">
            <div class=" row boxcontent formtaikhoan">
                    <form action="index.php?act=updatetrangthai" method="post">
                    <div class="row mb10">Trạng thái đơn hàng<br>
                        <select name="trangthai" id="">
                                <?php
                                foreach($listtrangthai as $trangthai){
                                    extract($trangthai);
                                    echo '<option value="'.$id.'">'.$trangthai.'</option>';
                                }
                                ?>
                        </select>
                    </div> 
                        <div class="row mb10">Email:<br>
                            <input type="email" name="email" value="<?=$oneOrder['email']?>" disabled><br>
                        </div>
                        <div class="row mb10">Tên khách hàng:
                            <input type="text" name="user" value="<?=$oneOrder['hoten']?>" disabled>
                        </div>
                        <div class="row mb10">Địa chỉ:
                            <input type="text" name="address" value="<?=$oneOrder['diachi']?>" disabled>
                        </div>
                        <div class="row mb10">Số Điện Thoại:
                            <input type="text" name="tel" value="<?=$oneOrder['sdt']?>" disabled>
                        </div>
                        <div class="row mb10">Thời gian đặt hàng:
                            <input type="text" name="tel" value="<?=$oneOrder['ngaydathang']?>" disabled>
                        </div>
                        <div class="row mb10">Phải thanh toán:
                            <input type="text" name="tel" value="$<?=$oneOrder['tongtien']?>" disabled>
                        </div>
                    </div><hr>
                    </div>
                </div>
                <div class="row mb10 frmlist">
                <table>
                            <tr>
                                <th></th>
                                <th>TÊN SẢN PHẨM</th>
                                <th>GIÁ SP</th>
                                <th>SỐ LƯỢNG</th>
                            </tr>
                    <?php
                    foreach ($listPro as $pro) {
                        extract($pro);
                        echo'<tr>
                        <td><input type="checkbox" name="" id=""></td>
                        <td>'.$name_pro.'</td>
                        <td>$'.$giamua.'</td>
                        <td>'.$soluong.'</td>
                    </tr>';
                    }
                    ?>
                    </table>
                </div>
                <div class="row mb10">
                            <input type="hidden" name="id" value="<?=$oneOrder['id_order']?>">
                            <input type="submit" value="Cập nhật trạng thái" name="capnhat">
                            <a href="index.php?act=listord"><input type="button" value="LIST"></a>
                        </div>
                    </form>
            </div>
        </div>