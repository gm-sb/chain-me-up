![looseleaf logo](http://i1282.photobucket.com/albums/a535/bhaskaraspb/looseleaf_zpsbcea3d9b.png "looseleaf logo")

[Looseleaf](http://looseleaf.me) is an app to help you write stories collaboratively with friends. Simply start a story, share it with a few friends, and watch your story grow.

#How to use Looseleaf

If you're invited to contribute to a story, just click on the link that was emailed to you, and you will be asked to add on to the story that your friend has passed to you.

Once you add to the story, sign up for an account, in order to ask others to contribute onto your branch.

You can also start your own story from scratch by signing up for an account, and clicking on 'Create a Tree'. 

At any point, click on 'View Trees', to see all of your trees and all of the contributions that have been made on your tree.

### Potential uses

Looseleaf can also be used to create and visualize any type of content which can be built iteratively by a group of people. There's no reason to restrict it to just stories.

Some ideas that our users have shared with us:
- Creating a recipe (one person writes the first step, others write the second step, and so on)
- Writing a how-to guide
- A philosophical conversation 
- Drawing together (which would require a multimedia interface)

We'd love to hear more ideas from you!

### Clarifying language: 'Tree', 'Branch', and 'Child Trees'

'Tree' is the term we use to describe the root and all of the branches of a piece of content. Whenever a user adds to a tree, that user creates a new 'branch' on that tree. 

That new branch is now considered a 'child tree' of the parent tree, because the branch itself is actually a new tree.

#How Looseleaf works

### Models

Looseleaf is a Ruby on Rails app, built using three key models:

- `Tree` - the tree model holds all of the data of a story, and the relationship between a tree and its 'child trees'. We used MongoDB to store the trees, and the 'recursively_embeds_many' relationship offered by Mongoid (more on that below).

- `User` - our user model stores a record of all of the trees a given user has contributed to. Also, we stub out a guest user when a user clicks on a 'submit link', allowing the user to add to story without needing to log in.

- `Invitation` - the invitation represents the connection between a tree and a user who has been asked to contribute to it. The invitation model holds a unique token that maps to the tree, the specific branch they were asked to contribute to, and the user's email address. This allows us to create a guest user for the user, and authorize them to contribute to the right branch on the right tree.

###Storing a tree using MongoDB

We chose to use MongoDB to store our data because MongoDB's BSON format fit the format of our data nicely. While choosing options, there were two key constraints we had in mind:

- It should be very easy to quickly retrieve a branch along with all of its ancestors, up till the root of the tree. This operation is important because it is how we construct the history of a story, up till the point when a user is contributing to it.

- It should be very easy to quickly retrive a branch with all of its child trees, along with all of the relationships in between. This is important because a core feautre of Looseleaf is the ability to navigate a full tree. This is only possible if we can quickly pull from the database a tree's content as well as the content of all of its child trees.

We learned that the second constraint here was the more important constraint because the first constraint requires less operations than the second.

We chose to use the 'recursively_embeds_many' relationship offered by Mongoid, because it allowed us to retrieve a branch and all of its child trees with one database query.

### Interactive tree visualization using D3.js

We used D3.js to power the interactive visualization of a tree. While D3 provides some fundamental tools ot  for users to use, we built our our own 'drawTree' method which you 

### Login via Token 

When a user is invited to contribute to a story, there are two possibilities:
1) That user already has a Looseleaf account. If this is the case, they click on the link, we recognize that the token associated with that link is mapped to an email address in our system, and we log in the user.

2) The user is new to Looseleaf. In this situation, we create a new user with a 'guest = true' flag, based on the email address and log in the user.

Once the user submits a contribution, that token is destroyed, so that the link can't be shared with others, however the user remains logged in as a guest user, and always has the option of 'Finalizing an account'.

### Real-time updates of tree

We thought it would be cool to allow users to see in real-time additions that were being made to their tree. 

We built this using a recurring AJAX call that fetches new data from the server, redraws the tree from the specific branch that the user was viewing. 

#Built With

- Ruby on Rails
- MongoDB
- Mongoid
- D3.js

And many Ruby Gems, a full list of which is at [/master/Gemfile](https://github.com/gm-sb/looseleaf/blob/master/Gemfile).

#Contributors

Looseleaf was built by [George Mayer](https://github.com/georgemayer) and [Sushanth Bhaskarabhatla](https://github.com/bhaskaraspb).