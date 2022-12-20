defmodule BlogWeb.Spotlight do
  use Phoenix.Component

  defp to_friendly(datetime) do
    datetime
    |> Date.from_iso8601()
    |> case do
      {:ok, d} ->
        case d.month do
          1 -> "January #{d.day}, #{d.year}"
          2 -> "February #{d.day}, #{d.year}"
          3 -> "March #{d.day}, #{d.year}"
          4 -> "April #{d.day}, #{d.year}"
          5 -> "May #{d.day}, #{d.year}"
          6 -> "June #{d.day}, #{d.year}"
          7 -> "July #{d.day}, #{d.year}"
          8 -> "August #{d.day}, #{d.year}"
          9 -> "September #{d.day}, #{d.year}"
          10 -> "October #{d.day}, #{d.year}"
          11 -> "November #{d.day}, #{d.year}"
          12 -> "December #{d.day}, #{d.year}"
        end

      _else ->
        d = Date.utc_today()
        "April #{d.day}, #{d.year}"
    end
  end

  def home(assigns) do
    ~H"""
    <body class="flex h-full flex-col bg-zinc-50 dark:bg-black">
      <div>
        <div class="fixed inset-0 flex justify-center sm:px-8">
          <div class="flex w-full max-w-7xl lg:px-8">
            <div class="w-full bg-white ring-1 ring-zinc-100 dark:bg-zinc-900 dark:ring-zinc-300/20">
            </div>
          </div>
        </div>
        <div class="relative">
          <main>
            <div class="sm:px-8 mt-16 sm:mt-10">
              <div class="mx-auto max-w-7xl lg:px-8">
                <div class="relative px-4 sm:px-8 lg:px-12">
                  <div class="mx-auto max-w-2xl lg:max-w-5xl">
                    <header class="max-w-2xl">
                      <h1 class="text-4xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-5xl">
                        <img
                          alt="This is a picture of me, Andrew Forward"
                          src="/images/me.jpg"
                          decoding="async"
                          class="rounded-full bg-zinc-100 object-cover dark:bg-zinc-800 h-12 w-12 inline align-middle"
                          style="color: transparent;"
                        />
                        <span class="align-middle">
                          Deliver Early; <span class="text-blue-500">Often.</span>
                        </span>
                      </h1>
                      <p class="mt-6 text-base text-zinc-600 dark:text-zinc-400">
                        Test-driven development, infrastructure as code, manage, design, development, automate and continuous everything.
                        I don't often blog, but when I do, I reach for Markdown.
                      </p>
                    </header>
                    <div class="mt-16 sm:mt-20">
                      <div class="md:border-l md:border-zinc-100 md:pl-6 md:dark:border-zinc-700/40">
                        <div class="flex max-w-3xl flex-col space-y-16">
                          <%= for article <- assigns.articles do %>
                            <.summary
                              slug={article.slug}
                              title={article.title}
                              body={article.body}
                              datetime={article.datetime}
                            />
                          <% end %>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
          <.footer />
        </div>
      </div>
    </body>
    """
  end

  def article(assigns) do
    ~H"""
    <body class="flex h-full flex-col bg-zinc-50 dark:bg-black">
      <div id="__next">
        <div class="fixed inset-0 flex justify-center sm:px-8">
          <div class="flex w-full max-w-7xl lg:px-8">
            <div class="w-full bg-white ring-1 ring-zinc-100 dark:bg-zinc-900 dark:ring-zinc-300/20">
            </div>
          </div>
        </div>
        <div class="relative">
          <main>
            <div class="sm:px-8 mt-10 lg:mt-20">
              <div class="mx-auto max-w-7xl lg:px-8">
                <div class="relative px-4 sm:px-8 lg:px-12">
                  <div class="mx-auto max-w-2xl lg:max-w-5xl">
                    <div class="xl:relative">
                      <div class="mx-auto max-w-2xl">
                        <a
                          type="button"
                          href="/"
                          aria-label="Go back to articles"
                          class="group mb-8 flex h-10 w-10 items-center justify-center rounded-full bg-white shadow-md shadow-zinc-800/5 ring-1 ring-zinc-900/5 transition dark:border dark:border-zinc-700/50 dark:bg-zinc-800 dark:ring-0 dark:ring-white/10 dark:hover:border-zinc-700 dark:hover:ring-white/20 lg:absolute lg:-left-5 lg:mb-0 lg:-mt-2 xl:-top-1.5 xl:left-0 xl:mt-0"
                        >
                          <svg
                            viewBox="0 0 16 16"
                            fill="none"
                            aria-hidden="true"
                            class="h-4 w-4 stroke-zinc-500 transition group-hover:stroke-zinc-700 dark:stroke-zinc-500 dark:group-hover:stroke-zinc-400"
                          >
                            <path
                              d="M7.25 11.25 3.75 8m0 0 3.5-3.25M3.75 8h8.5"
                              stroke-width="1.5"
                              stroke-linecap="round"
                              stroke-linejoin="round"
                            >
                            </path>
                          </svg>
                        </a>
                        <article>
                          <header class="flex flex-col">
                            <h1 class="mt-6 text-4xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-5xl">
                              <%= assigns.title %>
                            </h1>
                            <time
                              datetime="2022-09-05"
                              class="order-first flex items-center text-base text-zinc-400 dark:text-zinc-500"
                            >
                              <span class="h-4 w-0.5 rounded-full bg-zinc-200 dark:bg-zinc-500">
                              </span><span class="ml-3">September 5, 2022</span>
                            </time>
                          </header>
                          <div class="full mt-8 prose dark:prose-invert">
                            <%= Phoenix.HTML.raw(assigns.body) %>
                          </div>
                        </article>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
          <.footer />
        </div>
      </div>
    </body>
    """
  end

  def summary(assigns) do
    ~H"""
    <article class="md:grid md:grid-cols-4 md:items-baseline">
      <div class="md:col-span-3 group relative flex flex-col items-start">
        <h2 class="text-base font-semibold tracking-tight text-zinc-800 dark:text-zinc-100">
          <span class="relative z-10"><%= assigns.title %></span>
        </h2>
        <time
          class="md:hidden relative z-10 order-first mb-3 flex items-center text-sm text-zinc-400 dark:text-zinc-500 pl-3.5"
          datetime={assigns.datetime}
        >
          <span class="absolute inset-y-0 left-0 flex items-center" aria-hidden="true">
            <span class="h-4 w-0.5 rounded-full bg-zinc-200 dark:bg-zinc-500"></span>
          </span>
          <%= to_friendly(assigns.datetime) %>
        </time>
        <div class="summary">
          <%= Phoenix.HTML.raw(assigns.body) %>
        </div>
        <a
          href={"/articles/#{assigns.slug}"}
          class="relative z-10 mt-4 flex items-center text-sm font-medium text-blue-500 underline"
        >
          Read article<svg
            viewBox="0 0 16 16"
            fill="none"
            aria-hidden="true"
            class="h-4 w-4 stroke-current"
          ><path
              d="M6.75 5.75 9.25 8l-2.5 2.25"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path></svg>
        </a>
      </div>
      <time
        class="mt-1 hidden md:block relative z-10 order-first mb-3 flex items-center text-sm text-zinc-400 dark:text-zinc-500"
        datetime={assigns.datetime}
      >
        <%= to_friendly(assigns.datetime) %>
      </time>
    </article>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer class="mt-32">
      <div class="sm:px-8">
        <div class="mx-auto max-w-7xl lg:px-8">
          <div class="border-t border-zinc-100 pt-10 pb-16 dark:border-zinc-700/40">
            <div class="relative px-4 sm:px-8 lg:px-12">
              <div class="mx-auto max-w-2xl lg:max-w-5xl">
                <div class="flex flex-col items-center justify-between gap-6 sm:flex-row">
                  <div class="flex gap-2 text-sm font-medium text-zinc-800 dark:text-zinc-200">
                    <svg
                      width="32px"
                      height="32px"
                      viewBox="0 0 64 64"
                      version="1.1"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                    >
                      <g
                        id="logo_outline"
                        stroke="none"
                        stroke-width="1"
                        fill="none"
                        fill-rule="evenodd"
                      >
                        <path
                          d="M32,4.0551624 C47.463973,4.0551624 60,16.7593213 60,32.4306955 C60,44.643665 52.3864308,55.0545405 41.7068606,59.0547622 L31.8541667,32.4306955 L22.0380355,58.9577656 C11.4925306,54.8882531 4,44.5461967 4,32.4306955 C4,16.7593213 16.536027,4.0551624 32,4.0551624 Z"
                          id="Combined-Shape"
                          stroke="#781244"
                          stroke-width="8"
                        >
                        </path>
                        <rect
                          id="Rectangle"
                          fill="#781244"
                          x="27.1508908"
                          y="50.0994823"
                          width="10"
                          height="5.41164514"
                        >
                        </rect>
                        <circle
                          id="Oval"
                          stroke="#F2B726"
                          stroke-width="5"
                          fill="#FFFFFF"
                          cx="50.060985"
                          cy="14.4183656"
                          r="11"
                        >
                        </circle>
                      </g>
                    </svg>
                    <a
                      href="/"
                      class="underline text-pink-900 hover:text-pink-500"
                      style="line-height: 32px"
                    >
                      anunknown.dev
                    </a>

                    <div
                      class="pl-2 text-gray-500 hover:text-gray-800 hover:underline"
                      style="line-height: 32px"
                      href="/books"
                    >
                      Books
                    </div>

                    <a
                      class="pl-2 text-gray-500 hover:text-gray-800 hover:underline"
                      style="line-height: 32px"
                      href="/"
                    >
                      Blog
                    </a>
                  </div>
                  <p class="text-sm text-zinc-400 dark:text-zinc-500">
                    © <%= Date.utc_today().year %> Andrew Forward. All rights reserved.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    """
  end
end
