<?php  

		session_start();  
		require 'secoder.class.php';  //先把类包含进来，实际路径根据实际情况进行修改。    
		$vcode = new YL_Security_Secoder();      //实例化一个对象     
		$code = $_POST['code'];   
		if($vcode->check($code)== false)
		{
			echo iconv("GB2312","UTF-8",'验证码错误');
			exit;
		}			

        $username = strtoupper($_POST["account"]); 
        $psw = strtoupper($_POST["password"]);  
		$email = strtoupper($_POST["email"]);
		
		//echo 'username'.$username.'|||';
		//echo 'psw'.$psw.'|||';
		//echo 'email'.$email.'|||';
		if(strlen($username) > 16)
		{
			echo iconv("GB2312","UTF-8",'用户名太长');
			//echo 1111;
			exit; 
		}
        if($username == "" || $psw == "" || $email== "")  
        {  
			echo iconv("GB2312","UTF-8",'请确认信息完整性');
			//echo 2222;
			exit; 
        }  
        else  
        {  
                //连接数据库  
				$con = mysql_connect("localhost","root","yt03080301");
				if (!$con)
			    {
					die('Could not connect: ' . mysql_error());
			    }
				
                mysql_select_db("auth");  //选择数据库  
                mysql_query("set names 'utf8'"); //设定字符集  
                $sql = "select username from account where username = '{$username}'"; //SQL语句  
                $result = mysql_query($sql);    //执行SQL语句  
                $num = mysql_num_rows($result); //统计执行结果影响的行数  
                if($num)    //如果已经存在该用户  
                {  
					echo iconv("GB2312","UTF-8",'用户名已存在');
					exit; 
                }  
                else    //不存在当前注册用户名称  
                {   
					$str = $username.':'.$psw;
					$sha_pass_hash = strtoupper(sha1($str,FALSE));
					//echo 'str'.$str;
					//echo 'sha_pass_hash'.$sha_pass_hash;
                    $sql_insert = "insert into account (username,sha_pass_hash,email,reg_mail) values('{$username}','{$sha_pass_hash}','{$email}','{$email}')";  
                    $res_insert = mysql_query($sql_insert);  
					//echo 'sql'.$sql_insert.'|||';
                    if($res_insert)  
                    {  
                        echo 0;
						exit; 
                    }  
                    else  
                    {  
						echo iconv("GB2312","UTF-8",'系统繁忙，请稍候！');
						exit; 
                    }  
                }  
		}  
		echo iconv("GB2312","UTF-8",'不该访问到这里');
		exit; 
?>