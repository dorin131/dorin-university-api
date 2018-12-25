import { Request, Response } from 'express';

export const healthCheck = (_: Request, res: Response) => {
  res.json({ status: 'Under Construction' });
};
