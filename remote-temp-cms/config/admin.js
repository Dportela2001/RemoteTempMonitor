module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'e7872bdc467faa9ca1d1fb9c313bc513'),
  },
});
