<div class="row">
            <div class="row formtitle"><h1>DANH SÁCH LIÊN HỆ</h1></div>
            <div class="row frmcontent">
                <form action="" method="post">
                    <div class="row mb10 frmlist">
                        <table>
                            <tr>
                                <th></th>
                                <th>STT</th>
                                <th>TÊN KHÁCH HÀNG</th>
                                <th>SỐ ĐIỆN THOẠI KHÁCH HÀNG</th>
                                <th>THÔNG TIN / YÊU CẦU CỦA KHÁCH HÀNG</th>
                                <th>TRẠNG THÁI</th>
                                <th></th>
                            </tr>
                            <?php
                                foreach($listlienhe as $lienhe){
                                    extract($lienhe);
                                    $fixlh = "index.php?act=fixlh&id=".$id_lienhe;
                                    if($trangthai==0){
                                        $thongbao = "Chưa phản hồi";
                                    }else{
                                        $thongbao = "Đã phản hồi";
                                    }
                                    echo '<tr>
                                    <td><input type="checkbox" name="" id=""></td>
                                    <td>'.$id_lienhe.'</td>
                                    <td>'.$hoten.'</td>
                                    <td>'.$phone.'</td>
                                    <td>'.$thongtin.'</td>
                                    <td>'.$thongbao.'</td>
                                    <td><a href="'.$fixlh.'"><input type="button" value="Kiểm tra"></a></td>
                                </tr>';
                                }
                            ?>
                        </table>
                    </div>

                    <div class="row mb10">
                </form>
            </div>
        </div>