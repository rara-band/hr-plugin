<div align="center">

# Agent HR

**Los buenos equipos hacen buen trabajo. Pero los equipos pierden la forma sin que nadie lo note — Agent HR vigila tu equipo de agentes y ayuda a mantenerlo en forma.**

![status](https://img.shields.io/badge/status-early-DD8844) ![license](https://img.shields.io/badge/license-MIT-3F7D58) ![works on](https://img.shields.io/badge/works_on-Claude_%2B_Codex-5B6B7A)

![Agent HR](docs/overview.svg)

[English](README.md) · [한국어](README.ko.md) · **Español** · [中文](README.zh.md)

</div>

---

### Por qué importa RR. HH.

Una empresa es, al final, su gente. Si el equipo está mal armado — demasiada gente, muy poca, o gente en las cosas equivocadas — la empresa no funciona bien por muy bueno que sea cada uno. Por eso toda empresa tiene un **equipo de RR. HH.**: no un puesto que hace el trabajo, sino uno que vigila si *el equipo está formado para encajar con el trabajo.*

Si se le deja solo, un equipo pierde la forma en silencio:

- La gente **solo se suma, casi nunca se deja ir.** Un puesto que alguna vez importó simplemente se queda.
- **Lo que intentas hacer cambia, pero el equipo sigue igual.** La gente que necesitas y la que tienes se van separando.
- Cuanta más gente hay, **más tiempo se va solo en mantener a todos sincronizados.** Si amontonas más, se vuelve más lento, no más rápido.

Y aquí está el detalle — **nadie en el equipo se ocupa de esto.** Todos están ocupados con su propio trabajo; nadie se detiene a preguntar "¿seguimos necesitando este puesto? ¿es este el equipo correcto para hacia dónde vamos?" Y no hay una fórmula fija para la respuesta — recortar, fusionar o contratar depende de la situación.

> Así que **alguien tiene que mirar el equipo en su conjunto, un paso atrás.** Eso es RR. HH., y por eso importa — cómo está formado un equipo decide si el trabajo de verdad se hace.

**Los agentes no son distintos.** Junta un grupo de agentes para trabajar como equipo y ese equipo pierde la forma igual. Agent HR es el RR. HH. de tu equipo de agentes.

### Entonces, qué hace

Revisa tu equipo de agentes — quién está ocioso, quién está saturado, qué falta, qué puestos ya no encajan con hacia dónde vas — y **te dice qué cambiar.** Pero *tú* decides; nunca toca nada por su cuenta.

Cada sugerencia viene con **por qué lo ve así (qué registros miró) y qué puedes esperar** si actúas en consecuencia.

### Lo que promete

- **Solo sugiere.** Nunca cambia nada por sí mismo — tú decides.
- **Habla solo de lo que puede ver de verdad.** Lo que no pudo ver, lo dice.
- **No califica su propio trabajo.**
- **Lee la situación, no una fórmula.**
- **Funciona igual en Claude y Codex.**

### Pruébalo

```
/plugin marketplace add rara-band/hr-plugin
/plugin install hr-plugin@rara-band
/hr-review
```

`/hr-review` reúne los registros de tu equipo, los revisa y devuelve una nota de RR. HH. fundamentada.

### Más información

- Por qué existe · requisitos — [REQUIREMENTS.md](REQUIREMENTS.md)
- Una sola fuente de verdad — [AGENTS.md](AGENTS.md)
- El conocimiento en que se apoya — [wiki/INDEX.md](wiki/INDEX.md)

### Estado

En etapa inicial. Lo que sabe y lo que hace están definidos; ejecutarlo contra un equipo real está en progreso.

---

<div align="center">

**Licencia** · MIT — [LICENSE](LICENSE)

</div>
