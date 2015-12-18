<?php  
/** 
 * ��ȫ��֤�� 
 *  
 * ��ȫ����֤��Ҫ����֤������Ť������ת��ʹ�ò�ͬ���壬��Ӹ����� 
 * 
 * @author ��ˮ�ϴ� <cmpan(at)qq.com> 
 * @link http://labs.yulans.cn/YL_Security_Secoder 
 * @link http://wiki.yulans.cn/docs/yl/security/secoder 
 */  
class YL_Security_Secoder {  
    /** 
     * ��֤���session���±� 
     *  
     * @var string 
     */  
    //public static $seKey = 'sid.sek ey.ylans.cn';  
    public static $seKey = 'sid';  
    public static $expire = 3000;     // ��֤�����ʱ�䣨s��  
    /** 
     * ��֤����ʹ�õ��ַ���01IO���׻��������鲻�� 
     * 
     * @var string 
     */  
    public static $codeSet = '346789ABCDEFGHJKLMNPQRTUVWXY';  
    public static $fontSize = 25;     // ��֤�������С(px)  
    public static $useCurve = false;   // �Ƿ񻭻�������  
    public static $useNoise = false;   // �Ƿ�����ӵ�   
    public static $imageH = 0;        // ��֤��ͼƬ��  
    public static $imageL = 0;        // ��֤��ͼƬ��  
    public static $length = 4;        // ��֤��λ��  
    public static $bg = array(243, 251, 254);  // ����  
      
    protected static $_image = null;     // ��֤��ͼƬʵ��  
    protected static $_color = null;     // ��֤��������ɫ  
      
    /** 
     * �����֤�벢����֤���ֵ�����session�� 
     * ��֤�뱣�浽session�ĸ�ʽΪ�� $_SESSION[self::$seKey] = array('code' => '��֤��ֵ', 'time' => '��֤�봴��ʱ��'); 
     */  
    public static function entry() {  
        // ͼƬ��(px)  
        self::$imageL || self::$imageL = self::$length * self::$fontSize * 1.5 + self::$fontSize*1.5;   
        // ͼƬ��(px)  
        self::$imageH || self::$imageH = self::$fontSize * 2;  
        // ����һ�� self::$imageL x self::$imageH ��ͼ��  
        self::$_image = imagecreate(self::$imageL, self::$imageH);   
        // ���ñ���        
        imagecolorallocate(self::$_image, self::$bg[0], self::$bg[1], self::$bg[2]);   
        // ��֤�����������ɫ  
        self::$_color = imagecolorallocate(self::$_image, mt_rand(1,120), mt_rand(1,120), mt_rand(1,120));  
        // ��֤��ʹ���������   
        //$ttf = dirname(__FILE__) . '/ttfs/' . mt_rand(1, 20) . '.ttf';  4  
        $ttf = dirname(__FILE__) . '/fonts/4.ttf';    
          
        if (self::$useNoise) {  
            // ���ӵ�  
            self::_writeNoise();  
        }   
        if (self::$useCurve) {  
            // �������  
            self::_writeCurve();  
        }  
          
        // ����֤��  
        $code = array(); // ��֤��  
        $codeNX = 0; // ��֤���N���ַ�����߾�  
        for ($i = 0; $i<self::$length; $i++) {  
            $code[$i] = self::$codeSet[mt_rand(0, 27)];  
            $codeNX += mt_rand(self::$fontSize*1.2, self::$fontSize*1.6);  
            // дһ����֤���ַ�  
            imagettftext(self::$_image, self::$fontSize, mt_rand(0, 30), $codeNX, self::$fontSize*1.5, self::$_color, $ttf, $code[$i]);  
        }  
          
        // ������֤��  
        isset($_SESSION) || session_start();  
        $_SESSION[self::$seKey]['code'] = join('', $code); // ��У���뱣�浽session  
        $_SESSION[self::$seKey]['time'] = time();  // ��֤�봴��ʱ��  
                  
        header('Cache-Control: private, max-age=0, no-store, no-cache, must-revalidate');  
        header('Cache-Control: post-check=0, pre-check=0', false);        
        header('Pragma: no-cache');       
        header("content-type: image/png");  
      
        // ���ͼ��  
        imagepng(self::$_image);   
        imagedestroy(self::$_image);  
    }  
      
    /**  
     * ��һ������������һ�𹹳ɵ�������Һ���������������(����Ըĳɸ�˧�����ߺ���)  
     *       
     *      ���е���ѧ��ʽզ����������д���� 
     *      �����ͺ�������ʽ��y=Asin(��x+��)+b 
     *      ������ֵ�Ժ���ͼ���Ӱ�죺 
     *        A��������ֵ������������ѹ���ı����� 
     *        b����ʾ������Y���λ�ù�ϵ�������ƶ����루�ϼ��¼��� 
     *        �գ�����������X��λ�ù�ϵ������ƶ����루����Ҽ��� 
     *        �أ��������ڣ���С������T=2��/�O�بO�� 
     * 
     */  
    protected static function _writeCurve() {  
        $A = mt_rand(1, self::$imageH/2);                  // ���  
        $b = mt_rand(-self::$imageH/4, self::$imageH/4);   // Y�᷽��ƫ����  
        $f = mt_rand(-self::$imageH/4, self::$imageH/4);   // X�᷽��ƫ����  
        $T = mt_rand(self::$imageH*1.5, self::$imageL*2);  // ����  
        $w = (2* M_PI)/$T;  
                          
        $px1 = 0;  // ���ߺ�������ʼλ��  
        $px2 = mt_rand(self::$imageL/2, self::$imageL * 0.667);  // ���ߺ��������λ��             
        for ($px=$px1; $px<=$px2; $px=$px+ 0.9) {  
            if ($w!=0) {  
                $py = $A * sin($w*$px + $f)+ $b + self::$imageH/2;  // y = Asin(��x+��) + b  
                $i = (int) ((self::$fontSize - 6)/4);  
                while ($i > 0) {   
                    imagesetpixel(self::$_image, $px + $i, $py + $i, self::$_color);  // ���ﻭ���ص��imagettftext��imagestring����Ҫ�úܶ�                    
                    $i--;  
                }  
            }  
        }  
          
        $A = mt_rand(1, self::$imageH/2);                  // ���          
        $f = mt_rand(-self::$imageH/4, self::$imageH/4);   // X�᷽��ƫ����  
        $T = mt_rand(self::$imageH*1.5, self::$imageL*2);  // ����  
        $w = (2* M_PI)/$T;        
        $b = $py - $A * sin($w*$px + $f) - self::$imageH/2;  
        $px1 = $px2;  
        $px2 = self::$imageL;  
        for ($px=$px1; $px<=$px2; $px=$px+ 0.9) {  
            if ($w!=0) {  
                $py = $A * sin($w*$px + $f)+ $b + self::$imageH/2;  // y = Asin(��x+��) + b  
                $i = (int) ((self::$fontSize - 8)/4);  
                while ($i > 0) {           
                    imagesetpixel(self::$_image, $px + $i, $py + $i, self::$_color);  // ����(while)ѭ�������ص��imagettftext��imagestring�������Сһ�λ�����������whileѭ��������Ҫ�úܶ�      
                    $i--;  
                }  
            }  
        }  
    }  
      
    /** 
     * ���ӵ� 
     * ��ͼƬ��д��ͬ��ɫ����ĸ������ 
     */  
    protected static function _writeNoise() {  
        for($i = 0; $i < 10; $i++){  
            //�ӵ���ɫ  
            $noiseColor = imagecolorallocate(  
                              self::$_image,   
                              mt_rand(150,225),   
                              mt_rand(150,225),   
                              mt_rand(150,225)  
                          );  
            for($j = 0; $j < 5; $j++) {  
                // ���ӵ�  
                imagestring(  
                    self::$_image,  
                    5,   
                    mt_rand(-10, self::$imageL),   
                    mt_rand(-10, self::$imageH),   
                    self::$codeSet[mt_rand(0, 27)], // �ӵ��ı�Ϊ�������ĸ������  
                    $noiseColor  
                );  
            }  
        }  
    }  
      
    /** 
     * ��֤��֤���Ƿ���ȷ 
     * 
     * @param string $code �û���֤�� 
     * @param bool �û���֤���Ƿ���ȷ 
     */  
    public static function check($code) {  
        isset($_SESSION) || session_start();  
        // ��֤�벻��Ϊ��  
        if(empty($code) || empty($_SESSION[self::$seKey])) {  
            //echo $_SESSION[self::$seKey]['code'].'1';  
            return false;  
                      
        }  
        // session ����  
        if(time() - $_SESSION[self::$seKey]['time'] > self::$expire) {  
            unset($_SESSION[self::$seKey]);  
            //echo $_SESSION[self::$seKey]['code'].'2';  
            return false;  
            //return 0;  
        }  
  
//      if($code == $_SESSION[self::$seKey]['code']) {  
        if(strtoupper($code) == $_SESSION[self::$seKey]['code']) { //�����ִ�Сд�Ƚ�  
            //echo $_SESSION[self::$seKey]['code'].'3';  
            return true;          
        }  
        //echo $_SESSION[self::$seKey]['code'].'4';  
        return false;  
                  
    }  
}  
  
  
// useage  
/* 
YL_Security_Secoder::$useNoise = false;  // Ҫ����ȫ�Ļ��ĳ�true 
YL_Security_Secoder::$useCurve = true; 
YL_Security_Secoder::entry(); 
*/  
  
/* 
// ��֤��֤�� 
if (!YL_Security_Secoder::check(@$_POST['secode'])) { 
    print 'error secode'; 
} 
*/  