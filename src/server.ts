import express from 'express';

import * as logger from './utils/logger';
import { healthCheck } from './controllers/default';

const app: express.Application = express();
const port: number = 8081;

app.get('/', healthCheck);

app.listen(port, () => logger.info(`Example app listening on port ${port}`));
