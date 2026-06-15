import { defineCollection, z } from "astro:content";
import { glob } from "astro/loaders";

const publicaciones = defineCollection({
  loader: glob({ pattern: "**/*.{md,mdx}", base: "./src/content/publicaciones" }),
  schema: z.object({
    titulo: z.string(),
    bajada: z.string(),
    categoria: z.string().default("Reflexiones"),
    fecha: z.coerce.date(),
    lectura: z.string().default("5 min"),
    draft: z.boolean().default(false),
  }),
});

export const collections = { publicaciones };
