<?php 
use yii\helpers\Html;
use common\models\Action;
//获取天气情况
$action = new Action();
$showInfo = $action->getWinfo_fromdb();
?>
<script type="text/javascript">
function showsub(obj){
    var tmpValue = $("input",obj).val();
	//alert("key="+tmpValue);
	$(".subNav").html(tmpValue);
}
</script>
<div class="header">

	<div class="mainTop">

		<div class="lglogo">

			<span class="logo"></span>

            <!-- <span class="logo_lg">企业综合管理系统</span> -->
            <span class="logo_lg">铁西区（开发区）企业云服务平台</span>

			<span class="logo_sm" style="display: none;">管理系统</span>
            
		</div>     
		<span class="lgcmp"><?=Yii::$app->session['user.company']?><br>
		<em><?php echo $showInfo?></em>
		</span>

		<div class="nav">
		<?php
        use mdm\admin\components\MenuHelper; 
        use yii\bootstrap\Nav;
use yii\base\Object;
        
        /*echo Nav::widget([
            'options' => ['class' => 'navbar-nav  navIteam '],
            //navbar-right
            //修改使用yii2-admin的菜单控制项
            'items' => MenuHelper::getAssignedMenu(Yii::$app->user->id?Yii::$app->user->id:$euserId),
        ]);*/
        $tmpMenu = MenuHelper::getAssignedMenu(Yii::$app->user->id?Yii::$app->user->id:$euserId);
        //print_r($tmpMenu);    
        //获取天气情况
        //$action = new Action();
        /*$city = "沈阳";
        $wInfo = $action->getWeatherInfo($city);
        $wData = isset($wInfo["weather_data"])?$wInfo["weather_data"][0]:"";
        //print_r($wData);
        $showInfo = "";
        $weatherInfo = "";
        $dateInfo = "";
        $tempInfo = "";
        if($wData){
             $showInfo = $wData["date"]."&nbsp;&nbsp;".$wData["weather"]."&nbsp;&nbsp;".$wData["temperature"];
             $dateInfo = $wData["date"];
             $weatherInfo = $wData["weather"];
             $tempInfo = $wData["temperature"];
        }*/
        //$showInfo = $action->getWinfo_fromdb();
       
?>
        <!-- <div class="navIteam"><a href="index.php?r=home">系统首页<i class="icon_nav"></i></a></div> -->
        <?php 
            //获取当前路由
            $curUrl = Yii::$app->request->getUrl();
            $curList = explode("r=", $curUrl);
            $curRoute = "/".str_replace("#", "", $curList[1]);
            $curList2 = explode("&", $curRoute);
            $curRoute = $curList2[0];
            $curRoute = str_replace("%2F", "/", $curRoute);
            //echo $curRoute;
            $curhtml = "";
            $curMenu = "";
            //一级菜单
            foreach ($tmpMenu as $key=>$value){
                //若没有下级菜单，url为$value["url"][0]
                $tmpUrl = !is_array($value["url"])?$value["url"]:($value["url"][0]);     
                //echo "<br>".$tmpUrl;               
                $substr = "";
                $subhtml = "";
                $subhtml2 = "";
                $subhtml3 = "";
                $subfirst = ""; 
                $subMenu = array();
                $subMenu2 = array();
                $subLabel = array();
                $subUrl = array();
                $subChked = "";
                //存在二级菜单
                if(isset($value["items"])){
                    $sub = json_encode($value["items"]);
                    //echo $sub; 
                    $subLabel = array();
                    $subUrl = array();
                    $subChked = "";

                    foreach ($tmpMenu[$key]["items"] as $key1=>$value1){
                        $tmpUrl1 = $value1["url"][0];
                        array_push($subMenu, $tmpUrl1);
                        $url1 = "index.php?r=".substr($tmpUrl1, 1);
                        $substr .= $value1["label"]."|".$url1.",";
                        $label1 = $value1["label"];
                        if($key1==0){
                            $subhtml .= "<div class='subNavIteam'><a href='".$url1."' class='curr'>".$label1."</a></div>";
                            $subfirst = "index.php?r=".substr($tmpUrl1, 1);
                        }else{
                            $subhtml .= "<div class='subNavIteam'><a href='".$url1."'>".$label1."</a></div>";
                        }        
                        if(strcasecmp($curRoute, $tmpUrl1)==0){
                            $subhtml2 .= "<div class='subNavIteam'><a href='".$url1."' class='curr'>".$label1."</a></div>";
                        }else{
                            $subhtml2 .= "<div class='subNavIteam'><a href='".$url1."'>".$label1."</a></div>";
                        }
                        //存储非重复的二级菜单
                        if(!in_array($url1, $subUrl)){
                            array_push($subUrl, $url1);
                            array_push($subLabel, $label1);
                        }
                        if(isset($value1["items"])){//存在三级菜单               
                            
                            foreach ($value1["items"] as $key2=>$value2){
                                $tmpUrl2 = $value2["url"][0];
                                array_push($subMenu2, $tmpUrl2);                                
                                if(strcasecmp($curRoute, $tmpUrl2)==0){//记录当前路由所属的二级菜单url 
                                    $subChked = $url1;
                                    //$subhtml3 .= "<div class='subNavIteam'><a href='".$url1."' class='curr'>".$label1."</a></div>";
                                }else{
                                    //$subhtml3 .= "<div class='subNavIteam'><a href='".$url1."'>".$label1."</a></div>";
                                }
                            }
                        }else{
                            //$subhtml3 .= "<div class='subNavIteam'><a href='".$url1."'>".$label1."</a></div>";
                        }
                    }
                    //echo $curhtml."<br>";
                    //print_r($subMenu2);
                    if(in_array($curRoute, $subMenu)){//若当前路由为二级菜单
                        $curhtml = $subhtml2;
                        $curMenu = $value["label"];
                    }else if(in_array($curRoute, $subMenu2)){//若当前路由为三级菜单
                        //$curhtml = $subhtml3;
                        $curMenu = $value["label"];
                        $subhtml4 = "";
                        foreach ($subUrl as $k=>$v){
                            if(strcasecmp($v, $subChked)==0){//当前路由所属的二级菜单置为选中class
                                $subhtml4 .= "<div class='subNavIteam'><a href='".$v."' class='curr'>".$subLabel[$k]."</a></div>";
                            }else{
                                $subhtml4 .= "<div class='subNavIteam'><a href='".$v."'>".$subLabel[$k]."</a></div>";
                            }
                        }
                        $curhtml = $subhtml4;
                    }
                }else{
                    if(strcasecmp($curRoute, $tmpUrl)==0){
                        $curMenu = $value["label"];
                    }
                }
                if(strlen($substr)>0){
                    $substr = substr($substr, 0,strlen($substr)-1);
                }
                $url = "index.php?r=".substr($tmpUrl, 1);
                if(strlen($tmpUrl)>1){//没有下级菜单  
                    if(strcasecmp($curMenu, $value["label"])==0){//当前路由==此菜单，class=curr          
                    
        ?>
			<div class="navIteam" onclick="showsub(this)"><a href="<?php echo $url;?>" class="curr"><?php echo $value["label"];?><i class="icon_nav"></i></a><input type="hidden" value="<?php echo $subhtml?>" /></div>
	   <?php 
                    }else{                        
       ?>
            <div class="navIteam" onclick="showsub(this)"><a href="<?php echo $url;?>" <?if($value["label"] == "企业资源管理" || $value["label"] == "知识服务"):?>target="_blank"<?endif?>><?php echo $value["label"];?><i class="icon_nav"></i></a><input type="hidden" value="<?php echo $subhtml?>" /></div>
       <?php                  
                    }
                }else{//存在二级菜单，默认显示首个二级菜单
                    if(strcasecmp($curMenu, $value["label"])==0){//当前路由==此菜单，class=curr
	   ?>	   
           <div class="navIteam" onclick="showsub(this)"><a href="<?php echo $subfirst;?>" class="curr"><?php echo $value["label"];?><i class="icon_nav"></i></a><input type="hidden" value="<?php echo $subhtml?>" /></div>
        <?php
                    }else{
        ?>
            <div class="navIteam" onclick="showsub(this)"><a href="<?php echo $subfirst;?>"><?php echo $value["label"];?><i class="icon_nav"></i></a><input type="hidden" value="<?php echo $subhtml?>" /></div>
        <?php                 
                    }
                }
            }
		?>

		</div>
        
		<div class="btn-group userCenter">          
		 
		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="min-width: 156px;">
            
			<span class="icon_userFace"></span>&nbsp;&nbsp;<?= isset(Yii::$app->user->identity->username)?(Yii::$app->user->identity->username):(Yii::$app->session['userName'] ) ?> <span class="caret"></span>

		  </button>

		  <ul class="dropdown-menu" role="menu">

		    <li><a href="#">个人信息</a></li>

		    <li class="divider"></li>

		    <li><a href="#">系统设置</a></li>

		    <li class="divider"></li>

		    <li><?= Html::a(
                                    '退出登录',
                                    ['/home/out'],
                                    ['data-method' => 'post']
                                ) ?>
            </li>

		  </ul>

		   
		  
		</div>

	</div>

	<div class="subTop">
        <!-- <div class="dateTime" style="left: 20px;width:240px;"><?//=Yii::$app->session['user.company']?></div> -->

		<div class="subInner">

			<div class="subNav">
			<!-- 
			<?php 
			    /*if(isset($tmpMenu[0]["items"])){
                foreach ($tmpMenu[0]["items"] as $key=>$value){
                    $tmpUrl = $value["url"][0];
                    $url = "index.php?r=".substr($tmpUrl, 1);
                    if($key == 0){
            ?>
                <div class="subNavIteam"><a href="<?php echo $url;?>" class="curr"><?php echo $value["label"];?></a></div>
			<?php 
			         }else{
			?>
                <div class="subNavIteam"><a href="<?php echo $url;?>"><?php echo $value["label"];?></a></div>
            <?php 
			         }
                }
			    }*/
            ?> -->
            <?php echo $curhtml;?>
			</div>

		</div>

		<!-- <div class="dateTime"><?php //echo date("Y-m-d")."  ".Yii::$app->params["weekdays"][date("w")];?><?php //echo $showInfo?></div>
		<div class="dateTime"><?php //echo $dateInfo?>&nbsp;&nbsp;<?php //echo $weatherInfo?>&nbsp;&nbsp;<?php //echo $tempInfo?></div> -->

		<div class="subShaddow"></div>

	</div>

</div>
