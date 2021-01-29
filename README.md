# bookmark_new

```
As a time pressed user
So that i can access my most used websites
I would like to show a list of bookmark
```

``` 
As a time pressed user
So that i can access my most used websites
I would like to add a new bookmark
```

```
As a user
So that i can remove my bookmark from my Bookmark manager
I want to delete a bookmark
```
```
As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark
```

## Domain model:

Nouns  | Property or Owner of Property
------------- | -------------
bookmarks  |  Owner of URLs

Actions  | Owned by
------------- | -------------
list_bookmarks  |  Owned by bookmarks

Actions  | Property owned or changed
------------- | -------------
list_bookmarks  |  bookmarks([URLs])

## Set up

1. connect to `psql`

2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`

3. Connect to the database using the `pqsl` command `\c bookmark_manager;`

4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

5. Run the query we have saved in the file      ``` '02_add_title_to_bookmarks.sql' ```

