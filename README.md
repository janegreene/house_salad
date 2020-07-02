# House Salad Base

###Refactor Exercise
To prevent sending a hash to view we made a member class to create objects out of the results.
To collect the results we made a SearchResults PORO with a member method to find members by state.
To connect to the API we made a service class, this class was refactored to have a connection method that can be reused if we want to collect more than one type of object from this API.


This repo is used as a base for the Consuming API lesson taught in Backend Module 3. To complete the lesson you will need to sign-up for an API key from the [ProPublica Congress API](https://projects.propublica.org/api-docs/congress-api/).

### Versions

Rails 5.1.7
Ruby 2.5.3

### Setup

```bash
git clone https://github.com/turingschool-examples/house-salad-base house-salad

cd house-salad

rails db:{create,migrate}
```

### Exercise

Write a test and complete this user story

*NOTE: Please use the existing form in the application.*

```
As a user
When I visit "/"
And I select "Colorado" from the dropdown
And I click on "Locate Members of the House"
Then my path should be "/search" with "state=CO" in the parameters
And I should see a message "7 Results"
And I should see a list of the 7 members of the house for Colorado
And I should see a name, role, party, and district for each member
```
