CREATE DATABASE  IF NOT EXISTS `skincare_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `skincare_db`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: skincare_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `top_ratings_sephora`
--

DROP TABLE IF EXISTS `top_ratings_sephora`;
/*!50001 DROP VIEW IF EXISTS `top_ratings_sephora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_ratings_sephora` AS SELECT 
 1 AS `category_name`,
 1 AS `brand_name`,
 1 AS `product_name`,
 1 AS `price`,
 1 AS `avg_stars`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_brands_sephora`
--

DROP TABLE IF EXISTS `top_brands_sephora`;
/*!50001 DROP VIEW IF EXISTS `top_brands_sephora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_brands_sephora` AS SELECT 
 1 AS `brand_name`,
 1 AS `avg_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_brands_strawberrynet`
--

DROP TABLE IF EXISTS `top_brands_strawberrynet`;
/*!50001 DROP VIEW IF EXISTS `top_brands_strawberrynet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_brands_strawberrynet` AS SELECT 
 1 AS `brand_name`,
 1 AS `avg_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_ratings_strawberrynet`
--

DROP TABLE IF EXISTS `top_ratings_strawberrynet`;
/*!50001 DROP VIEW IF EXISTS `top_ratings_strawberrynet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_ratings_strawberrynet` AS SELECT 
 1 AS `category_name`,
 1 AS `brand_name`,
 1 AS `product_name`,
 1 AS `price`,
 1 AS `avg_stars`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `top_ratings_sephora`
--

/*!50001 DROP VIEW IF EXISTS `top_ratings_sephora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_ratings_sephora` AS select `c`.`category_name` AS `category_name`,`b`.`brand_name` AS `brand_name`,`p`.`product_name` AS `product_name`,`p`.`price` AS `price`,`p`.`avg_stars` AS `avg_stars` from (((`product` `p` join `brand` `b` on((`p`.`brand_id` = `b`.`id`))) join `category` `c` on((`p`.`category_id` = `c`.`id`))) join `data_source` `ds` on((`p`.`ds_id` = `ds`.`id`))) where (`ds`.`id` = 2) order by `p`.`avg_stars` desc,`c`.`category_name` limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_brands_sephora`
--

/*!50001 DROP VIEW IF EXISTS `top_brands_sephora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_brands_sephora` AS select `b`.`brand_name` AS `brand_name`,avg(`p`.`avg_stars`) AS `avg_rating` from (`product` `p` join `brand` `b` on((`p`.`brand_id` = `b`.`id`))) where (`p`.`ds_id` = 2) group by `b`.`brand_name` order by `avg_rating` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_brands_strawberrynet`
--

/*!50001 DROP VIEW IF EXISTS `top_brands_strawberrynet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_brands_strawberrynet` AS select `b`.`brand_name` AS `brand_name`,avg(`p`.`avg_stars`) AS `avg_rating` from (`product` `p` join `brand` `b` on((`p`.`brand_id` = `b`.`id`))) where (`p`.`ds_id` = 1) group by `b`.`brand_name` order by `avg_rating` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_ratings_strawberrynet`
--

/*!50001 DROP VIEW IF EXISTS `top_ratings_strawberrynet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_ratings_strawberrynet` AS select `c`.`category_name` AS `category_name`,`b`.`brand_name` AS `brand_name`,`p`.`product_name` AS `product_name`,`p`.`price` AS `price`,`p`.`avg_stars` AS `avg_stars` from (((`product` `p` join `brand` `b` on((`p`.`brand_id` = `b`.`id`))) join `category` `c` on((`p`.`category_id` = `c`.`id`))) join `data_source` `ds` on((`p`.`ds_id` = `ds`.`id`))) where (`ds`.`id` = 1) order by `p`.`avg_stars` desc,`c`.`category_name` limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21  6:06:06
