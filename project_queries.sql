SELECT project.name FROM project
  JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE tech.name='Javascript';

SELECT tech.name FROM tech
  JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
  JOIN project ON project_uses_tech.project_id = project.id
  WHERE project.name='Personal Website';

SELECT name FROM tech
  LEFT OUTER JOIN project_uses_tech
    ON project_uses_tech.tech_id = tech.id
    WHERE project_id IS NULL;