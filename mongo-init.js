db.createUser(
    {
        user: "strapi",
        pwd: "strapi123",
        roles: [
            {
                role: "readWrite",
                db: "strapi"
            },
            {
                role: "readWrite",
                db: "admin"
            }
        ]
    }
);