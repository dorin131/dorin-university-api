import config from 'config';
import { createLogger, format, Logger, transports } from 'winston';

const { combine, prettyPrint, timestamp, printf, colorize } = format;
const level: string = config.get('logLevel');

const myFormat = printf((info) => {
  return `${info.timestamp} ${info.level}: ${info.message}`;
});

const logger: Logger = createLogger({
  format: combine(
    colorize(),
    timestamp(),
    prettyPrint(),
    myFormat,
  ),
  transports: [
    new transports.Console({ level }),
  ],
});

export = logger;
