[Steps]
0) run [ bundle install ]
    - If issue "Could not find rake-12.3.1 in any of the sources" pops up run [ bundle update --bundler ]

1) Read the README find out that the migration table needs to be updated and model ralationship needs filling out

2) migrate the tables and seed it
    - rails db:migrate
    - rails db:seed

3)