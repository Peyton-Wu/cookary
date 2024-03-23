/*
MySQL Data Transfer
Source Host: localhost
Source Database: cookery_chatbot
Target Host: localhost
Target Database: cookery_chatbot
Date: 2024/3/24 1:04:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cookery_comments
-- ----------------------------
DROP TABLE IF EXISTS `cookery_comments`;
CREATE TABLE `cookery_comments` (
  `comment_id` int(255) NOT NULL,
  `like_count` int(255) DEFAULT NULL,
  `comment_date` datetime NOT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `content` varchar(625) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cookery_comments` VALUES ('1', '12600', '2024-03-23 23:25:49', 'Fat Loss Salad', 'This dish is so delicious, with a delicious flavour and aftertaste.\r\nThis dish is so delicious, with a delicious flavour and aftertaste.\r\nThis dish is so delicious, with a delicious flavour and aftertaste.\r\n');
INSERT INTO `cookery_comments` VALUES ('2', '5833', '2024-03-23 23:25:52', 'Fried Hamburger (pork)', 'The steps in this recipe are detailed and easy to follow even for beginners.');
INSERT INTO `cookery_comments` VALUES ('3', '4949', '2024-03-23 23:25:55', 'Korean tacos', 'This innovative pairing is a real eye-opener and the flavours are unique.');
INSERT INTO `cookery_comments` VALUES ('4', '385', '2024-03-23 23:25:58', 'braised common carp', 'The ingredients were all fresh and the dishes cooked were very tasty.\r\nThe ingredients were all fresh and the dishes cooked were very tasty.\r\n');
INSERT INTO `cookery_comments` VALUES ('5', '24', '2024-03-23 23:26:00', 'saute fish maw slices', 'The recipes come with clear pictures and detailed steps, making them very easy to learn and follow.');
INSERT INTO `cookery_comments` VALUES ('6', '8', '2024-03-23 23:26:04', 'saute pork in hot sauce', 'The dishes are richly layered with different surprises in every bite.\r\n');
INSERT INTO `cookery_comments` VALUES ('7', '7', '2024-03-23 23:26:06', 'Duck with noodles', 'The portion size of this dish is just right, neither wasted nor insufficient.');
INSERT INTO `cookery_comments` VALUES ('8', '12', '2024-03-23 23:26:09', 'Fried rice noodlesn', 'The ingredients are well balanced, both nutritious and tasty.\r\n');
INSERT INTO `cookery_comments` VALUES ('9', '3333', '2024-03-23 23:26:12', 'Teriyaki Noodle', 'The colour scheme of the dishes is so beautiful that it gives you an appetite just to look at them.\r\n');
INSERT INTO `cookery_comments` VALUES ('10', '455', '2024-03-23 23:26:15', 'Lobster Teriyaki Noodle', 'Some of the tips in this recipe are very useful and have made me go through the cooking process a lot less.');
INSERT INTO `cookery_comments` VALUES ('11', '667', '2024-03-23 23:26:18', 'Fat Loss Salad', 'Very useful cooking tips that allow me to cook and eat dinner half an hour earlier every day when I get home from work.');
INSERT INTO `cookery_comments` VALUES ('12', '1145', '2024-03-23 23:50:59', 'Hamburger', 'Tastes Great!');
