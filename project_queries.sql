SELECT project.name FROM project
  JOIN project_uses_tech ON project_uses_tech.project_id = project.id
  JOIN tech ON project_uses_tech.tech_id = tech.id
  WHERE tech.name='Javascript';