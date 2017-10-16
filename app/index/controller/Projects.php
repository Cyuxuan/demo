<?php
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;
use app\index\model\SqlOperation;
    class Projects extends Controller{
        public function index(){
          //初始化tableName为头部大图表名
          $tableName = 'bimg_info';
          $quantity = 1;
          //自定义model取出数据
          $bdata = SqlOperation::takeOutInfo($tableName,$quantity);

          //初始化要查询的表名tableName
          $tableName = 'android_info';
          $quantity = 4;

          //自定义model取出数据
          if(input('tableName') != null){
            $tableName = input('tableName');
          }

          //定义需要查询列
          //取出案例展示数据
          $colName = array('img_name','img_describe');
          $data = SqlOperation::takeOutInfoFree($tableName,$quantity,$colName);

          //取出style数据

          $tableName = 'style';
          $stydata = SqlOperation::takeOutStyleInfo($tableName);

          //将数据传入页面
          $this->assign('data',$data);
          $this->assign('bdata',$bdata);
          $this->assign('stydata',$stydata);
          // dump($data);
          // dump($bdata);
          // dump($stydata);
          return view();
        }

    }
