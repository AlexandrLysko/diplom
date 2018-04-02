<?php

class ModelModuleMyModul extends Model {
	
// создаем и удаляем поля
public function createField() {
$create_field_description_seo = "ALTER TABLE `" . DB_PREFIX . "category_description` ADD `description_seo` TEXT NOT NULL AFTER  `description`";
$this->db->query($create_field_description_seo);
	
$create_field_instruction = "ALTER TABLE `" . DB_PREFIX . "product_description` ADD `instruction` TEXT NOT NULL AFTER  `description`";
$this->db->query($create_field_instruction);
	
$create_field_sert = "ALTER TABLE `" . DB_PREFIX . "product` ADD `sert` varchar(128) NOT NULL AFTER  `model`";
$this->db->query($create_field_sert);

}
	
	
public function deleteField() {
$delete_field_description_seo = "ALTER TABLE`" . DB_PREFIX . "category_description` DROP COLUMN `description_seo`";
$this->db->query($delete_field_description_seo);
	
$delete_field_instruction = "ALTER TABLE`" . DB_PREFIX . "product_description` DROP COLUMN `instruction`";
$this->db->query($delete_field_instruction);
	
$delete_field_sert = "ALTER TABLE`" . DB_PREFIX . "product` DROP COLUMN `sert`";
$this->db->query($delete_field_sert);

}
	
}
/*ini_set('display_errors', 'On');*/


?>	