'use strict';

/**
 * config-data router.
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::config-data.config-data');
