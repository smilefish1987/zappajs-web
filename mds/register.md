#### 请注意:

Viva数据接口的说明:
	
	1.线上环境域名:viva.baidu.com/visdata.baidu.com
	2.测试环境域名:cp01-bdg-rp-2015q4-104.epc.baidu.com:8080
	


#### 1.用户注册接口
用于viva产品的用户的注册，以便于后面用户的登录和使用viva产品

##### 接口调用请求说明
	
	http请求方式: POST
	http://viva.baidu.com/api/register?userName=USER_NAME&password=PASSWORD
	调用示例：使用curl命令，用FORM表单格式传递数据，curl命令的具体用法请自行了解
	
##### 参数说明


| 参数 | 是否必须 | 说明 |
| ------------ | ------------- | ------------ |
| userName | 是  | 用户登录viva将使用的用户名,最长32个字符 |
| password | 是  | 用户登录viva将使用的与用户名匹配的密码，最长32个字符 |


##### 返回说明
正常情况下返回的结果为:
	
	{
    	"status": 0,
    	"info": "",
    	"data": ""
	}
	
错误情况下返回的结果为:

	{
    	"status": ErrorNO,
    	"info": "ErrorInfo",
    	"data": ""
	}

##### 错误码说明
错误码说明请参考 [全局错误码](http://#)
