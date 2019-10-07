/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : lucy_book

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2019-10-08 07:48:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admid` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admName` varchar(35) DEFAULT NULL COMMENT '管理员姓名',
  `admPassword` varchar(35) DEFAULT NULL COMMENT '登录密码',
  `admPor` varchar(50) DEFAULT NULL COMMENT '管理员头像',
  `admTel` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `pagesize` int(11) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  PRIMARY KEY (`admid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '谢富丽', '12345', 'Admin/images/faces/lucy.jpg', '18742507893', '4', '100');
INSERT INTO `admin` VALUES ('2', '付康', '54321', 'Admin/images/faces/karl.jpg', '17363312985', '4', '100');
INSERT INTO `admin` VALUES ('15', '李白', '123456', 'Lucy/admins/1548183650713lb.jpg', '18189876654', '4', '100');

-- ----------------------------
-- Table structure for `author`
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `autid` int(11) NOT NULL AUTO_INCREMENT COMMENT '作者ID',
  `autName` varchar(35) DEFAULT NULL COMMENT '作者姓名',
  `autSex` varchar(10) DEFAULT NULL COMMENT '性别',
  `autPlace` varchar(10) DEFAULT NULL COMMENT '作者籍贯',
  `autdate` varchar(35) DEFAULT NULL COMMENT '出生日期',
  `autPor` varchar(50) DEFAULT NULL COMMENT '作者图片',
  `autdetail` varchar(500) DEFAULT NULL COMMENT '作者的相关描述',
  PRIMARY KEY (`autid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', '余华', '男', '中国', '1960年4月3日', 'Lucy/authors/yh.jpg', '余华，1960年4月3日生于浙江杭州，当代作家。中国作家协会第九届全国委员会委员。\r\n1977年中学毕业后，进入北京鲁迅文学院进修深造。1983年开始创作，同年进入浙江省海盐县文化馆。1984年开始发表小说，《活着》和《许三观卖血记》同时入选百位批评家和文学编辑评选的九十年代最具有影响的十部作品。 1998年获意大利格林扎纳·卡佛文学奖。2005年获得中华图书特殊贡献奖。 现就职于杭州文联。');
INSERT INTO `author` VALUES ('2', '李尚龙', '男', '中国', '1990年4月18日', 'Lucy/authors/lsl.jpg', '2015年，李尚龙出版首部随笔故事集《你只是看起来很努力》，唤醒了许多还在迷茫期的年轻人。 \r\n2016年出版新作《你所谓的稳定，不过是在浪费生命》，新书预售一周，经销商订货量就高达20万册   ，迅速占据当当、京东等各大电商新书畅销榜榜首。 上市三个月，总销量超过50万册。2016年4月，获当当2015年度最具影响力作家。\r\n2018年，李尚龙出版首部长篇小说《刺》。\r\n2018年12月28日，李尚龙与陈昂、王占黑荣登中国出版集团发布的2018年中国90后作家排行榜前三，李尚龙荣获第三');
INSERT INTO `author` VALUES ('3', '村上春树', '男', '日本', '1949年1月12日', 'Lucy/authors/cscs.jpg', '村上春树，日本后现代主义作家，1949年1月12日生于京都伏见区。毕业于早稻田大学第一文学部演剧科。\r\n村上春树29岁开始写作，第一部作品《且听风吟》即获得日本群像新人奖，1987年第五部长篇小说《挪威的森林》上市至2010年在日本畅销一千万册，国内简体版到2004年销售总量786万，引起“村上现象”。\r\n其作品在世界范围内具有广泛知名度，作品风格深受欧美作家的影响，基调轻盈，少有日本战后阴郁沉重的文字气息，被称作第一个纯正的“二战后时期作家”，并被誉为日本80年代的文学旗手。');
INSERT INTO `author` VALUES ('4', '三毛', '女', '中国', '1943年3月26日', 'Lucy/authors/sm.jpg', '三毛（1943年3月26日-1991年1月4日），女，原名陈懋（mào）平（后改名为陈平），中国现代作家，浙江定海（今舟山市定海区）人。 [1-2]  1943年出生于重庆，1948年，随父母迁居台湾。1967年赴西班牙留学，后去德国、美国等。1973年定居西属撒哈拉沙漠和荷西结婚。1981年回台后，曾在文化大学任教，1984年辞去教职，而以写作、演讲为重心。\r\n1991年1月4日，三毛在医院去世，年仅四十八岁');
INSERT INTO `author` VALUES ('6', '鲁迅', '男', '中国', '1881年9月25日', 'Lucy/authors/1546960739644lx.jpg', '鲁迅一生在文学创作、文学批评、思想研究、文学史研究、翻译、美术理论引进、基础科学介绍和古籍校勘与研究等多个领域具有重大贡献。他对于五四运动以后的中国社会思想文化发展具有重大影响，蜚声世界文坛，尤其在韩国、日本思想文化领域有极其重要的地位和影响，被誉为“二十世纪东亚文化地图上占最大领土的作家”');
INSERT INTO `author` VALUES ('7', '天蚕土豆', '男', '中国', '1989年12月28日', 'Lucy/authors/1547122754590td.jpg', '天蚕土豆，本名李虎。1989年出生于四川，中国内地网络小说作家、85后著名作家、浙江省网络作家协会副主席。2008年4月，在起点中文网开始创作处女座《魔兽剑圣异界纵横》，5月，成为起点中文网签约作家之一。\r\n2009年4月，创作长篇玄幻小说《斗破苍穹》，此书在起点中文网高达1亿4千多万的点击率，凭借此书的巨大人气，天蚕土豆一书成名，成为2009年起点中文网白金作家。\r\n2014年4月，《斗破苍穹前传之药老传奇》上市之后，再次获得中国网络作家富豪榜第三名。其作品相继被改编为网游和手游，所有作品都已改编为漫画，《斗破苍穹》更是被万达改编为电影。2018年5月19日，获得第三届“橙瓜网络文学奖”名人堂奖。');
INSERT INTO `author` VALUES ('8', '萧鼎', '男', '中国', '1976年', 'Lucy/authors/1547123568847xd.jpg', '萧鼎，原名张戬，中国作家。1976年出生，福州仓山人，毕业于中华职业大学（今福建工程学院）。写作了《诛仙》，最早连载于幻剑书盟网站，影响力较大。还有小说：《暗黑之路》、《矮人之塔》、《叛逆》、《诛仙前传》、《轮回》等。2012年6月《诛仙二》正式出版，共四册，2014年5月8日宣布停止更新。2014年5月15日，在纵横中文网发表新作《戮仙》，已完结。 [1-2]  2016年新作《天影》在起点中文网开始连载, 现已完结');
INSERT INTO `author` VALUES ('9', '斯蒂芬·霍金', '男', '英国', '1942年1月8日', 'Lucy/authors/1547139089077hj.jpeg', '斯蒂芬·威廉·霍金男，出生于英国牛津，英国剑桥大学著名物理学家，现代最伟大的物理学家之一、20世纪享有国际盛誉的伟人之一。\r\n1963年，霍金21岁时患上肌肉萎缩性侧索硬化症（卢伽雷氏症），全身瘫痪，不能言语，手部只有三根手指可以活动。1979至2009年任卢卡斯数学教授，主要研究领域是宇宙论和黑洞，证明了广义相对论的奇性定理和黑洞面积定理，提出了黑洞蒸发理论和无边界的霍金宇宙模型，在统一20世纪物理学的两大基础理论——爱因斯坦创立的相对论和普朗克创立的量子力学方面走出了重要一步。获得CH（英国荣誉勋爵）、CBE（大英帝国司令勋章）、FRS（英国皇家学会会员）、FRSA（英国皇家艺术协会会员）等荣誉');
INSERT INTO `author` VALUES ('10', '爱因斯坦', '男', '德国', '1879年3月14日', 'Lucy/authors/1547139485294ayst.jpg', '阿尔伯特·爱因斯坦（Albert.Einstein，1879年3月14日—1955年4月18日），出生于德国符腾堡王国乌尔姆市，毕业于苏黎世联邦理工学院，犹太裔物理学家。\r\n爱因斯坦1879年出生于德国乌尔姆市的一个犹太人家庭（父母均为犹太人），1900年毕业于苏黎世联邦理工学院，入瑞士国籍。1905年，获苏黎世大学哲学博士学位，爱因斯坦提出光子假设，成功解释了光电效应，因此获得1921年诺贝尔物理奖，1905年创立狭义相对论。1915年创立广义相对论。1955年4月18日去世，享年76岁。阿尔伯特·爱因斯坦（Albert.Einstein，1879年3月14日—1955年4月18日），出生于德国符腾堡王国乌尔姆市，毕业于苏黎世联邦理工学院，犹太裔物理学家。\r\n爱因斯坦1879年出生于德国乌尔姆市的一个犹太人家庭（父母均为犹太人），1900年毕业于苏黎世联邦理工学院，入瑞士国籍。1905年，获苏黎世大学哲学博士学位，爱因斯坦提出光子假设，成功解释了光电效应，因此获得1921年诺贝尔物理奖，1905年创立狭义相对论。1915年创立广义相对论。1955年4月18日去世，享年76岁。');
INSERT INTO `author` VALUES ('11', '戴尔·卡耐基', '男', '美国', '1888年11月24日—1955年11月1日', 'Lucy/authors/1559614355121.jpg', '\r\n他一生结过两次婚。他的第一任夫人，是法国的一位女伯爵，1921年与他结婚，十年后离异。他的第二任夫人姚乐丝·卡耐基于1944年和他结婚，是他的门徒和事业的继承人，并给他生一女孩，取名Donna（唐娜）。\r\n1888年11月24日，戴尔·卡耐基诞生于密苏里州玛丽维尔附近的一个小市镇。父亲经营一个小小的农场。家里非常穷，吃不饱，穿不暖。由于营养不良，小卡耐基非常瘦小，却长着一对与头部不很相称的大耳朵。\r\n卡耐基上的小学校名很浪漫，叫玫瑰园，却非常简陋，只有一间教室。他在学校可不是一个听话的家伙。因为调皮捣蛋，搞恶作剧，他几次差一点被学校开除。');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '书本ID',
  `bName` varchar(35) DEFAULT NULL COMMENT '书名',
  `bPrice` double DEFAULT NULL COMMENT '单价',
  `bStore` int(11) DEFAULT NULL COMMENT '库存',
  `bPhoto` varchar(225) DEFAULT NULL COMMENT '图片',
  `bdetail` varchar(500) DEFAULT NULL COMMENT '书本描述',
  `stid` int(11) NOT NULL COMMENT '书本类型',
  `autid` int(11) NOT NULL COMMENT '作者',
  `bSales` int(11) DEFAULT NULL COMMENT '销量',
  PRIMARY KEY (`bid`),
  KEY `auti_d` (`autid`),
  KEY `sti_d` (`stid`),
  CONSTRAINT `auti_d` FOREIGN KEY (`autid`) REFERENCES `author` (`autid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sti_d` FOREIGN KEY (`stid`) REFERENCES `stort` (`stid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '《活着》', '34.5', '119', 'Lucy/books/2.jpg', '《活着》是作家余华的代表作之一，讲述了在大时代背景下，随着内战、三反五反，大跃进，文化大革命等社会变革，徐福贵的人生和家庭不断经受着苦难，到了最后所有亲人都先后离他而去，仅剩下年老的他和一头老牛相依为命。\r\n余华因这部小说于2004年3月荣获法兰西文学和艺术骑士勋章。', '3', '1', '12');
INSERT INTO `book` VALUES ('3', '《挪威的森林》', '34', '342', 'Lucy/books/5.jpg', '《挪威的森林》是日本作家村上春树于1987年所著的一部长篇爱情小说。\r\n故事讲述主角纠缠在情绪不稳定且患有精神疾病的直子和开朗活泼的小林绿子之间，展开了自我成长的旅程。\r\n自该书在日本问世，截止2012年在日本共销出1500余万册。', '1', '3', '3');
INSERT INTO `book` VALUES ('4', '《刺杀骑士团长》', '23', '95', 'Lucy/books/6.jpeg', '《刺杀骑士团长》是村上春树撰写的超现实主义小说。该书中文译本于2018年由上海译文出版社出版发行，译者是林少华。\r\n2018年2月5日，《刺杀骑士团长》中文译本启动预售，小说反思了日本侵华历史并承认南京大屠杀事件，引起中国读者关注，首印达70万册。', '1', '3', '6');
INSERT INTO `book` VALUES ('5', '《海边的卡夫卡》', '33', '120', 'Lucy/books/7.jpg', '《海边的卡夫卡》是村上春树的一部长篇小说，2003年出版。主要内容讲述的是主人公卡夫卡的成长史。\r\n《海边的卡夫卡》文本，延续了村上春树一贯的虚构的故事设定，却又深刻地投射出现实社会的影子。《海边的卡夫卡》的故事情节分两条线索展开，讲述了少年卡夫卡和老人中田隔空杀人后，不但没有得到惩戒，犯了故意杀人罪、乱伦罪、强奸罪的卡夫卡反而成为“世界上最顽强的少年”，中田也宁静地得到了解脱', '1', '3', '0');
INSERT INTO `book` VALUES ('6', '《兄弟》', '34', '110', 'Lucy/books/3.jpg', '《兄弟》是当代作家余华创作的长篇小说，共分上、下两部，于2005年8月首度出版。\r\n该小说讲述了小镇重组家庭中的两兄弟李光头和宋钢在二十世纪六七十年代和改革开放初期所经历的种种磨难。作者以荒诞手法再现历史，是为表现对六七十年代强权的批判，以及对改革开放初期民众精神生活匮乏的担忧和些许的人性关怀。 [1] \r\n2008年，小说《兄弟》获第一届法国《国际信使》外国小说奖。', '1', '1', '2');
INSERT INTO `book` VALUES ('7', '《在细雨中呼喊》', '23', '139', 'Lucy/books/15462450218201.jpg', '《在细雨中呼喊》是一本关于记忆的书，是余华发表于1991年的第一部长篇小说。它的结构来自于时间的感受，确切地说是对已知时间的感受，也就是记忆中的时间。这本书试图表达人们在面对过去时，比面对未来更有信心。因为未来充满了冒险，充满了不可战胜的神秘，只有当这些结束以后，惊奇和恐惧也就转化成了幽默和甜蜜。这就是人们为什么如此热爱回忆的理由，如同流动的河水，在不同民族的不同语言里永久而宽广地荡漾着，支撑着我们的生活和阅读。余华因这部小说于2004年3月荣获法兰西文学和艺术骑士勋章。', '3', '1', '1');
INSERT INTO `book` VALUES ('8', '《梦里花落知多少》', '45', '122', 'Lucy/books/1546247001380t.jpg', '《梦里花落知多少》是三毛的作品，主要记录了三毛在荷西死后悲痛的心情和慢慢走出阴霾的过程。全书萦绕着伤感的气氛，是三毛后期风格的一大代表。', '3', '4', '0');
INSERT INTO `book` VALUES ('9', '《撒哈拉的故事》', '55', '110', 'Lucy/books/1546282047981fg.jpg', '《撒哈拉的故事》是一系列以沙漠为背景的故事。 因为一本地理杂志的吸引，三毛背着行囊走进了荒凉单调的撒哈拉沙漠，在沙漠中寻找感受生活的真善美，书中每个故事都充溢着一种浪漫、浓情的异域情调，字里行间反映着大沙漠独有的地形地貌与风土人情。', '3', '4', '27');
INSERT INTO `book` VALUES ('10', '《万水千山走遍》', '43.5', '127', 'Lucy/books/1546347886524ppg.jpg', '《万水千山走遍》书籍，为北京出版社出版集团，北京十月文艺出版社出版社于2011年7月1日发行，作者是三毛。', '3', '4', '3');
INSERT INTO `book` VALUES ('11', '《斗破苍穹》', '32', '88', 'Lucy/books/1547122933569dpcq.jpg', '这里是属于斗气的世界，没有花俏艳丽的魔法，有的，仅仅是繁衍到巅峰 的斗气！\r\n萧炎，主人公，萧家历史上空前绝后的斗气修炼天才。4岁就开始修炼斗之气，10岁拥有了九段斗之气，11岁突破十段斗之气，一跃成为家族百年来最年轻的斗者。然而在12岁那年，他却“丧失”了修炼能力，只拥有三段斗之气。整整三年时间，家族冷落，旁人轻视，被未婚妻退婚……种种打击接踵而至。', '12', '7', '2');
INSERT INTO `book` VALUES ('12', '《武动乾坤》', '23', '232', 'Lucy/books/1547123107075wdqk.jpg', '《武动乾坤》是连载在起点中文网的一部东方玄幻小说，作者是起点白金作家天蚕土豆。小说讲述了大炎王朝天都郡炎城青阳镇，落魄的林氏子弟林动在山洞间偶然捡到一块神秘的石符而走上的逆袭之路。\r\n2017年7月12日，《2017猫片 胡润原创文学IP价值榜》发布，《武动乾坤》排名第15位', '12', '7', '0');
INSERT INTO `book` VALUES ('13', '《大主宰》', '33', '120', 'Lucy/books/1547123421261dzz.jpg', '《大主宰》是天蚕土豆在2013年创作的第四部长篇小说，于起点中文网首发，与《斗破苍穹》和《武动乾坤》有联系，讲述少年牧尘不断成长的的故事。\r\n2016年11月大主宰荣登2016中国泛娱乐指数盛典中国IP价值榜-网络文学榜top10。2017年7月12日，《2017猫片 胡润原创文学IP价值榜》发布，《大主宰》位列41位', '12', '7', '3');
INSERT INTO `book` VALUES ('14', '《诛仙》', '43', '72', 'Lucy/books/1547123676939zx.jpg', '该小说以“天地不仁，以万物为刍狗”为主题，讲述了青云山下的普通少年张小凡的成长经历以及与两位奇女子凄美的爱情故事，整部小说构思巧妙、气势恢宏，开启了一个独具魅力的东方仙侠传奇架空世界，情节跌宕起伏，人物性格鲜明，将爱情、亲情、友情与波澜壮阔的正邪搏斗、命运交战汇集在一起，文笔优美，故事生动。它与小说《飘邈之旅》、《小兵传奇》并称为“网络三大奇书”，又被称为“后金庸时代的武侠圣经”。', '12', '8', '4');
INSERT INTO `book` VALUES ('15', '《时间简史》', '55', '120', 'Lucy/books/1547139210300sjjs.jpg', '《时间简史》是英国物理学家斯蒂芬·威廉·霍金创作的科普著作，首次出版于1988年。\r\n全书共十二章，讲述了关于宇宙本性的最前沿知识，包括：我们的宇宙图像、空间和时间、膨胀的宇宙、不确定性原理、黑洞、宇宙的起源和命运等内容，深入浅出地介绍了遥远星系、黑洞、粒子、反物质等知识，并对宇宙的起源、空间和时间以及相对论等古老命题进行了阐述。 [1] \r\n在该书里，霍金探究了已有宇宙理论中存在的未解决的冲突，并指出了把量子力学、热动力学和广义相对论统一起来存在的问题，该书的定位是让那些对宇宙学有兴趣的普通读者了解他的理论和其中的数学原理。', '2', '9', '2');
INSERT INTO `book` VALUES ('16', '《果壳中的宇宙》', '44.5', '212', 'Lucy/books/1547139340864gkyz.jpg', '《果壳中的宇宙》（《the Universe in a Nutshell》）是2002年由吴忠超翻译，湖南科学技术出版社出版的图书，原作者史蒂芬·霍金。该图书曾获得安万特科学图书奖。\r\n该书围绕主题是宇宙学，涉及广义相对论、量子论、黑洞、暴胀、时间旅行、弦论、超引力等诸多前沿概念。', '2', '9', '0');
INSERT INTO `book` VALUES ('17', '《广义相对论》', '54', '111', 'Lucy/books/1547139723804gyxdl.jpg', '广义相对论（General Relativity） 描写物质间引力相互作用的理论。其基础有A.爱因斯坦于1915年完成，1916年正式发表。这一理论首次把引力场解释成时空的弯曲。', '2', '10', '0');
INSERT INTO `book` VALUES ('18', '《狭义相对论》', '34', '223', 'Lucy/books/1547139884259xyxdl.jpg', '狭义相对论（Special Theory of Relativity）是阿尔伯特·爱因斯坦在1905年发表的题为 《论动体的电动力学》一文中提出的区别于牛顿时空观的新的平直时空理论。“狭义”表示它只适用于惯性参考系。这个理论的出发点是两条基本假设：狭义相对性原理和光速不变原理。理论的核心方程式是洛伦兹变换(群）（见惯性系坐标变换）。狭义相对论预言了牛顿经典物理学所没有的一些新效应（相对论效应），如时间膨胀 、长度收缩、横向多普勒效应、质速关系、质能关系等。狭义相对论已经成为现代物理理论的基础之一：一切微观物理理论（如基本粒子理论）和宏观引力理论（如广义相对论）都满足狭义相对论的要求。这些相对论性的动力学理论已经被许多高精度实验所证实。', '2', '10', '0');
INSERT INTO `book` VALUES ('19', '《你只是看起来很努力》', '32', '314', 'Lucy/books/1547140910170kqlnl.jpg', '为什么你一直努力，却还是没有满意的成果？为什么你每天都很忙碌，却始终看不到终点？……你是真的努力了，还是，只是看起来很努力？\r\n在本书中，作者提到了很多朋友，他们有的因为父母的压力一直待在军校，有的因为和朋友爱上同一个女孩，坚持放弃了自己的爱情。有的人是在孤寂的大山之中的一面之缘，有的是教学课上的数面之交，虽是小角色，却都熠熠发光。因为他们受伤，他们坚强，他们努力，他们有勇气。', '1', '2', '15');
INSERT INTO `book` VALUES ('20', '《刺》', '34', '131', 'Lucy/books/1547196015226c.jpg', '你是否曾经遭遇校园暴力？\r\n你是否曾经遭遇职场暴力？\r\n你是否曾经遭遇网络暴力？\r\n在家长的监控死角，社会的道德盲区，法律的灰色地带\r\n谁来保护我们？\r\n在校园，在职场，在社交网络，\r\n每个人，都有可能是受害者。\r\n百万销量图书作者李尚龙，\r\n历时365天精心打磨，\r\n为校园暴力、职场暴力、网络暴力强势发声，\r\n以笔当枪，与这个世界决战 ', '1', '2', '13');
INSERT INTO `book` VALUES ('21', '人性的弱点', '32', '133', 'Lucy/books/1559614425724.jpg', '该书汇集了卡耐基的思想精华和最激动人心的内容，是作者最成功的励志经典，出版后立即获得了广大读者的欢迎，成为西方世界最持久的人文畅销书。无数读者通过阅读和实践书中介绍的各种方法，不仅走出困境，有的还成为世人仰慕的杰出人士。只要不断研读本书，相信你也可以发掘自己的无穷潜力，创造辉煌的人生。', '1', '11', '0');

-- ----------------------------
-- Table structure for `consigness`
-- ----------------------------
DROP TABLE IF EXISTS `consigness`;
CREATE TABLE `consigness` (
  `consid` int(11) NOT NULL AUTO_INCREMENT COMMENT '收货人ID',
  `consName` varchar(35) DEFAULT NULL COMMENT '收货人姓名',
  `consTel` varchar(35) DEFAULT NULL COMMENT '收货人电话',
  `consAddre` varchar(225) DEFAULT NULL COMMENT '收货人地址',
  `uid` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`consid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consigness
-- ----------------------------
INSERT INTO `consigness` VALUES ('1', '陈敏', '13576899090', '湖北省武汉市汉口北江汉大学文理学院', '1');
INSERT INTO `consigness` VALUES ('2', '鲁迅', '15826681651', '湖北省荆州市荆州区公安县的某个山沟沟里', '1');
INSERT INTO `consigness` VALUES ('3', '薛美丽 ', '134334623451', '湖北省武汉市东湖新技术开发区78号', '2');
INSERT INTO `consigness` VALUES ('4', '陈安娜', '13576899098', '湖北省武汉东湖新技术开发区关山大道589号', '2');
INSERT INTO `consigness` VALUES ('5', '李美旋', '18076565543', '上海微创有限公司(闵行区)', '3');
INSERT INTO `consigness` VALUES ('9', '黄宸', '17309763985', '湖北省武汉市汉口北江汉大学文理学院', '5');
INSERT INTO `consigness` VALUES ('10', '李一飞', '15123769985', '湖北省武汉市汉口北江汉大学文理学院', '5');
INSERT INTO `consigness` VALUES ('11', '付康', '17363312985', '湖北省武汉市汉口北江汉大学文理学院', '3');
INSERT INTO `consigness` VALUES ('13', '付康', '17363312985', '博雅高中', '2');
INSERT INTO `consigness` VALUES ('14', '刘思佳', '13477659908', '上海微创股份有限公司', '6');
INSERT INTO `consigness` VALUES ('15', '李嘉欣', '12345679767', '宇宙—银河系—地球—北京', '6');

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `detid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单细明ID',
  `bid` int(11) DEFAULT NULL COMMENT '书本信息',
  `number` int(11) DEFAULT NULL COMMENT '购买数量',
  `ordid` int(11) DEFAULT NULL COMMENT '所属订单信息',
  `money` double DEFAULT NULL COMMENT '订单总金额',
  `shoppid` int(11) DEFAULT NULL,
  PRIMARY KEY (`detid`),
  KEY `b_id` (`bid`),
  KEY `ord_id` (`ordid`),
  CONSTRAINT `ord_id` FOREIGN KEY (`ordid`) REFERENCES `orders` (`ordid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('1', '13', '3', '1', '99', '1');
INSERT INTO `detail` VALUES ('2', '14', '4', '1', '172', '2');
INSERT INTO `detail` VALUES ('6', '20', '13', '4', '442', '9');
INSERT INTO `detail` VALUES ('7', '9', '10', '4', '550', '10');
INSERT INTO `detail` VALUES ('8', '1', '11', '5', '379.5', '8');
INSERT INTO `detail` VALUES ('9', '19', '10', '5', '320', '9');
INSERT INTO `detail` VALUES ('14', '9', '17', '8', '935', '11');
INSERT INTO `detail` VALUES ('20', '6', '1', '12', '34', '7');
INSERT INTO `detail` VALUES ('21', '11', '2', '13', '64', '1');
INSERT INTO `detail` VALUES ('22', '15', '2', '13', '110', '2');
INSERT INTO `detail` VALUES ('23', '3', '3', '14', '102', '1');
INSERT INTO `detail` VALUES ('24', '4', '3', '14', '69', '2');
INSERT INTO `detail` VALUES ('25', '7', '1', '15', '23', '1');
INSERT INTO `detail` VALUES ('26', '19', '1', '15', '32', '2');
INSERT INTO `detail` VALUES ('27', '6', '1', '15', '34', '3');
INSERT INTO `detail` VALUES ('28', '4', '3', '16', '69', '1');
INSERT INTO `detail` VALUES ('29', '1', '1', '17', '34.5', '1');
INSERT INTO `detail` VALUES ('30', '19', '1', '17', '32', '2');

-- ----------------------------
-- Table structure for `notes`
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `bufid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `article1` varchar(1000) NOT NULL COMMENT '内容',
  `article2` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`bufid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('1', '那一个晚上，荷西睡去了，海潮声里，我一直在回想少年时的他，十七岁时那个大树下痴情的男孩子，十三年后在我枕畔共着呼吸的亲人。我一时里发了疯，推醒了他，轻轻地喊名字，他醒不全，我跟他说：“荷西，我爱你！” “你说什么？”他全然地骇醒了，坐了起来。 “我说，我爱你！”黑暗中为什么又是有些呜咽。\r\n“等你这句话等了那么多年，你终是说了！”“今夜告诉你了，是爱你的，爱你胜于自己的生命，荷西——” 那边不等我讲下去，孩子似地扑上来缠住我，六年的夫妻了，竟然为着这几句对话，在深夜里泪湿满颊。醒来荷西已经不见了，没有见到他吃早餐使我不安歉疚，匆匆忙忙跑去厨房看，洗净的牛奶杯里居然插着一朵清晨的鲜花。 我痴坐到快正午。这样的夜半私语，海枯石烂，为什么一日泛滥一日。是我们的缘数要到了吗？不会有的事情，只是自己太幸福了才生出的惧怕吧！', '荷西，我回来了，几个月前一袭黑衣离去，而今穿着彩衣回来，你看了欢喜吗？向你告别的时候，阳光正烈，寂寂的墓园里，只有蝉鸣的声音。 我坐在地上，在你永眠的身边，双手环住我们的十字架。 我的手指，一遍一又一遍轻轻划过你的名字——荷西·马利安·葛罗。 我一次又一次的爱抚着你，就似每一次轻轻摸着你的头发一般的依恋和温柔。 我在心里对你说——荷西，我爱你，我爱你，我爱你——这一句让你等了十三年的话，让我用残生的岁月悄悄地只讲给你一个人听吧！ 我亲吻着你的名字，一次，一次，又一次，虽然口中一直叫着“荷西安息！荷西安息！”可是我的双臂，不肯放下你。我又对你说：“荷西，你乖乖的睡，我去一趟中国就回来陪你，不要悲伤，你只是睡了！” 结婚以前，在塞哥维亚的雪地里，已经换过了心，你带去的那颗是我的，我身上的，是你。 埋下去的，是你，也是我。走了的，是我们。');
INSERT INTO `notes` VALUES ('2', '我拿出缝好的小白布口袋来，黑丝带里，系进了一握你坟上的黄土。跟我走吧，我爱的人！跟着我是否才叫真正安息呢？ 我替你再度整理了一下满瓶的鲜花，血也似的深红的玫瑰。留给你，过几日也是枯残，而我，要回中国去了，荷西，这是怎么回事，一瞬间花落人亡，荷西，为什么不告诉我，这不是真的，一切只是一场噩梦。 离去的时刻到了，我几度想放开你，又几次紧紧抱住你的名字不能放手。黄土下的你寂寞，而我，也是孤零零，为什么不能也躺在你的身边。 父母在山下巴巴地等待着我。荷西，我现在不能做什么，只有你晓得，你妻子的心，是埋在什么地方。 苍天，你不说话，对我，天地间最大的奥秘是荷西，而你，不说什么的收了回去，只让我泪眼仰望晴空。 我最后一次亲吻了你，荷西，给我勇气，放掉你大步走开吧！', '我背着你狂奔而去，跑了一大段路，忍不住停下来回首，我再度向你跑回去，扑倒在你的身上痛哭。 我爱的人，不忍留下你一个人在黑暗里，在那个地方，又到了那儿去握住你的手安睡？ 我趴在地上哭着开始挖土，让我再将十指挖出鲜血，将你挖出来，再抱你一次，抱到我们一起烂成白骨吧！那时候，我被哭泣着上来的父母带走了。我不敢挣扎，只是全身发抖，泪如血涌。最后回首的那一眼，阳光下的十字架亮着新漆。你，没有一句告别的话留给我。 那个十字架，是你背，也是我背，不到再相见的日子，我知道，我们不会肯放下。 荷西，我永生的丈夫，我守着自己的诺言千山万水的回来了，不要为我悲伤，你看我，不是穿着你生前最爱看的那件锦绣彩衣来见你了吗？');
INSERT INTO `notes` VALUES ('3', '荷西的坟就在那边，竟然举步艰难。知道你的灵魂不在那黄土下面，可是五年后，荷西，叫我怎么面对刚才看见的景象在你的身上重演？ 我静坐了很久很久，一滴泪也流不出来。 再次给自己的脸拚命去浸冷水，这才拿了油漆罐子向坟地走过去。 阳光下，没有再对荷西说，签字笔一次次填过刻着的木槽缝里——荷西·马利安·葛罗。安息。你的妻子纪念你。 将那几句话涂得全新，等它们干透了，再用小刷子开始上亮光漆。 在那个炎热的午后，花叶里，一个着彩衣的女人，一遍又一遍的漆着十字架，漆着四周的木珊。没有泪，她只是在做一个妻子的事情——照顾丈夫。', '1不要去想五年后的情景，在我的心里，荷西，你永远是活着的，一遍又一遍的跑着在回家，跑回家来看望你的妻。我靠在树下等油漆干透，然后再要涂一次，再等它干，再涂一次，涂出一个新的十字架，我们再一起掮它吧！我渴了，倦了，也困了。荷西，那么让我靠在你身边。再没有眼泪，再没有恸哭，我只是要靠着你，一如过去的年年月月。我慢慢的睡了过去，双手挂在你的脖子上。远方有什么人在轻轻的唱歌—— 记得当时年纪小 你爱谈天 我爱笑 有一回并肩坐在桃树下风在林梢鸟儿在叫 我们不知怎样睡着了不要去想五年后的情景，在我的心里，荷西，你永远是活着的，一遍又一遍的跑着在回家，跑回家来看望你的妻。我靠在树下等油漆干透，然后再要涂一次，再等它干，再涂一次，涂出一个新的十字架，我们再一起掮它吧！我渴了，倦了，也困了。荷西，那么让我靠在你身边。再没有眼泪，再没有恸哭，我只是要靠着你，一如过去的年年月月。我慢慢的睡了过去，双手挂在你的脖子上。远方有什么人在轻轻的唱歌—— 记得当时年纪小 你爱谈天 我爱笑 有一回并肩坐在桃树下风在林梢鸟儿在叫 我们不知怎样睡着了');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `uid` int(11) DEFAULT NULL COMMENT '订单发起人',
  `ordTime` varchar(225) DEFAULT NULL COMMENT '订单创建时间',
  `ordpaystate` varchar(255) DEFAULT NULL COMMENT '付款状态',
  `ordTotal` double(11,2) DEFAULT NULL COMMENT '订单价格总计',
  `ordsendstate` varchar(50) DEFAULT NULL COMMENT '发货状态',
  `userdetail` varchar(225) DEFAULT NULL COMMENT '用户备注',
  `consid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ordid`),
  KEY `u_id` (`uid`),
  CONSTRAINT `u_id` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '5', '2019年01月22日 22:31:49', '已付款', '271.00', '已发货', '我的兄die不看书会发疯，你们一定要发顺丰', '9');
INSERT INTO `orders` VALUES ('4', '3', '2019年01月22日 22:42:32', '已付款', '992.00', '已发货', '看什么看，没见过仙女买书？', '5');
INSERT INTO `orders` VALUES ('5', '2', '2019年01月31日 01:21:30', '已付款', '699.50', '已发货', '订单测试', '4');
INSERT INTO `orders` VALUES ('8', '1', '2019年02月25日 18:13:52', '已付款', '935.00', '未发货', '', '2');
INSERT INTO `orders` VALUES ('12', '5', '2019年04月25日 00:35:28', '已付款', '34.00', '未发货', '23545', '9');
INSERT INTO `orders` VALUES ('13', '3', '2019年04月25日 14:33:08', '未付款', '174.00', '未发货', '祝你幸福', '5');
INSERT INTO `orders` VALUES ('14', '2', '2019年04月27日 14:25:12', '已付款', '171.00', '已发货', '付康你好', '4');
INSERT INTO `orders` VALUES ('15', '6', '2019年05月05日 15:48:54', '已付款', '89.00', '未发货', '', '12');
INSERT INTO `orders` VALUES ('16', '6', '2019年06月04日 10:06:48', '已付款', '69.00', '已发货', '人傻钱多，买买买', '14');
INSERT INTO `orders` VALUES ('17', '6', '2019年07月25日 23:10:17', '已付款', '66.50', '未发货', 'haha', '15');

-- ----------------------------
-- Table structure for `shoppcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppcart`;
CREATE TABLE `shoppcart` (
  `shopid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  `bid` int(11) DEFAULT NULL COMMENT '书本信息',
  `uid` int(11) DEFAULT NULL,
  `state` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`shopid`),
  KEY `bid` (`bid`),
  KEY `uuid` (`uid`),
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uuid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppcart
-- ----------------------------
INSERT INTO `shoppcart` VALUES ('1', '3', '6', '未选中');
INSERT INTO `shoppcart` VALUES ('2', '20', '6', '未选中');

-- ----------------------------
-- Table structure for `stort`
-- ----------------------------
DROP TABLE IF EXISTS `stort`;
CREATE TABLE `stort` (
  `stid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `stName` varchar(35) DEFAULT NULL COMMENT '类型名',
  `isShow` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stort
-- ----------------------------
INSERT INTO `stort` VALUES ('1', '课外读物', '✔');
INSERT INTO `stort` VALUES ('2', '科普读物', '✔');
INSERT INTO `stort` VALUES ('3', '文学名著', '✔');
INSERT INTO `stort` VALUES ('12', '网络小说', '__');
INSERT INTO `stort` VALUES ('13', '悬疑恐怖', '✔');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uName` varchar(35) DEFAULT NULL COMMENT '用户名',
  `uSex` varchar(8) DEFAULT NULL COMMENT '性别',
  `uPassword` varchar(35) DEFAULT NULL COMMENT '登录密码',
  `uTel` varchar(35) DEFAULT NULL COMMENT '用户电话',
  `myCons` int(11) DEFAULT NULL COMMENT '收货人',
  `changenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '范苏东', '男', '123456', '18671765190', '13', '9');
INSERT INTO `user` VALUES ('2', '成柳', '女', '123456', '7681405591', '13', '9');
INSERT INTO `user` VALUES ('3', '谢富丽', '女', '12345', '18742507893', '11', '6');
INSERT INTO `user` VALUES ('5', '程正伟', null, '1234', '13744567789', '9', '6');
INSERT INTO `user` VALUES ('6', 'Lucy', '女', '1234', '1234567', '14', '3');
