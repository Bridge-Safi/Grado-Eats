[17:44, 08/06/2026] Khalidou: corepack enable && pnpm install --frozen-lockfile && pnpm run build
[18:28, 08/06/2026] Khalidou: FROM node:20-slim
RUN corepack enable && corepack prepare pnpm@latest --activate
WORKDIR /app
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY . .
RUN pnpm install --frozen-lockfile
EXPOSE 3000
CMD ["pnpm", "start"]
