const express = require('express');
const multer  = require('multer');
const path = require('path');
const fetch = require('node-fetch');
const { fork } = require('child_process');
const app = express();

// 解析JSON请求体
app.use(express.json());

// 设置存储配置
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/') // 确保这个文件夹已经存在
    },
    filename: function (req, file, cb) {
			console.log(file);
        // cb(null, file.fieldname + '-' + Date.now()+"."+file.originalname)
				cb(null, file.fieldname + "."+file.originalname)
    }
})
const upload = multer({ storage: storage });

// 分类接口
app.get('/category/list', (req, res) => {
  // ... 其他逻辑
	var resp = {
		"code": 200,
		"msg": "success",
		"data": [
			{ "id": '0', "name": "思想政治"},
			{ "id": '1', "name": "法律法规"},
			{ "id": '2', "name": "职业道德"},
			{ "id": '3', "name": "诚信自律"}
		]
	}
	console.log(`resp:${resp}`);
  res.status(200).send(resp); // 返回200状态码和响应
});

/**
 * 视频接口
 */
// 列表
app.get('/video/list', (req, res) => {
  
	fetch("https://www.eyuyan.tv/?mod=type&ac=getalbum&topid=1&parentid=0&typeid=0&sort=0&r=0&s=0&d=0&level=&w=&st=0&album=1",{
		method: 'GET'
	})
		.then(response => response.json())
		.then(data => {
			var resData = []
			var retData = data.data
			retData.forEach((item, index) => {
				resData.push({
					"title": item.name,
					"imgUrl": "https://www.eyuyan.tv/"+item.cover,
					"duration": "02:32",
					"id": item.typeid,
					"video": "",
					"desc": ""
				})
			})
			
			var resp = {
				"code": 200,
				"msg": "success",
				"data": resData
			}
			console.log(resp);
			res.status(200).send(resp); // 返回200状态码和响应
		})
		.catch(error => console.error("Error:", error))
});
// 详情 info
app.get('/video/info', (req, res) => {
  const id = req.query.id;
	var resp = {
		"code": 200,
		"msg": "success",
		data: {
					"title": "",
					"imgUrl": "",
					"duration": "",
					"id": "",
					"video": "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
					"desc": "视频描述"
				}
	}
	console.log(`resp:${resp}`);
	res.status(200).send(resp);
});

// 设置路由和上传字段
app.post('/upload', upload.single('myFile'), (req, res) => {
    const file = req.file;
    if (!file) {
        return res.status(400).send('No file uploaded.');
    }
    res.send('File uploaded successfully.');
});

// 处理多文件上传
app.post('/uploadM', upload.array('photos', 12), function (req, res, next) {
  const files = req.files;
	console.log(files);
  if (!files) {
    res.status(400).send('No files were uploaded.');
    return;
  }
  res.send(files);
});



app.get('/getJson', (req, res) => {
  // 处理请求
  const data = req.body; // 获取请求体数据
  // ... 其他逻辑
	var resp = {
	  "name": '张三',
	  "age": 18
	}
	console.log(`resp:${resp}`);
  res.status(200).send(resp); // 返回200状态码和响应
});

app.get('/test', (req, res) => {
  // 处理请求
  const data = req.body; // 获取请求体数据
  // ... 其他逻辑
	const name = req.query.name;
	const psd = req.query.psd;
	var resp = {
	  "name": name,
	  "psd": psd
	}
	console.log(`data:${data}`);
  res.status(200).send(resp); // 返回200状态码和响应
});

// 定义POST接口
app.post('/your-endpoint', (req, res) => {
  // 处理请求
  const data = req.body; // 获取请求体数据
  // ... 其他逻辑
  var resp = {
    "name": "张三",
    "psd": '123123'
  }
	console.log(resp);
  res.status(200).send(resp); // 返回200状态码和响应
});
 
app.get('/download/:filename', (req, res) => {
  const filename = req.params.filename; // 获取请求中的文件名参数
  const filePath = path.join(__dirname, 'files', filename); // 拼接文件完整路径，假设文件存放在项目的'files'文件夹内
  res.download(filePath, filename, (err) => { // 使用res.download()方法发送文件下载请求
    if (err) {
      res.status(500).send('Oops! 文件传送出错啦.'); // 如果发生错误，发送500状态码和错误信息
    }
  });
});

// 启动服务器
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`服务器运行在 http://localhost:${PORT}`);
});