SELECT * FROM dealerships;

SELECT dealership_id FROM vehicles WHERE dealership_id = ?;

SELECT vehicle_id FROM vehicles WHERE vin = ?;

SELECT dealership_id FROM vehicles
JOIN dealerships ON vehicles.dealership_id = dealerships.dealership_id WHERE vehicles.vin = ?;

SELECT DISTINCT dealership_id FROM vehicles WHERE vehicle_type = ?;

SELECT sales_information FROM sales_contracts WHERE dealership_id = ?
AND date_recorded BETWEEN ? AND ?;