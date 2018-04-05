-- What are all projects that use JavaScript?

SELECT project.name FROM project
  JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE tech.name='Javascript';

-- What are all technologies used by the Personal Website?

SELECT tech.name FROM tech
  JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
  JOIN project ON project_uses_tech.project_id = project.id
  WHERE project.name='Personal Website';

-- Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?

SELECT name FROM tech
  LEFT OUTER JOIN project_uses_tech
    ON project_uses_tech.tech_id = tech.id
    WHERE project_id IS NULL;

-- Based on the previous query, get the count of the number of techs used by each project.

SELECT name, count(tech_id) FROM tech
  LEFT OUTER JOIN project_uses_tech
    ON project_uses_tech.tech_id = tech.id
    GROUP BY name;

-- Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?

SELECT name FROM project
  LEFT OUTER JOIN project_uses_tech
  ON project_uses_tech.project_id = project.id
  WHERE tech_id IS NULL;

-- Based on the previous query, get the count of the number of projects that use each tech.

SELECT name, COUNT(project_id) FROM project
  LEFT OUTER JOIN project_uses_tech
  ON project_uses_tech.project_id = project.id
  GROUP BY name;

-- List all projects along with each technology used by it.

SELECT project.name, tech.name FROM project
  LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id;

-- List all the distinct techs that are used by at least one project.

SELECT DISTINCT(tech.name) FROM project
  JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  JOIN tech ON project_uses_tech.tech_id = tech.id;

-- List all the distinct techs that are not used by any projects.

SELECT DISTINCT(tech.name) FROM project
  RIGHT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  RIGHT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE project.id IS NULL;

-- List all the distinct projects that use at least one tech.

SELECT DISTINCT(project.name) FROM project
  LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE tech.id IS NOT NULL;

-- List all the distinct projects that use no tech.

SELECT DISTINCT(project.name) FROM project
  LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE tech.id IS NULL;

-- Order the projects by how many tech it uses.

SELECT DISTINCT(project.name), COUNT(tech.id) FROM project
  LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
  GROUP BY project.name ORDER BY count;

-- Order the tech by how many projects use it.

SELECT DISTINCT(tech.name), COUNT(project.id) FROM project
  RIGHT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  RIGHT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
  GROUP BY tech.name ORDER BY count;

-- What is the average number of techs used by a project?

SELECT AVG(count) FROM
  (SELECT DISTINCT(project.name), COUNT(tech.id) FROM project
    LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
    LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
    GROUP BY project.name ORDER BY count) AS avg;