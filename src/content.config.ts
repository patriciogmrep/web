import { defineCollection, z } from "astro:content";
import { glob } from "astro/loaders";

const publicaciones = defineCollection({
  loader: glob({ pattern: "**/*.{md,mdx}", base: "./src/content/publicaciones" }),
  schema: z.object({
    titulo: z.string(),
    bajada: z.string(),
    categoria: z.string().default("Análisis"),
    fecha: z.coerce.date(),
    lectura: z.string().default("5 min"),
    draft: z.boolean().default(false),
    // Sigue indexable por buscadores, pero no aparece en listados visibles
    // del sitio (home cards, /publicaciones). Útil para review con Patricio
    // antes de destacarla públicamente.
    oculto: z.boolean().default(false),
    // Para notas reproducidas de medios externos
    medio: z.string().optional(),
    medioUrl: z.string().url().optional(),
    medioFecha: z.coerce.date().optional(),
  }),
});

export const collections = { publicaciones };
