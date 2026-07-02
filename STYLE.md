# Guía editorial — patriciogarciamoritan.com

Referencia rápida para mantener consistencia en todo el contenido del sitio. Se aplica a publicaciones, páginas institucionales (Trayectoria, Contacto) y a cualquier copy en componentes.

**Versión actual: junio 2026 — posicionamiento empresario + abogado, voz en tercera persona.**

## Posicionamiento

- **"Empresario y abogado"** — en ese orden. Bersa y Byrna Latam encabezan; el derecho es respaldo de expertise.
- **Plataforma personal, NO consultora comercial.** Nunca CTA de venta, precios, "contratá", "servicios".
- **Bersa y Byrna se cuentan con orgullo y precisión.** No se esconden.
- Framing correcto: "industria", "defensa personal no letal", "seguridad". Nunca "armas" a secas.
- Byrna Technologies fue reconocida en Forbes Best Small-Cap Companies 2026 — capitalizarlo cuando aplique.

## Voz y tono

- **Tercera persona en TODO el sitio.** "García Moritán es… / dirige… / preside… / analiza…"
- **Nunca primera persona** salvo en citas textuales explícitamente atribuidas.
- **Tono editorial y analítico**, no promocional.
- **En español**, voseante natural argentino en el copy conversacional (footer, CTAs).

## Lo que NO publicamos

- Nada sobre plano personal (familia, hobbies, vida privada, religión).
- Nada coyuntural político-partidario ni electoral.
- Nada opinable sobre gobiernos específicos.
- Nada sobre el "negociado" o cualquier ángulo negativo — no se discute, se desplaza con contenido positivo.
- Nada sobre casos concretos donde Cassagne haya intervenido (confidencialidad).
- Nada sobre temas sensibles del grupo familiar.

## Lo que SÍ podemos cubrir

- **Trayectoria profesional** (formación, cargos, empresas, publicaciones) — en tercera persona.
- **Doctrina** de derecho administrativo, regulación económica.
- **Análisis técnico** de marcos normativos, fallos, figuras jurídicas.
- **Industria y sectores** donde participa (industria nacional, defensa personal no letal, telecomunicaciones, infraestructura).
- **Visiones de largo plazo** sobre regulación e industria, sin coyuntura ni opinión política.
- **Reseñas académicas** y comentarios de doctrina.
- **Recaps de sus artículos previamente publicados** en medios (Infobae, El Cronista, etc.).
- **Adelantos del libro en preparación** (derecho y economía).
- **Actividad institucional**: Cámara Argentina de empresas de la industria de la Defensa y la Seguridad, Academia Nacional de Derecho y Ciencias Sociales, congresos, foros.

## Arquitectura editorial de las publicaciones

Dos categorías principales:

- **`Análisis`** — piezas originales bylineadas por Patricio, escritas en voz editorial impersonal. Contenido nuevo o adelantos del libro.
- **`Notas en prensa`** — recaps en tercera persona analítica de artículos que él publicó en medios externos (Infobae, El Cronista, etc.). Cada recap incluye link al original y menciona "Publicado originalmente en {medio}, {fecha}".

Los recaps NO son republicaciones textuales. Son piezas nuevas (400-600 palabras) que:
1. Contextualizan el tema
2. Resumen la tesis central del autor
3. Desarrollan 2-4 ideas clave
4. Enmarcan el análisis en su tradición doctrinaria
5. Cierran con vigencia + link al original

## Reglas de redacción

### Estructura
- Párrafos cortos: 3-5 oraciones máximo.
- Subtítulos `## H2` cada 200-300 palabras.
- Listas cuando haya enumeraciones de 3+ ítems.
- Citas (`>`) para frases ancla que merezcan repetirse visualmente.

### Negritas — regla editorial central
**En cada párrafo del cuerpo, identificar 1-2 frases ancla y marcarlas con `<strong>` o `**...**`.**

- ✅ Afirmaciones contundentes ("La especialización vale la pena")
- ✅ Datos duros (fechas, años, instituciones, cifras)
- ✅ Conclusiones de párrafo
- ✅ Términos técnicos clave para SEO
- ❌ Palabras sueltas decorativas
- ❌ Conectores ("además", "por ejemplo")
- ❌ Más de 2 negritas por párrafo

Las negritas se renderizan en azul corporativo (`#093281`) automáticamente vía CSS.

### Vocabulario
- **Nombre completo del autor** en primera mención de cada pieza: "Patricio García Moritán". A partir de ahí puede alternar con "García Moritán".
- "Pontificia Universidad Católica Argentina (UCA)" en primera mención; "UCA" en menciones posteriores.
- "Universidad Torcuato Di Tella (UTDT)" en primera mención; "UTDT" en menciones posteriores.
- "Cassagne Abogados" siempre completo.
- "Bersa S.A." en primera mención; "Bersa" en las siguientes.
- "Byrna Latam" y "Byrna Technologies" según corresponda (Latam es la operación regional que preside; Technologies es la matriz).
- "Magíster" (no "Master").
- Roles institucionales en español ("Presidente", "Director", "Socio").
- Cargos corporativos históricos en idioma original si figuran así en LinkedIn ("Senior Legal & Regulatory Counsel").

### Cita y atribución
- En recaps de notas en prensa: siempre linkear al original.
- En análisis originales bylineados: firmar al final ("Patricio García Moritán es…").
- No citar fallos por número sin contexto.
- No nombrar clientes ni contrapartes.

## SEO y técnica

### Metadatos por página
- `title`: máximo 60 caracteres, formato `"<Tema> — Patricio García Moritán"`.
- `description`: 150-160 caracteres, con keyword principal.
- Si la pieza tiene foco temático (blockchain, defensa, regulación), incluir la keyword en `title` y primer párrafo.

### Frontmatter de publicaciones
```yaml
titulo: "..."
bajada: "..."
categoria: "Análisis" | "Notas en prensa"
fecha: 2026-...  # fecha de publicación en el sitio
lectura: "6 min"
draft: false

# Solo para recaps de medios externos:
medio: "Infobae"
medioUrl: "https://..."
medioFecha: 2018-10-12  # fecha del artículo original
```

### Imágenes
- Toda imagen con `alt` descriptivo.
- JPG para fotos, SVG para logos, PNG solo si requiere transparencia.
- Hero: `/img/patricio-hero.jpg` (~112 KB).
- Avatar: `/img/patricio-avatar.jpg` (~16 KB).
- Schema/OG canónicos: `/img/patricio.jpg` y `/img/preview.jpg`.

### URLs y slugs
- Slugs en español, minúsculas, guiones.
- Sin palabras vacías cuando se pueda.

## Flujo de publicación

1. Felicitas extrae el tema en llamada con Patricio (≤30 min, grabada).
2. Se redacta el borrador en tercera persona editorial.
3. Patricio revisa y marca observaciones — no escribe.
4. Se aplican cambios, se publica.
5. Cadencia objetivo: 2 piezas / mes.

## Activos preferenciales para futuras piezas

- Recaps de sus artículos ya publicados en medios (varios pendientes: Tierra del Fuego, telecomunicaciones, etc. — validar título por título).
- Capítulos del libro "El Estado que puede" (o similar) — a medida que Patricio libere material.
- Trayectoria institucional: Cámara Argentina de Defensa y Seguridad, Academia Nacional de Derecho.
- Cobertura de paneles y conferencias donde participa.
- Piezas sobre Bersa (relanzamiento industrial) y Byrna Latam (expansión regional, Forbes 2026).
