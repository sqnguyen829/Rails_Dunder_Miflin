[Steps]
0) run [ bundle install ]
    - If issue "Could not find rake-12.3.1 in any of the sources" pops up run [ bundle update --bundler ]

1) Read the README find out that the migration table needs to be updated and model ralationship needs filling out

2) migrate the tables and seed it
    - rails db:migrate
    - rails db:seed

3) Lab is pretty simple just display index and show page and have it link to one another for the dog side and on the employee side have CRU working and link it to employee's dog page

4) displaying img took a little time but there is multiple ways to tackle this
     <%= image_tag("source", {:style => "width:100px;"}) %>
     OR
     <img src="smiley.gif" alt="Smiley face" height="42" width="42">



