<?php
namespace app\index\model;
use think\Model;
use think\Db;
class SqlOperation extends Model{

  public static function takeOutInfo($tableName,$quantity){
    //定义数据表列名变量
    if($tableName == null){
      $tableName = 'android_info';
    }
    //判空取数据表名
    // if(input('tableName') != null){
    //   $tableName = input('tableName');
    // }

    //定义查询数据表名称
    $img_name = "img_name";
    $img_text = "img_text";
    $img_describe = "img_describe";
    //初始化data变量（变量向头部传递展示信息）
    $data = array([
      'text' => "至尊宝",
      'imgName' => "zhizunbao.png",
      'descript' => '描述性文字'
      ]);

    //利用助手函数取出案例页案例图片数据
    $imgName = db($tableName)->limit($quantity)->column($img_name);
    $imgText = db($tableName)->limit($quantity)->column($img_text);
    $imgDescribe = db($tableName)->limit($quantity)->column($img_describe);
    //利用循环存入完整图片路径
    for($i = 0 ; $i < count($imgName) ; $i++){
      $imgName[$i] = "static_img//".$imgName[$i];
    }

    //循环将数据写入data变量中
    for($i = 0 ; $i< count($imgName) ; $i++){
      $data[$i]['imgName'] = $imgName[$i];
      $data[$i]['text'] = $imgText[$i];
      $data[$i]['descript'] = $imgDescribe[$i];
    }

    return $data;
  }


//取数据函数重载函数
  public static function takeOutInfoFree($tableName,$quantity,$colName){
    //定义数据表列名变量
    if($tableName == null){
      $tableName = 'android_info';
    }
    //判空取数据表名
    // if(input('tableName') != null){
    //   $tableName = input('tableName');
    // }
    //初始化data变量
    $data = array([]);

    for($i= 0;$i<count($colName) ; $i++){
      $data[0]["".$colName[$i].""]   = "";
    }

    //利用助手函数取出案例页案例图片数据
    for($i = 0 ;$i < count($colName) ; $i++){
      $info = db($tableName)->limit($quantity)->column("".$colName[$i]."");

      for($j = 0 ; $j < $quantity ; $j++){
        $data[$j]["".$colName[$i].""] = $info[$j];
      }

    }

    //利用循环存入完整图片路径
    for($i = 0 ; $i < $quantity ; $i++){
      $data[$i]['img_name'] = "static_img//".$data[$i]['img_name'];
    }

    return $data;
  }


  public static function takeOutStyleInfo($tableName){
    //定义数据表列名变量
    if($tableName == null){
      $tableName = 'style';
    }
    $sql = "select * from ".$tableName;
    $data = Db::query($sql);

    return $data;
  }

}
 ?>
