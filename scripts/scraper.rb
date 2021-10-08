<%= javascript_include_tag "application" %>
<%= yield :javascript_includes %>

GET    /items        #=> index
GET    /items/1      #=> show
GET    /items/new    #=> new
GET    /items/1/edit #=> edit
PUT    /items/1      #=> update
POST   /items        #=> create
DELETE /items/1      #=> destroy
