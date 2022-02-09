module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '3246caeea298c80fe9f5a1fb6989c686'),
  },
});
