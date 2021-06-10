## Getting Started

```no-highlight
createdb donut_tracker
idea .
```

### List your stores

```no-highlight
As a fan of donuts
I want to see a list of different stores
so that I know where to go for my sweet fix.
```

- When a user navigates to `/stores`, they should see a list of stores.
- Each store should display it's name.
- Each name should be a link to that stores show page, `/stores/{id}`

### Store Show page

```no-highlight
As a fan of donuts
I want to see more information about the store
so I can decide if thats the store to visit today.
```

- When a user navigates to `/stores/{id}`, they should see the name and description for a store

### Create a store

```no-highlight
As a donut tracker
I want to be able to add stores
so that I can keep tabs on all the donut locations.
```

- When a user navigates to `/stores/new`, they should see a form which will allow them to add a new store.
- After submitting the form they should be redirected to `/stores`.

### List Your Donuts

```no-highlight
As a treat-lover
I want to see a listing of my favorite donuts
So that I can keep an itemized list
```

- When a user navigates to `/donuts` they should see a list of donuts

- Donuts must have a `type` (Varchar), `vegan` (boolean), and `store_id` (foreign key). They may optionally have a description (Varchar).
- A store can have many donuts, but each donut will belong to one store. (These are of course copyright recipes!)

### Update the Store show page to include donuts

```no-highlight
As a donut tracker
I want to be see which donut a store carries
so that I can decide where to go.
```

- When a user navigates to `/stores/{id}`, they should see a list of all the donuts associated with that store.
- For each donut, display it's type.

### List Your Donuts via API

```no-highlight
As a treat-lover
I want to make my donuts available via an API
So everyone knows which ones are best
```

- Create a RestController for your donuts
- visiting `/api/v1/donuts` should display a JSON of your donuts
- Use Pagination to limit the results being returned.

### Optional - Individual Donut Detail via API

```no-highlight
As a treat-lover
I want to be able to serve up a single donut
So that people can drool over each one in its own time
```

- visiting `/api/v1/donuts/{id}` should display a JSON for the donut with the matching ID
- ensure that the show endpoint has error handling and results in a 404 if the donut is not found

### Optional - Create Your Donuts via Web Form

```no-highlight
As a treat-lover
I want to be able to enter donuts via a form
To keep track of my favorite donuts
```

- Create a `@GetMapping` to show your form on `/donuts/new`
- Update the provided `donuts/new.html` form to allow users to select available stores from a drop down when adding a new donut.
- Create a `@PostMapping` to persist user input
- Saving your donut successfully redirects the user to `/donuts`
