module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '6d2880bcaa13ce2393c1b751038943e0'),
  },
});
