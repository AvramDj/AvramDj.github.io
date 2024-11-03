import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    // Accept both Date objects and date strings
    pubDate: z.union([z.date(), z.string()]).transform((val) => new Date(val)),
    updatedDate: z.union([z.date(), z.string()]).optional().transform((str) => str ? new Date(str) : undefined),
    draft: z.boolean().default(false),
  }),
});

export const collections = { blog };