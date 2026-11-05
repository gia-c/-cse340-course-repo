-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);


-- ========================================
-- Insert sample data: Organizations
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');


-- ========================================
-- Service Projects Table
-- ========================================

CREATE TABLE IF NOT EXISTS service_project (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(150) NOT NULL,
    project_date DATE NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES organization(organization_id)
);

-- ========================================
-- Imser data into Service Projects Table 
-- ========================================

INSERT INTO service_project (organization_id, title, description, location, project_date) VALUES
-- BrightFuture Builders (1)
(1, 'Community Center Repair', 'Volunteers repair walls, doors and windows at a local community center.', 'Salt Lake City, UT', '2026-12-05'),
(1, 'Playground Construction', 'Build a safe new playground for children in the neighborhood.', 'Provo, UT', '2027-01-16'),
(1, 'Home Painting for Seniors', 'Paint the exterior of homes for elderly residents.', 'Ogden, UT', '2027-02-20'),
(1, 'Wheelchair Ramp Building', 'Build ramps so people with limited mobility can enter their homes.', 'Orem, UT', '2027-03-13'),
(1, 'School Library Renovation', 'Install new shelves and paint the walls of an elementary school library.', 'Logan, UT', '2027-04-10'),
-- GreenHarvest Growers (2)
(2, 'Community Garden Planting', 'Plant vegetables in a shared garden open to all neighbors.', 'Boise, ID', '2026-12-12'),
(2, 'Food Bank Harvest Day', 'Harvest fresh produce and deliver it to the local food bank.', 'Nampa, ID', '2027-01-23'),
(2, 'Tree Planting Day', 'Plant young trees in a city park to improve air quality.', 'Meridian, ID', '2027-02-27'),
(2, 'Composting Workshop', 'Teach families how to turn kitchen waste into garden soil.', 'Idaho Falls, ID', '2027-03-20'),
(2, 'River Cleanup', 'Collect trash along the river bank and plant native grass.', 'Pocatello, ID', '2027-04-17'),
-- UnityServe Volunteers (3)
(3, 'Neighborhood Meal Service', 'Prepare and serve hot meals to families in need.', 'Phoenix, AZ', '2026-12-19'),
(3, 'Winter Clothing Drive', 'Collect and sort warm clothes for people without homes.', 'Mesa, AZ', '2027-01-09'),
(3, 'Reading Buddies', 'Volunteers read with children after school to improve literacy.', 'Tempe, AZ', '2027-02-13'),
(3, 'Senior Center Visit', 'Spend an afternoon with seniors playing games and sharing stories.', 'Chandler, AZ', '2027-03-27'),
(3, 'Community Cleanup Day', 'Clean streets and parks in the neighborhood.', 'Gilbert, AZ', '2027-05-08');