### Challange #1: A `Place` Model

I create a controller named places, and a database schema named Place.
The index.html read all the rows in place and display them.
And has link_to show page, edit page and delete 


### Challenge #2: Let Users View Details

A show page that read from the place database, finding by the id.

### Challenge #3: Delete Places

Add a method delete to the route and set a function in PlacesController to do the deletion and redirect to the root.

### Challenge #4: Add and Edit Places

1. At the top of the index page, add a link to add a new place.  The link should navigate to `/places/new`, which must display a form for the user to fill in (title, url, price, and a description).
1. The form should target the `create` action. When the user submits the form, a new row should be added to the database, and the user should be redirected back to the `index` action to see a refreshed list that now includes their new place.
1. On the `show` page, add a link to `/places/:id/edit` which should display a form to edit the details of the place.
1. The edit form should be prefilled with data from the database, and it should trigger the `update` action when the suer clicks Submit.
1. The `update` action should update the row in the database, and redirect to `/places/:id` so the user can verify that the database has been updated.

1. In edit I add the the placeholder to be the origin datas, so it is easier to edit.