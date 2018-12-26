import express from 'express';
import config from 'config';

import * as logger from './utils/logger';
import { healthCheck } from './controllers/default';

const app = express();
const port = config.get('server.port');

app.get('/', healthCheck);

app.listen(port, () => logger.info(`Listening on port ${port}`));

logger.info(`Environment: ${config.get('environment')}`);
