<div class="row">
            <div class="row formtitle"><h1>THÊM MỚI SẢN PHẨM</h1></div>
            <div class="row frmcontent">
            <link rel="stylesheet" href="view/css/style.css">
                <form action="index.php?act=addsanpham" method="post" enctype="multipart/form-data">
                    <div class="row mb10">Danh mục<br>
                        <select name="iddm" id="">
                                <?php
                                foreach($listdanhmuc as $danhmuc){
                                    extract($danhmuc);
                                    echo '<option value="'.$id.'">'.$name.'</option>';
                                }
                                ?>
                        </select>
                    </div>
                    
                <div class="row mb10">
                    TÊN SẢN PHẨM<br>
                <input type="text" name="tensp">
                </div>
                <div class="row mb10">
                    GIA SẢN PHẨM<br>
                <input type="text" name="giasp">
                </div>
                <div class="row mb10">
                    HÌNH SẢN PHẨM<br>
                <input type="file" name="hinh" >
                </div>
                <div class="row mb10">
                    MÔ TẢ VỀ SẢN PHẨM<br>
                <textarea name="mota" cols="30" rows="10"></textarea>
                </div>
                <div class="row mb10">
                    <input type="submit" name="themmoi" value="ADD">
                    <input type="reset" value="RESET">
                    <a href="index.php?act=listsp"><input type="button" value="LIST"></a>
                </div>
                <?php
                if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                ?>
                </form>
            </div>
        </div>