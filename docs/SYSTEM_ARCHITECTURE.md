# Arquitectura inicial de MineOps Copilot

## Objetivo

Diseñar una plataforma inteligente para registrar, organizar y dar seguimiento a detenciones operacionales de equipos mineros.

## Primera versión del sistema

La primera versión tendrá cinco componentes:

1. Interfaz de usuario
2. Base de datos
3. Backend
4. Inteligencia artificial
5. Automatizaciones

## Herramientas iniciales

- Base44: pantallas, formularios y paneles.
- Supabase: base de datos, usuarios y documentos.
- FastAPI: lógica personalizada y conexión con la IA.
- OpenAI API: análisis, clasificación y resúmenes.
- n8n: alertas, correos y automatizaciones.
- GitHub: código, documentación y versiones.

## Flujo principal

1. Un usuario registra una detención.
2. La información se guarda en la base de datos.
3. El sistema revisa si faltan datos.
4. La IA genera un resumen y una clasificación sugerida.
5. Un supervisor revisa la recomendación.
6. El evento se actualiza hasta su cierre.
7. El sistema genera un traspaso de turno.

## Regla principal

La inteligencia artificial puede recomendar y preparar información, pero no debe tomar decisiones críticas sin aprobación humana.
