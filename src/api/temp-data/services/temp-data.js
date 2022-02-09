'use strict';

/**
 * temp-data service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::temp-data.temp-data');
