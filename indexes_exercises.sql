USE employees;

# Index exercise here
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.

describe ryan.albums;
alter table albums
add unique (artist, name);

