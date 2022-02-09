module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '349de3f8a564ddbe18b8e27ae37d7dff'),
  },
});
