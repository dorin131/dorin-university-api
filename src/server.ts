import config from 'config';
import express from 'express';

import { healthCheck } from './controllers/default';
import * as logger from './utils/logger';

const app = express();
const port = config.get('server.port');

app.get('/', healthCheck);

app.listen(port, () => logger.info(`Listening on port ${port}`));

logger.info(`Environment: ${config.get('environment')}`);
