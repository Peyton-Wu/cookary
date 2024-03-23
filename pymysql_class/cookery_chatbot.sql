/*
MySQL Data Transfer
Source Host: localhost
Source Database: cookery_chatbot
Target Host: localhost
Target Database: cookery_chatbot
Date: 2024/3/23 22:54:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cookery_comments
-- ----------------------------
DROP TABLE IF EXISTS `cookery_comments`;
CREATE TABLE `cookery_comments` (
  `comment_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` varchar(625) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cookery_comments` VALUES ('1', 'taste great', 'This dish is so delicious, with a delicious flavour and aftertaste.\r\nThis dish is so delicious, with a delicious flavour and aftertaste.\r\nThis dish is so delicious, with a delicious flavour and aftertaste.\r\n');
INSERT INTO `cookery_comments` VALUES ('2', 'easy production', 'The steps in this recipe are detailed and easy to follow even for beginners.');
INSERT INTO `cookery_comments` VALUES ('3', 'creative and novel', 'This innovative pairing is a real eye-opener and the flavours are unique.');
INSERT INTO `cookery_comments` VALUES ('4', 'fresh ingredients ', 'The ingredients were all fresh and the dishes cooked were very tasty.\r\nThe ingredients were all fresh and the dishes cooked were very tasty.\r\n');
INSERT INTO `cookery_comments` VALUES ('5', 'easy production', 'The recipes come with clear pictures and detailed steps, making them very easy to learn and follow.');
INSERT INTO `cookery_comments` VALUES ('6', 'rich in flavour', 'The dishes are richly layered with different surprises in every bite.\r\n');
INSERT INTO `cookery_comments` VALUES ('7', 'medium-sized portions', 'The portion size of this dish is just right, neither wasted nor insufficient.');
INSERT INTO `cookery_comments` VALUES ('8', 'nutritional collocation', 'The ingredients are well balanced, both nutritious and tasty.\r\n');
INSERT INTO `cookery_comments` VALUES ('9', 'attractive look', 'The colour scheme of the dishes is so beautiful that it gives you an appetite just to look at them.\r\n');
INSERT INTO `cookery_comments` VALUES ('10', 'practicality', 'Some of the tips in this recipe are very useful and have made me go through the cooking process a lot less.');
