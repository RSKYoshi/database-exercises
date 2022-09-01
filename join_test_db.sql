USE employees;


CREATE TABLE roles (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE users (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       email VARCHAR(100) NOT NULL,
       role_id INT UNSIGNED DEFAULT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
     ('bob', 'bob@example.com', 1),
     ('joe', 'joe@example.com', 2),
     ('sally', 'sally@example.com', 3),
     ('adam', 'adam@example.com', 3),
     ('jane', 'jane@example.com', null),
     ('mike', 'mike@example.com', null);

INSERT INTO users (name,email,role_id) vAlues
    ('ryan', 'ry@aol.com', 1),
    ('kabob', 'k@aol.com', 1),
    ('satoshi', 's@aol.com', 1),
    ('bitCoinGoUpPlz', 'b@aol.com', 1);

insert into users(name,email,role_id) values
    ('ryan', 'ry@aol.com', 2),
    ('kabob', 'k@aol.com', 2),
    ('satoshi', 's@aol.com', 2),
    ('bitCoinGoUpPlz', 'b@aol.com', null);

alter table users
add unique(name, email);



# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

# join/inner-join
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# left-join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# right-join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.

SELECT roles.name as role_name, count(*)
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role_name;

