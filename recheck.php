<?php  

		session_start();  
		require 'secoder.class.php';  //�Ȱ������������ʵ��·������ʵ����������޸ġ�    
		$vcode = new YL_Security_Secoder();      //ʵ����һ������     
		$code = $_POST['code'];   
		if($vcode->check($code)== false)
		{
			echo iconv("GB2312","UTF-8",'��֤�����');
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
			echo iconv("GB2312","UTF-8",'�û���̫��');
			//echo 1111;
			exit; 
		}
        if($username == "" || $psw == "" || $email== "")  
        {  
			echo iconv("GB2312","UTF-8",'��ȷ����Ϣ������');
			//echo 2222;
			exit; 
        }  
        else  
        {  
                //�������ݿ�  
				$con = mysql_connect("localhost","root","yt03080301");
				if (!$con)
			    {
					die('Could not connect: ' . mysql_error());
			    }
				
                mysql_select_db("auth");  //ѡ�����ݿ�  
                mysql_query("set names 'utf8'"); //�趨�ַ���  
                $sql = "select username from account where username = '{$username}'"; //SQL���  
                $result = mysql_query($sql);    //ִ��SQL���  
                $num = mysql_num_rows($result); //ͳ��ִ�н��Ӱ�������  
                if($num)    //����Ѿ����ڸ��û�  
                {  
					echo iconv("GB2312","UTF-8",'�û����Ѵ���');
					exit; 
                }  
                else    //�����ڵ�ǰע���û�����  
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
						echo iconv("GB2312","UTF-8",'ϵͳ��æ�����Ժ�');
						exit; 
                    }  
                }  
		}  
		echo iconv("GB2312","UTF-8",'���÷��ʵ�����');
		exit; 
?>