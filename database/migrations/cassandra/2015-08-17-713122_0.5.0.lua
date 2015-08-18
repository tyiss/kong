local Migration = {
  name = "2015-08-17-713122_0.5.0",

  up = function(options)
    return [[
      CREATE TABLE acl_groups(
        id uuid,
        name text,
        permissions text,
        created_at timestamp,
        PRIMARY KEY (id)
      );

      CREATE TABLE acl_roles(
        id uuid,
        api_id uuid,
        consumer_id uuid,
        group_id uuid,
        created_at timestamp,
        PRIMARY KEY (id)
      );
    ]]
  end,

  down = function(options)
    return [[
      DROP TABLE acl_groups;
      DROP TABLE acl_roles;
    ]]
  end
}

return Migration
