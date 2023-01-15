defmodule Gen.Articles do
  def articles() do
    [
      %{
  title: "Analysing your website with Lighthouse SEO (Chrome Plugin)",
  body: """
  <p>
  Having recently <a href="/articles/new-blog-2023">re-worked by personal blog</a>,
  I recently stumbled upon
  <a href="https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk">Lighthouse</a>.
  It is geared towards <em>improving SEO</em>, but really it is does a great
  job at helping create an <em>optimized website</em> in terms of performance,
  accessibility, and bugs.</p>
  <p>
    <img src="/images/blog/website-tools/lighthouse_summary_report.png" alt="Lighthouse Summary" />
  </p>
  """,
  datetime: "2023-01-15",
  slug: "lighthouse-seo-chrome-tool"
},

%{
  title: "Analysing your website with Hubspot Website Grader",
  body: """
  <p>
  To help ensure my <a href="/articles/new-blog-2023">pesonal websites, like this blog</a>
  are optimzed for the web, I have been using <a href="https://website.grader.com/">Hubspot Website Grader®</a>.</p>
  <p>
    <img src="/images/blog/website-tools/website_grader_summary_report.png" alt="Website Grader® Summary" />
  </p>
  """,
  datetime: "2023-01-14",
  slug: "hubspot_website_grader"
},

%{
  title: "Doctor Who Doodles",
  body: """
  <p>
  Played around with some Doctor Who sketches</p>
  <p>
    <img src="/images/blog/doodles/tardises.jpg" alt="Tardises or maybe it&#39;s Tardii" />
  </p>
  """,
  datetime: "2023-01-04",
  slug: "doodle-doctorwho"
},

%{
  title: "Spacecat",
  body: """
  <p>
  Learning to draw is a slow process, but it is about the journey right!</p>
  <p>
    <img src="/images/blog/doodles/spacecat.jpg" alt="Spacecat" />
  </p>
  """,
  datetime: "2023-01-01",
  slug: "doodle-spacecat"
},

%{
  title: "A new blog for 2023",
  body: """
  <p>
  It has been 2 years since I re-worked my personal website
  <a href="https://anunknown.dev">anunknown.dev</a>, and the previous
  version was on cloud hardware and I have recently
  been using <a href="https://fly.io">fly.io</a> for small
  project development, so I decided for a re-work.</p>
  """,
  datetime: "2022-12-23",
  slug: "new-blog-2023"
},

%{
  title: "Installing Hugo with Tailwind CSS",
  body: """
  <p>
    <img src="/images/blog/hugo_and_tailwind/html.jpg" alt="Hugo and Tailwind CSS homepage" />
  </p>
  <p>
  I was experimenting with <a href="https://gohugo.io">Hugo</a>
  as a static site generator for a project.  Despite
  not going forward with that tech (we landed on GitHub
  pages), here are my notes on getting it up and runnning.</p>
  <p>
  All code is available on <a href="https://github.com/work-samples/hugo-and-tailwindcss">GitHub at /work-samples/hugo-and-tailwindcss</a></p>
  """,
  datetime: "2022-09-14",
  slug: "hugo_and_tailwind"
},

%{
  title: "Running OCAML on UOttawa VCL",
  body: """
  <p>
  Let&#39;s get up and running with <a href="https://ocaml.org">OCaml</a> and the <a href="https://orec.rdc.uottawa.ca/vcl/index.php">Ontario Reasearch
  &amp; Education VCL Cloud</a>.
  Visit the <a href="https://orec.rdc.uottawa.ca/vcl/index.php">VCL Cloud</a> and
  create a new reservation for <code class="inline">CentOS7Basev3_EmacsOpam</code>.  Once
  ready, then you can SSH into your devbox and access OCaml.</p>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/06_login_instructions.jpg" alt="Login Instructions" />
  </p>
  """,
  datetime: "2020-08-30",
  slug: "ocaml-and-vcl-cloud"
},

%{
  title: "Configure VS Code to run OCAML a Mac OSX",
  body: """
  <p>
  Let&#39;s get up and running with OCaml and VS Code on a Mac.</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/vscode_ocaml.jpg" alt="VS Code up and running with OCaml" />
  </p>
  """,
  datetime: "2020-08-30",
  slug: "ocaml-and-vscode"
},

%{
  title: "Automating 1Password CLI with --session",
  body: """
  <p>
  In a <a href="/articles/1password-bootstrap">our previous post</a>, we looked
  at generating a 1password session without requiring user input.
  Today we will look at generating a <em>one-time</em> (30-minute) token
  on your local machine and only sharing that with your build servers.</p>
  <pre><code class="bash language-bash">op get item db_password --session $(cat opsession)</code></pre>
  """,
  datetime: "2020-08-28",
  slug: "1password-sessions"
},

%{
  title: "Bootstrapping 1Password CLI using Expect",
  body: """
  <p>
  Did you know <a href="https://support.1password.com/command-line-getting-started/">1Password has a CLI tool</a>? In this article we will write a <a href="https://linux.die.net/man/1/expect">small script using expect</a> called <code class="inline">opsession</code> to better manage secrets in our automation pipeline.  Using <code class="inline">opsession</code> you can then use 1password <code class="inline">op</code> commands like</p>
  <pre><code class="bash language-bash">op get item db_password --session $(opsession)</code></pre>
  <p>
  Without having any user intervention.</p>
  """,
  datetime: "2020-08-27",
  slug: "1password-bootstrap"
},

%{
  title: "Verifying .pkg files on a Mac (using Go)",
  body: """
  <p>
  I have been looking at using <a href="https://support.1password.com/command-line-getting-started/">1Password&#39;s CLI tool</a> to better manage secrets on the terminal.  1Password
  <a href="https://support.1password.com/verify-command-line/">strongly recommends you verify your download</a>.</p>
  <p>
    <img src="/images/blog/shapkgsum-verify-mac-packages/mac-verify-fingerprint.jpg" alt="Verify Mac Package fingerprint" />
  </p>
  <p>
  I decided to write a small <a href="https://github.com/aforward/shapkgsum">shapkgsum</a> script in <a href="https://golang.org">golang</a> to make that verification easier to automate. </p>
  """,
  datetime: "2020-08-22",
  slug: "shapkgsum-verify-mac-packages"
},

%{
  title: "I don't like the name *unit tests*.",
  body: """
  <p>
  I think it leads to arguing along the lines of <em>hey this isn&#39;t a unit test</em>.</p>
  <p>
  I prefer to focus on three qualities of good automated tests</p>
  <ul>
    <li>
  Fast (or non-slow)  </li>
    <li>
  Sturdy (or non-brittle)  </li>
    <li>
  Isolated (or non-coupled)  </li>
  </ul>
  """,
  datetime: "2020-07-10",
  slug: "fast-isolated-nonbrittle"
},

%{
  title: "Generating Globally Unique IDs",
  body: """
  <p>
  Imagine you are building a system to assign unique numbers to each
  resource that you manage. You want the IDs to be guaranteed unique
  i.e. no UUIDs.  Since these ids are globally unique, each id can
  only be given out at most once.</p>
  <p>
  Here is a summary of my solution.</p>
  <pre><code class="elixir language-elixir">def handle_call(:get_id, _from, %{node_id: node_id, counter: counter} = state) do
    &lt;&lt;id::size(64)&gt;&gt; = &lt;&lt;node_id::10, timestamp()::47, counter::7&gt;&gt;
    {:reply, id, %{state | counter: counter + 1}}
  end</code></pre>
  """,
  datetime: "2020-05-26",
  slug: "generating-global-ids"
},

%{
  title: "git rebase -i HEAD\~25",
  body: """
  <p>
  <a href="https://www.youtube.com/watch?v=V53cpDt2dr0">  <img src="https://img.youtube.com/vi/V53cpDt2dr0/0.jpg" alt="Andrew Forward&#39;s talk on git rebase -i HEAD~25 at WebCamp Zagreb" />
  </a></p>
  <p>
  <a href="https://2019.webcampzg.org/talks/git-rebase-i-head25/">WebCamp Zagreb 2019</a> was great.
  Here&#39;s areview of my talk on time travel and git rebase.</p>
  <p>
  Thank you to the organizing committee of Web Camp Zagreb, everything was amazing.</p>
  """,
  datetime: "2019-10-11",
  slug: "git-rebase-webcampzg"
},

%{
  title: "The Code I Didn't Write",
  body: """
  <p>
  I enjoy reading job listings.  There&#39;s the &quot;what&#39;s trending&quot;
  angle to see the types of skills that appear to be in bemand.
  There&#39;s the pyschological angle where we as the reader
  get a peak at what a company values (or doesn&#39;t value) when
  it comes to hiring and employees.</p>
  """,
  datetime: "2019-07-06",
  slug: "the-code-i-didnt-write"
},

%{
  title: "Installing Packer For Image Creation",
  body: """
  <p>
  After you install <a href="https://golang.org/">Golang</a>, it&#39;s
  easy to <a href="https://www.packer.io/intro/getting-started/install.html#compiling-from-source">install Packer from source</a>.</p>
  <pre><code class="bash language-bash">mkdir -p ~/src &amp;&amp; \\
    cd ~/src &amp;&amp; \\
    git clone https://github.com/hashicorp/packer.git &amp;&amp; \\
    cd packer &amp;&amp; \\
    make dev</code></pre>
  """,
  datetime: "2019-07-03",
  slug: "installing-packer-for-image-creation"
},

%{
  title: "LiveView Talk at Empex 2019",
  body: """
  <p>
  My talk at <a href="https://empex.co">Empex 2019</a> is Live(View).  Click on
  <a href="/articles/empex-2019-liveview">Read More</a> to get the links to
  related articles and GitHub Repos.</p>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=KvvkWiECvjY">  <img src="https://img.youtube.com/vi/KvvkWiECvjY/0.jpg" alt="Andrew Forward&#39;s talk on LiveView at Empex 2019" />
  </a></p>
  """,
  datetime: "2019-07-02",
  slug: "empex-2019-liveview"
},

%{
  title: "Connecting to AWS using SAML",
  body: """
  <p>
  In this article we will connect to our AWS account using SAML, this will allow us to run
  AWS CLI commands using the same authentication as you use in the browser.</p>
  <p>
  Once complete, you will be able to run</p>
  <pre><code class="bash language-bash">saml2aws login -a 10xdev</code></pre>
  <p>
  An and then have a (configurable) 12 hour session to from the command line.</p>
  """,
  datetime: "2019-05-30",
  slug: "connecting-to-aws-using-saml"
},

%{
  title: "Phoenix LiveView Examples",
  body: """
  <p>
  <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a>
  for <a href="https://github.com/phoenixframework/phoenix">Phoenix</a> on <a href="https://github.com/elixir-lang/elixir">Elixir</a> is definitely scratching an itch
  in the world of rich client apps, without having to go full-on
  client-side framework.  Here&#39;s a list of open
  source projects, some with online demos and other where you can
  (easily) run the code locally.</p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  Screenshot      </th>
        <th style="text-align: left;">
  Description      </th>
        <th style="text-align: left;">
  References      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/empexdisplay.jpg" alt="Empex Display" />
        </td>
        <td style="text-align: left;">
  Manipulating a SVG graphic for the 2019 <a href="https://empex.co/nyc.html">Empex NY conference</a>      </td>
        <td style="text-align: left;">
  <a href="/demo/empex">Empex SVG Demo</a> &lt;br&gt; <a href="https://github.com/empex2019liveview/empexlogo">Empex SVG Source</a>      </td>
      </tr>
    </tbody>
  </table>
  """,
  datetime: "2019-05-29",
  slug: "liveview-examples"
},

%{
  title: "HackerRank Template in Elixir",
  body: """
  <p>
  Here&#39;s a template for answering HackerRank in Elixir.  This is
  based on the <a href="https://www.hackerrank.com/challenges/two-characters/problem">Two Character</a>
  question</p>
  <pre><code class="elixir language-elixir">defmodule Solution do
    def go() do
      num = input(:int)
      text = input(:string)
      IO.puts(&quot;INPUTS \#{num} and \#{text}&quot;)
    end
  
    def input(:string), do: IO.read(:line) |&gt; String.trim()
    def input(:int), do: input(:string) |&gt; String.to_integer()
  end
  
  # Now run your code
  Solution.go()</code></pre>
  <p>
  Now go forth and HackerRank!!!</p>
  """,
  datetime: "2019-05-27",
  slug: "hackerrank-for-elixir"
},

%{
  title: "Getting Started With ChefDK",
  body: """
  <p>
  I am getting back into <a href="https://www.chef.io/">Chef</a>, and the landscape
  seems to have changed quite a bit in the last 10 years.  I am going
  to documenting the journey in a series of bite sized articles.</p>
  <p>
  <a href="https://docs.chef.io/install_dk.html">Official install docs</a> are here.
  So follow them, and read along.</p>
  """,
  datetime: "2019-05-22",
  slug: "installing-chefdk-on-mac"
},

%{
  title: "LiveView storing Session Data on Redirect",
  body: """
  <p>
  This article is based on a very early version of LiveView and
  is here for historical purposes only.</p>
  <p>
  How can you have your LiveView login form update the user&#39;s
  session across pages?</p>
  <p>
    <img src="/images/blog/from-sockets-to-sessions-with-liveview/flash_user.jpg" alt="Adding authenticated user to flash" />
  </p>
  """,
  datetime: "2019-05-21",
  slug: "from-sockets-to-sessions-with-liveview"
},

%{
  title: "Run Custom JS on LivePage Reload",
  body: """
  <p>
  This article is based on a very early version of LiveView and is no longer
  the right way to run Custom JS code.</p>
  <p>
  In your LiveView LEEX, you can add a <code class="inline">script</code> tag and append a <code class="inline">@tick</code> to the <code class="inline">id</code>.
  This will force for the MorphDOM differ to always re-render (aka re-run) that code on the client.</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/script_id_with_tick.jpg" alt="Create a script with tick ID" />
  </p>
  """,
  datetime: "2019-05-20",
  slug: "executing-custom-javascript-with-liveview"
},

%{
  title: "Falco \"From 0% to 100% tested code\"",
  body: """
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=wp6oSVDdbXQ">  <img src="https://img.youtube.com/vi/wp6oSVDdbXQ/0.jpg" alt="Highlights of Llewellyn Falco - From 0% to Cleanly Refactored 100% tested code" />
  </a></p>
  <p>
  Gives you some legacy code to practice.</p>
  <p>
  The video goes through the <a href="https://github.com/emilybache/GildedRose-Refactoring-Kata">Gilded Rose Kata</a> to add the following feature.</p>
  """,
  datetime: "2019-05-15",
  slug: "llewellyn-falco-from-0-to-100-tested-code"
},

%{
  title: "Kent Beck's \"Beauty In Code\"",
  body: """
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=tM1iOJsR7p4">  <img alt="Highlights of Kent Beck&#39;s &#39;Beauty In Code&#39;" class="w-full" src="https://img.youtube.com/vi/tM1iOJsR7p4/0.jpg" />
  </a></p>
  <p>
  We are first teased that the talk was intended to be about &quot;the use of symmetry in coding&quot;, as I believe symmetry is a great way to help drive you towards cohesion and aligning the abstractions.</p>
  """,
  datetime: "2018-05-31",
  slug: "kent-beck-beauty-in-code"
},

%{
  title: "Oh, the API Clients You'll Build (in Elixir)",
  body: """
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/oh_the_apis.jpg" alt="Oh, the API Clients You&#39;ll Build (in Elixir)" />
  </p>
  <p>
  Today we are going explore how to write API clients in the <a href="https://elixir-lang.org">Elixir</a> language. This is a follow-up article to my presentation at OpenCamps 2017.</p>
  """,
  datetime: "2017-11-27",
  slug: "oh-the-apis-opencamps-2017"
},

%{
  title: "Yet Another Digital Ocean API client in Elixir",
  body: """
  <p>
  Want to automate your infrastructure leveraging the awesome <a href="https://developers.digitalocean.com/documentation/v2/">Digital Ocean API V2</a>, then the shell is your friend. Here we will learn about how to access the API from the command line using Elixir&#39;s <a href="https://hexdocs.pm/mix/master/Mix.Tasks.Escript.Build.html">Escript</a> tooling.</p>
  <p>
    <img src="/images/blog/doex/doex_on_hex.jpg" alt="doex API for digital ocean on hex" />
  </p>
  """,
  datetime: "2017-07-28",
  slug: "doex-elixir-api-for-digital-ocean"
},

%{
  title: "Setting up Mailgun on Digital Ocean",
  body: """
  <p>
  Not having to manage an email server is awesome, thank you <a href="https://www.mailgun.com">Mailgun</a>. I am currently integrating with <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> and ran into some documentation confusion with DNS records, especially when trying to configure for a subdomain.</p>
  <p>
  This article combines a few sources to <em>finally</em> get a working
  solution for sending/receiving emails on <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>
  via <a href="https://www.mailgun.com">Mailgun</a>.</p>
  """,
  datetime: "2015-12-03",
  slug: "mailgun-on-digital-ocean"
},

%{
  title: "Continuous Testing with Elixir",
  body: """
  <p>
  There is great power in having your tests always run, all the time when writing code, it stops the minor interruptions.</p>
  <pre><code class="bash language-bash">$ mix test.watch
  
  Running tests...
  ..................................................
  ..................................................
  ....
  Finished in 0.04 seconds (0.04s on load, 0.00s on tests)
  104 tests, 0 failures
  Randomized with seed 386800</code></pre>
  """,
  datetime: "2015-12-02",
  slug: "continuous-testing-with-elixir"
},

%{
  title: "Simple encryption in Elixir",
  body: """
  <p>
  Of course you don&#39;t know anyone that actually stores user passwords in plaintext, or database passwords directly in a repository, so this is more for those theoretical developers to provide them with just a little bit more security; without adding much more complexity.</p>
  <pre><code class="elixir language-elixir"># Encrypt a password and store it in pwd
  iex&gt; pwd = Safetybox.encrypt(&quot;helloworld&quot;)
  &quot;fc5e038d38a57032085441e7fe7010b0&quot;
  
  # Later on, you can validate the user provided password
  # against the encrypted stored password
  # Oopses, not the same
  iex&gt; Safetybox.is_decrypted(&quot;goodbyeworld&quot;, pwd)
  false
  
  # Ok, validated!
  iex&gt; Safetybox.is_decrypted(&quot;helloworld&quot;, pwd)
  true</code></pre>
  """,
  datetime: "2015-10-24",
  slug: "safetybox"
},

%{
  title: "A simple web crawler in Golang",
  body: """
  <p>
  An exploration of the Go language (golang) to build a simple webcrawler, all code is available on <a href="https://github.com/aforward/webl">Github</a>. This application was written as an exploration of the language and demonstration of the various features of the language; it is not feature complete but should be complex enough to provide some examples of using Go&#39;s various concurrent features, tied together in a simple command line and web interface.</p>
  <p>
    <img src="/images/blog/webl/list.jpg" alt="List" />
  </p>
  """,
  datetime: "2014-06-07",
  slug: "webl"
},

    ]
  end

  def article("lighthouse-seo-chrome-tool") do
  """
  <p>
  Having recently <a href="/articles/new-blog-2023">re-worked by personal blog</a>,
  I recently stumbled upon
  <a href="https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk">Lighthouse</a>.
  It is geared towards <em>improving SEO</em>, but really it is does a great
  job at helping create an <em>optimized website</em> in terms of performance,
  accessibility, and bugs.</p>
  <p>
  A snapshot report for <a href="https://anunknown.dev">anunknown.dev</a> is shown below
  <a href="https://googlechrome.github.io/lighthouse/viewer/?psiurl=https%3A%2F%2Fanunknown.dev%2F&strategy=mobile&category=performance&category=accessibility&category=best-practices&category=seo&category=pwa&utm_source=lh-chrome-ext">click here to generate a new report</a>.</p>
  <p>
    <img src="/images/blog/website-tools/lighthouse_full_report.png" alt="Lighthouse Report" />
  </p>
  <p>
  <a href="https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk">From the plugin itself</a>
  is an open-source, automated tool for improving the performance, quality, and correctness of your web apps.</p>
  <p>
  When auditing a page, Lighthouse runs a barrage of tests against the page, and then generates a report on how well the page did. From here you can use the failing tests as indicators on what you can do to improve your app.</p>
  <ul>
    <li>
  <a href="https://developers.google.com/web/tools/lighthouse/">Quick-start guide on using Lighthouse</a>  </li>
    <li>
  <a href="https://googlechrome.github.io/lighthouse/viewer/">View and share reports online</a>  </li>
    <li>
  <a href="https://github.com/GoogleChrome/lighthouse">Github source and details</a>  </li>
  </ul>
  <p>
  But even at 100%, there are always opportunities for improvements.</p>
  <p>
    <img src="/images/blog/website-tools/lighthouse_diagnostics.png" alt="Lighthouse diagnostics" />
  </p>
  """
end
def article("hubspot_website_grader") do
  """
  <p>
  A snapshot report for <a href="https://anunknown.dev">anunknown.dev</a> is shown below
  <a href="https://website.grader.com/tests/anunknown.dev">click here to generate a new report</a>.</p>
  <p>
    <img src="/images/blog/website-tools/website_grader_summary_report.png" alt="Website Grader® Summary" />
  </p>
  <p>
  I recently fix an issue on mobile where the width was not correcltly
  limitedo the screen width (and would &quot;overhang&quot; allowing a scroll right,
  that I did not want).</p>
  <p>
  Still some work to do, as summarized below.</p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  Category      </th>
        <th style="text-align: left;">
  Performance      </th>
        <th style="text-align: left;">
  Current      </th>
        <th style="text-align: left;">
  Recommendation      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
  Performance      </td>
        <td style="text-align: left;">
  Image Size      </td>
        <td style="text-align: left;">
  No      </td>
        <td style="text-align: left;">
  Yes. Use responsive images or SVGs to optimize your images for different screen sizes.      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  SEO      </td>
        <td style="text-align: left;">
  Descriptive Link Text      </td>
        <td style="text-align: left;">
  No      </td>
        <td style="text-align: left;">
  Yes. Use descriptive link text that tells visitors what they&#39;ll see if they click the link.      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  Mobile      </td>
        <td style="text-align: left;">
  Tap Targets      </td>
        <td style="text-align: left;">
  No      </td>
        <td style="text-align: left;">
  Yes. Tap targets (e.g., links and buttons) should be at least 8px apart from each other, and at least 48px wide and 48px tall so they are clickable for mobile users.      </td>
      </tr>
    </tbody>
  </table>
  """
end
def article("doodle-doctorwho") do
  """
  <p>
  Huge Doctor Who fan, and working through a few sketches.</p>
  <p>
    <img src="/images/blog/doodles/tardises.jpg" alt="Tardises or maybe it&#39;s Tardii" />
  
    <img src="/images/blog/doodles/dalek.jpg" alt="Dalek" />
  
    <img src="/images/blog/doodles/weepingangle1.jpg" alt="Weeping Angle 1" />
  
    <img src="/images/blog/doodles/weepingangle2.jpg" alt="Weeping Angle 2" />
  </p>
  """
end
def article("doodle-spacecat") do
  """
  <p>
    <img src="/images/blog/doodles/spacecat.jpg" alt="Spacecat" />
  </p>
  <p>
  I am trying to get better at drawing and decided that drawing inspiration
  from doodles on the internet are the way to go.</p>
  <p>
  My approach is to find and be-inspired by
  <a href="https://media.giphy.com/media/LrAGJnsTMjUZlaf5JG/giphy.gif">like this space cat</a>.</p>
  """
end
def article("new-blog-2023") do
  """
  <p>
  It has been 2 years since I re-worked my personal website
  <a href="https://anunknown.dev">anunknown.dev</a>, and the previous
  version was on cloud hardware and I have recently
  been using <a href="https://fly.io">fly.io</a> for small
  project development, so I decided for a re-work.</p>
  <p>
  The site is built using the following</p>
  <ul>
    <li>
  <a href="https://www.phoenixframework.org">Elixir / Phoenix 1.7 App</a>  </li>
    <li>
  <a href="https://github.com/pragdave/earmark">Code generation using Earmark</a>  </li>
    <li>
  <a href="https://github.com/aforward/writing">Github repo with raw writing in markdown</a>  </li>
    <li>
  <a href="https://hexdocs.pm/phoenix/fly.html">Deployment via Fly.io</a>  </li>
    <li>
  <a href="https://www.digitalocean.com">DNS via DigitalOcean</a>  </li>
    <li>
  <a href="https://tailwindcss.com">Tailwind CSS</a>  </li>
    <li>
  <a href="https://tailwindui.com">Tailwind UI ($$) Design</a>  </li>
  </ul>
  <p>
  The workflow is</p>
  <ol>
    <li>
  Push writing to <a href="https://github.com/aforward/writing">writing repo</a>  </li>
    <li>
  Locally regenerate site custom <code class="inline">Gen.run()</code> code generator  </li>
    <li>
  Push to blog repo  </li>
    <li>
  Deploy changes using <code class="inline">fly deploy</code>  </li>
  </ol>
  <p>
  The accomplishes my goal of having the writing (which everyone, including me,
  needs to do more of) instead of focussing on formatting in HTML/CSS.</p>
  <p>
  I have experience with site generators, but I have certain elixir code projects
  to display (not ported yet) so having an Elixir app running (instead of just
  say raw HTML/CSS) is just fine.</p>
  <p>
  Cheers to more writing in 2023.</p>
  """
end
def article("hugo_and_tailwind") do
  """
  <p>
  I was experimenting with <a href="https://gohugo.io">Hugo</a>
  as a static site generator for a project.  Despite
  not going forward with that tech (we landed on GitHub
  pages), here are my notes on getting it up and runnning.</p>
  <p>
  All code is available on <a href="https://github.com/work-samples/hugo-and-tailwindcss">GitHub at /work-samples/hugo-and-tailwindcss</a></p>
  <h2>
  Installing Hugo with Tailwind CSS</h2>
  <p>
    <img src="/images/blog/hugo_and_tailwind/html.jpg" alt="Hugo and Tailwind CSS homepage" />
  </p>
  <p>
  I was experimenting with <a href="https://gohugo.io">Hugo</a>
  as a static site generator for a project.  Despite
  not going forward with that tech (we landed on GitHub
  pages), here are my notes on getting it up and runnning.</p>
  <h3>
  Installation</h3>
  <p>
  From <a href="https://gohugo.io/getting-started/installing/">gohubo.io</a>
  you will find many ways to install hugo.</p>
  <p>
  For Mac OS X you can use <a href="https://brew.sh">brew</a> and <a href="https://www.macports.org">ports</a></p>
  <pre><code class="bash language-bash">brew install hugo</code></pre>
  <h3>
  Generating a Hugo Project</h3>
  <p>
  You can build a base site using
  We built the base site using</p>
  <pre><code>hugo new site homepage</code></pre>
  <p>
  But then added a <a href="https://github.com/github/gitignore/blob/main/community/Golang/Hugo.gitignore">.gitignore</a>
  to ensure we leave out the unnecessary stuff (also show below).</p>
  <pre><code class="bash language-bash"># Generated files by hugo
  /public/
  /resources/_gen/
  /assets/jsconfig.json
  hugo_stats.json
  
  # Executable may be added to repository
  hugo.exe
  hugo.darwin
  hugo.linux
  
  # Temporary lock file while building
  /.hugo_build.lock</code></pre>
  <h3>
  Enabling Tailwind CSS</h3>
  <p>
  Following <a href="https://www.wimdeblauwe.com/blog/2021/01/18/using-hugo-with-tailwind-css-2/">Using Hugo with Tailwind CSS 2</a>
  and <a href="https://www.hugotutorial.com/posts/2022-01-03-hugo-and-tailwindcss-3.0/">Hugo and Tailwind CSS 3.0</a>
  we configured the site with Tailwind CSS using the following commands</p>
  <pre><code class="bash language-bash">npm init -y
  npm install -D --save-exact autoprefixer postcss postcss-cli postcss-import tailwindcss</code></pre>
  <p>
  Update your <code class="inline">.gitignore</code> to exclude the dependency directories</p>
  <pre><code># Dependency directories
  node_modules/</code></pre>
  <p>
  Create a <code class="inline">postcss.config.js</code></p>
  <pre><code class="javascript language-javascript">module.exports = {
   plugins: {
     tailwindcss: {},
     autoprefixer: {}
   }
  }</code></pre>
  <p>
  Initialize tailwindcss</p>
  <pre><code class="bash language-bash">npx tailwindcss init</code></pre>
  <p>
  Update the <code class="inline">purge</code> in <code class="inline">tailwind.config.js</code></p>
  <pre><code class="javascript language-javascript">/** @type {import(&#39;tailwindcss&#39;).Config} */
  module.exports = {
   purge: [&#39;layouts/**/*.html&#39;],
   content: [&quot;./content/**/*.{html,js}&quot;, &quot;./layouts/**/*.{html,js}&quot;],
   theme: {
     extend: {},
   },
   plugins: [],
  }</code></pre>
  <p>
  Create a <code class="inline">assets/css/app.css</code> file with</p>
  <pre><code class="css language-css">@tailwind base;
  @tailwind components;
  @tailwind utilities;</code></pre>
  <p>
  Create a <code class="inline">layouts/_default/baseof.html</code> file with</p>
  <pre><code class="html language-html">&lt;!DOCTYPE html&gt;
  &lt;html lang=&quot;{{ .Language.Lang }}&quot;&gt;
  &lt;head&gt;
     {{ partial &quot;head.html&quot; . }}
  &lt;/head&gt;
  &lt;body&gt;
  {{ block &quot;main&quot; . }}{{ end }}
  {{ partial &quot;footer.html&quot; . }}
  &lt;/body&gt;
  &lt;/html&gt;</code></pre>
  <p>
  Create a <code class="inline">layouts/_default/index.html</code> file with</p>
  <pre><code class="html language-html">{{ define &quot;main&quot; }}
   &lt;main class=&quot;mx-auto px-4 py-24 bg-gray-100&quot;&gt;
     &lt;h1&gt;Welcome to Hugo with Tailwind CSS&lt;/h1&gt;
     &lt;div class=&quot;text-gray-500&quot;&gt;This is an example site with Tailwind CSS 2&lt;/div&gt;
   &lt;/main&gt;
  {{ end }}</code></pre>
  <p>
  Create a <code class="inline">layouts/partials/head.html</code> file with</p>
  <pre><code class="html language-html">&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html&quot; charset=&quot;UTF-8&quot; /&gt;
  &lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge,chrome=1&quot; /&gt;
  &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot; /&gt;
  
  {{ $styles := resources.Get &quot;css/app.css&quot; | postCSS }}
  
  {{ if .Site.IsServer }}
   &lt;link rel=&quot;stylesheet&quot; href=&quot;{{ $styles.RelPermalink }}&quot;/&gt;
  {{ else }}
   {{ $styles := $styles | minify | fingerprint | resources.PostProcess }}
   &lt;link rel=&quot;stylesheet&quot; href=&quot;{{ $styles.RelPermalink }}&quot; integrity=&quot;{{ $styles.Data.Integrity }}&quot;/&gt;
  {{ end }}</code></pre>
  <p>
  Create a <code class="inline">layouts/partials/footer.html</code> file with</p>
  <pre><code class="html language-html">&lt;footer class=&quot;bg-gray-900&quot;&gt;
   &lt;div class=&quot;flex justify-center text-white py-1&quot;&gt;This is the footer&lt;/div&gt;
  &lt;/footer&gt;</code></pre>
  <p>
  Finally, create an empty <code class="inline">layouts/_default/taxonomy.html</code> file.</p>
  <p>
  Now you can run the base site with</p>
  <pre><code class="bash language-bash">hugo server</code></pre>
  """
end
def article("ocaml-and-vcl-cloud") do
  """
  <p>
  Let&#39;s get up and running with OCaml and the Ontario Reasearch
  &amp; Education VCL Cloud.</p>
  <h3>
  VCL Cloud</h3>
  <p>
  Go visit the VCL Cloud home page</p>
  <ul>
    <li>
  <a href="https://orec.rdc.uottawa.ca/vcl/index.php">https://orec.rdc.uottawa.ca/vcl/index.php</a>  </li>
  </ul>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/01_vlc_login.jpg" alt="VCL Cloud" />
  </p>
  <h3>
  Create A Reservation</h3>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/02_new_reservations.jpg" alt="Create a new reservation" />
  </p>
  <p>
  Figure out how long you want the server for.</p>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/03_create_reservation.jpg" alt="Setup your reservation" />
  </p>
  <p>
  Make sure you grab the correct version <code class="inline">CentOS7Basev3_EmacsOpam</code>.</p>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/04_emacs_opam.jpg" alt="EmacsOpam version" />
  </p>
  <p>
  And now you can connect</p>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/05_connect.jpg" alt="Connect to your server" />
  </p>
  <p>
  When the box is ready, you will be given the necessary login instruction</p>
  <p>
    <img src="/images/blog/ocaml-and-vcl-cloud/06_login_instructions.jpg" alt="Login Instructions" />
  </p>
  <h3>
  SSH Client</h3>
  <p>
  If you are running on Windows then you might not have an <code class="inline">SSH client</code>
  available (if that&#39;s no longer the case, please let me know).</p>
  <p>
  Here are two possible clients to log into the machine</p>
  <ul>
    <li>
  <a href="https://www.bitvise.com/ssh-client-download">Bitvise</a>  </li>
    <li>
  <a href="https://sourceforge.net/projects/vcxsrv/">VcXsrv</a>  </li>
    <li>
  <a href="https://mobaxterm.mobatek.net">MobaXterm</a>  </li>
  </ul>
  <p>
  If you are on a Mac, then open <code class="inline">Terminal</code> and you can access <code class="inline">SSH</code>
  from the console.</p>
  <h3>
  SSH into the Box</h3>
  <p>
  Now that you have an SSH, copy the information from VLC to
  log into your newly reserved box.  DO NOT BLINBLY COPY the details
  below as your username and password will be different.</p>
  <pre><code class="bash language-bash">$ ssh aforward@216.48.95.185</code></pre>
  <p>
  You will be asked about the authenticity of the host, to proceed
  you will have to say &quot;yes&quot;</p>
  <pre><code>The authenticity of host &#39;216.48.95.185 (216.48.95.185)&#39; can&#39;t be established.
  ECDSA key fingerprint is SHA256:ED0vMKplAN3JZycg1F1ltpOEp7/9rtoMer0+STCgGc0.
  Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
  Warning: Permanently added &#39;216.48.95.185&#39; (ECDSA) to the list of known hosts.</code></pre>
  <p>
  Now you can enter the <em>one-time use</em> password</p>
  <pre><code class="bash language-bash">aforward@216.48.95.185&#39;s password:</code></pre>
  <p>
  And now we care</p>
  <pre><code class="bash language-bash">[aforward@localhost ~]$ ocaml --version
  The OCaml toplevel, version 4.05.0</code></pre>
  """
end
def article("ocaml-and-vscode") do
  """
  <p>
  Let&#39;s get up and running with <a href="https://ocaml.org">OCaml</a> and VS Code on a Mac.</p>
  <h3>
  Install Brew</h3>
  <p>
  If you do not have <a href="https://brew.sh">Brew</a> installed yet, then here
  is the one-liner you need.</p>
  <pre><code class="bash language-bash">/bin/bash -c &quot;$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)&quot;</code></pre>
  <p>
  Please note that running random code is find on the internet is dangerous,
  so learn more about <a href="https://docs.brew.sh/Installation">installing brew on a mac</a>
  directly from the <a href="https://brew.sh">brew.sh</a>.</p>
  <h3>
  Install OCAML</h3>
  <p>
  Using <a href="https://brew.sh">brew</a>, we can now install <a href="https://ocaml.org">OCaml</a></p>
  <pre><code class="bash language-bash">brew install ocaml</code></pre>
  <p>
  Or, if it&#39;s already installed, we can upgrade ot the latest</p>
  <pre><code class="bash language-bash">brew upgrade ocaml</code></pre>
  <p>
  As of this time of writing, we are running <code class="inline">The OCaml toplevel, version 4.10.0</code></p>
  <pre><code class="bash language-bash">ocaml --version</code></pre>
  <h3>
  Install OPAM Tools</h3>
  <p>
  Now we can install <a href="https://opam.ocaml.org">OPAM</a>, the package manager for <a href="https://ocaml.org">OCaml</a></p>
  <pre><code>brew install opam
  opam init</code></pre>
  <p>
  <a href="https://github.com/ocaml/merlin">Merlin</a> provides services such as autocompletion to IDEs such as VSCode.</p>
  <pre><code>opam install merlin</code></pre>
  <p>
  <a href="https://github.com/OCamlPro/ocp-indent">Ocp-indent</a> is a tool for auto-formatting <a href="https://ocaml.org">OCaml</a> code.</p>
  <pre><code>opam install ocp-indent</code></pre>
  <p>
  <a href="https://opam.ocaml.org/blog/about-utop/">utop</a> provides a much improved interface to the <a href="https://ocaml.org">OCaml</a> REPL</p>
  <pre><code>opam install utop</code></pre>
  <p>
  To ensure opam is working as expected, you will want to add the following
  to you bash profile (many names such as  <code class="inline">~/.bash_profile</code>, <code class="inline">~/.bashrc</code>, <code class="inline">~/.bash_aliases</code>)</p>
  <pre><code>eval $(opam env)</code></pre>
  <p>
  If you open a new <code class="inline">Terminal</code> window, you should be able to run <code class="inline">utop</code></p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/utop.jpg" alt="Running utop" />
  </p>
  <h3>
  Install VS Code</h3>
  <p>
  There are many editors out there.  I enjoy using <a href="https://www.sublimetext.com">Sublime Text</a>
  with <a href="https://packagecontrol.io/packages/Terminus">Terminus</a>, but <a href="https://code.visualstudio.com">VS Code</a> is a great altnerative as you will see below.</p>
  <p>
  Follow <a href="https://code.visualstudio.com/docs/?dv=osx">the installation instructions</a>
  or you can run the script below.</p>
  <p>
  If you don&#39;t have <code class="inline">wget</code>, then install it using brew</p>
  <pre><code class="bash language-bash">brew install wget</code></pre>
  <p>
  Now we can install VSCode.</p>
  <pre><code class="bash language-bash">cd /tmp
    wget https://go.microsoft.com/fwlink/?LinkID=620882 -O VSCode-darwin-stable.zip &amp;&amp; \
    unzip VSCode-darwin-stable.zip &amp;&amp; \
    mv &quot;Visual Studio Code.app&quot; /Applications/ # if this fails, run as `sudo ...`</code></pre>
  <p>
  To be able to run <code class="inline">code</code> from Terminal, open up Visual Code.</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/01_view_palette.jpg" alt="Open the command palette" />
  </p>
  <p>
  And then install the command line tools</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/02_command.jpg" alt="Install code on the command line" />
  </p>
  <h3>
  Integrate OCAML with VS Code</h3>
  <p>
  We are going to use the <a href="https://marketplace.visualstudio.com/items?itemName=freebroccolo.reasonml">OCaml and Reason IDE extension</a>
  which can be installed directly from VS Code.</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/03_install_extension.jpg" alt="install an extension" />
  </p>
  <p>
  And search for <code class="inline">OCaml and Reason IDE</code>.</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/04_ocaml_and_reason_ide.jpg" alt="OCaml and Reason IDE extension" />
  </p>
  <p>
  If everything ran as expected (which is always does), then you should now have a nice IDE for <a href="https://ocaml.org">OCaml</a> within VS Code.</p>
  <p>
    <img src="/images/blog/ocaml-and-vscode/vscode_ocaml.jpg" alt="VS Code up and running with OCaml" />
  </p>
  <h3>
  Happy Coding!</h3>
  """
end
def article("1password-sessions") do
  """
  <p>
  In a <a href="/articles/1password-bootstrap">our previous post</a>, we looked
  at generating a 1password session without requiring user input.
  Today we will look at generating a <em>one-time</em> (30-minute) token
  on your local machine and only sharing that with your build servers.</p>
  <p>
  If you do not have 1password CLI setup, then please <a href="/articles/1password-bootstrap">read our previous post</a> on getting started, but as soon as it talks
  about <a href="https://linux.die.net/man/1/expect">generating sessions using expect</a>
  then head back over here.</p>
  <h3>
  Generation 1Password token using --raw</h3>
  <p>
  As we <a href="/articles/1password-bootstrap">saw previously</a>, we can <code class="inline">op</code> you can generate a session token.  Below we have two small changes.</p>
  <pre><code class="bash language-bash">op signin --raw my aforward@hey.com &gt; opsession</code></pre>
  <ul>
    <li>
      <p>
  We added the <code class="inline">--raw</code> flag so that we only output the 1password token    </p>
    </li>
    <li>
      <p>
  We redirect the output to a <code class="inline">opsession</code> file.    </p>
    </li>
  </ul>
  <p>
  Now instead of building a <em>forever</em> re-useable <code class="inline">opsession</code> (<a href="/articles/1password-bootstrap">as we did with expect</a>), we now have a 30-minute <code class="inline">opsession</code> token (within a file) that we can share with our build server as seen below (step B).</p>
  <p>
    <img src="/images/blog/1password/opsession-token.jpg" alt="1password token file" />
  </p>
  <p>
  Our automation scripts can now use the <code class="inline">--session</code> flag pointing to the contents
  of our token with <code class="inline">cat opsession</code>.  For example.</p>
  <pre><code class="bash language-bash">op get item db_password --session $(cat opsession)</code></pre>
  <p>
  In this approach, we are still generating 1password sessions locally, and then sharing the token on our <em>build</em> servers.  Those environments now have 30-minutes <em>access</em> to the secrets it needs (DB passwords, API secrets, etc) in a completely autonomous way.</p>
  <p>
  Happy automation!</p>
  """
end
def article("1password-bootstrap") do
  """
  <p>
  Did you know <a href="https://support.1password.com/command-line-getting-started/">1Password has a CLI tool</a>?  Password management and automation
  do not like each much.  If I want automation then I cannot require
  user input.  If I need a password then I should not store that in
  my automation.</p>
  <p>
  1Password CLI helps us track <em>all our passwords</em>, but there is still
  a bootstrapping problem of <em>authenticating against 1Password itself</em>.</p>
  <p>
  Let us explore a possible solution below.</p>
  <h3>
  Installing 1Password CLI</h3>
  <p>
  First, we need to <a href="https://app-updates.agilebits.com/product_history/CLI">download and installing 1Password</a>.  We will want this running within our production setup as well as locally.</p>
  <p>
  For me, that means getting things running on Mac OSX (Debian) and Ubuntu.  For the scripts below make sure to <code class="inline">cd</code> into where you want 1password installed).  I will be using <code class="inline">~/.bin/1password</code> on my Mac, and <code class="inline">/opt/1password</code> on Ubuntu.</p>
  <h4>
  Installing Go</h4>
  <p>
  The 1Password CLI runs on <a href="https://golang.org/">golang</a> and you can find your
  <a href="https://golang.org/dl/">download version here</a>.  It is also available via <a href="https://brew.sh">Brew</a> with <code class="inline">brew install golang</code>.</p>
  <p>
  Before proceeding, make sure <code class="inline">go</code> is installed correctly.</p>
  <pre><code class="bash language-bash">which go</code></pre>
  <h4>
  Installing on a Mac OS X</h4>
  <p>
  For Mac, we run the following</p>
  <pre><code class="bash language-bash">ONEPASSWORD_VERSION=${ONEPASSWORD_VERSION-1.5.0}
  wget https://cache.agilebits.com/dist/1P/op/pkg/v${ONEPASSWORD_VERSION}/op_darwin_amd64_v${ONEPASSWORD_VERSION}.pkg
  sudo installer -pkg op_darwin_amd64_v${ONEPASSWORD_VERSION}.pkg -target /</code></pre>
  <p>
  If correctly installed the CLI tool and <code class="inline">op</code> is on your your <code class="inline">$PATH</code>, then you should see the right version of 1password installed.</p>
  <pre><code class="bash language-bash">op --version</code></pre>
  <h4>
  Installing on Ubuntu (Linux)</h4>
  <p>
  On Linux (tested on Ubuntu 20.04), we run the following</p>
  <pre><code class="bash language-bash">ONEPASSWORD_VERSION=${ONEPASSWORD_VERSION-1.5.0}
  wget https://cache.agilebits.com/dist/1P/op/pkg/v${ONEPASSWORD_VERSION}/op_linux_amd64_v${ONEPASSWORD_VERSION}.zip
  unzip -u op_linux_amd64_v${ONEPASSWORD_VERSION}.zip</code></pre>
  <p>
  You should also verify the file you just downloaded using <code class="inline">gpg</code> as shown below</p>
  <pre><code class="bash language-bash">gpg --receive-keys 3FEF9748469ADBE15DA7CA80AC2D62742012EA22
  gpg --verify op.sig op</code></pre>
  <p>
  If you get an error about when verifying the keys, consider changing your keyserver as shown below.</p>
  <pre><code class="bash language-bash">mkdir -p $HOME/.gnupg
  echo &quot;keyserver keyserver.ubuntu.com&quot; &gt;&gt; $HOME/.gnupg/gpg.conf</code></pre>
  <p>
  As with Mac OSX, if correctly installed the CLI tool and <code class="inline">op</code> is on your your <code class="inline">$PATH</code>, then you should see the right version of 1password installed.</p>
  <pre><code class="bash language-bash">op --version</code></pre>
  <h3>
  Running 1Password CLI</h3>
  <p>
  Before we try to <em>automate</em> password management with the CLI, first make sure you use the tool directly.  <a href="https://support.1password.com/command-line-getting-started/">Read the introduction from 1Password for way more details</a></p>
  <p>
  Let&#39;s confirm you can sign-in, please use your own credentials :-)</p>
  <pre><code class="bash language-bash">op signin my aforward@hey.com</code></pre>
  <p>
  The output will prompt you for your <code class="inline">Secret Key</code> and your <code class="inline">Password</code>.</p>
  <pre><code class="bash language-bash">$ op signin my aforward@hey.com
  Enter the Secret Key for aforward@hey.com at my.1password.com: AB-CDEFG-...
  Enter the password for aforward@hey.com at my.1password.com:</code></pre>
  <p>
  You can find most of information in the <code class="inline">Preferences</code> of the 1Password GUI.</p>
  <p>
    <img src="/images/blog/1password/secrets.jpg" alt="1password secret information" />
  </p>
  <p>
  One password will then give you a 30-minute token</p>
  <pre><code class="bash language-bash">export OP_SESSION_my=&quot;abcdef123456&quot;
  # This command is meant to be used with your shell&#39;s eval function.
  # Run &#39;eval $(op signin my)&#39; to sign in to your 1Password account.
  # Use the --raw flag to only output the session token.</code></pre>
  <p>
  Using that token, we can now make secure calls to our 1Password vault.  Here is an example of listing out our vaults.</p>
  <pre><code class="bash language-bash">op list vaults --session abcdef123456</code></pre>
  <p>
  If everything worked as expected your output should look similar to</p>
  <pre><code class="bash language-bash">[{&quot;uuid&quot;:&quot;xyz456&quot;,&quot;name&quot;:&quot;Personal&quot;}]</code></pre>
  <p>
  If something went wrong (e.g. you copy the fake token above), then you might get an error like.</p>
  <pre><code class="bash language-bash">[ERROR] 2020/08/27 16:26:09 Invalid session token</code></pre>
  <h3>
  Bootstrap 1Password Session with Expect</h3>
  <p>
  Once we have the session token, our automate scripts can work <em>person-free</em> for 30-minutes (yipee), but it is still a bit arduous generate and will need documentation (like this article) to accompany your automation scripts.</p>
  <p>
  Let&#39;s explore how we could automate session <a href="https://linux.die.net/man/1/expect">generation using expect</a>.  Let&#39;s create a script called <code class="inline">opsession</code> (and make it executable <code class="inline">chmod 700 opsession</code>).</p>
  <pre><code class="bash language-bash">#!/usr/bin/expect
  
  set timeout 20
  
  log_user 0
  spawn op signin --raw my.1password.com aforward@hey.com
  expect -re &quot;Enter the Secret Key for aforward@hey.com at my.1password.com: &quot; { send &quot;AB-CDEFG-HIJKL\r&quot; }
  expect -re &quot;Enter the password*&quot; { send &quot;n1c3try\r&quot; }
  expect {
      -re &quot;\n(.*)\r\n&quot; {set result $expect_out(1,string)}
  }
  expect *
  log_user 1
  puts $result</code></pre>
  <p>
  You will need to change the following</p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  Field      </th>
        <th style="text-align: left;">
  Description      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
  <code class="inline">my</code> from <code class="inline">my.1password.com</code>      </td>
        <td style="text-align: left;">
  Your organization name with 1Password      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  <code class="inline">aforward@hey.com</code>      </td>
        <td style="text-align: left;">
  Your email      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  <code class="inline">AB-CD-EF</code>      </td>
        <td style="text-align: left;">
  Your <code class="inline">Secret Key</code>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  <code class="inline">nicetry</code>      </td>
        <td style="text-align: left;">
  Your global 1password password      </td>
      </tr>
    </tbody>
  </table>
  <p>
  If we run our script</p>
  <pre><code class="bash language-bash">./opsession</code></pre>
  <p>
  It should output a valid token like</p>
  <pre><code class="bash language-bash">abc123-def456-ahahaha</code></pre>
  <p>
  We can now use that script directly against an <code class="inline">op</code> opeation like</p>
  <pre><code class="bash language-bash">op list vaults --session $(./opsession)</code></pre>
  <p>
  Or, we could store the <code class="inline">OP_SESSION</code> and re-use it</p>
  <pre><code class="bash language-bash">OPSESSION=$(./opsession)
  op list vaults --session $OPSESSION
  op list users --session $OPSESSION</code></pre>
  <h3>
  Split opsession generation from op usage</h3>
  <p>
  The script above is not safe, as it contains the very 1password
  that you were sworn to protect.</p>
  <p>
  In the diagram below we show how we can isolate the safety
  of <code class="inline">opsession</code> from its usage (and ultimate destruction).</p>
  <p>
    <img src="/images/blog/1password/opsession-safety.jpg" alt="Creating opsession locally" />
  </p>
  <p>
  In the above,</p>
  <p>
  A. An administrator / keeper of keys can generate an opsession
  locally.</p>
  <p>
  B.  The admin can securely transfer <code class="inline">opsession</code> to the appropriate
  build environment.</p>
  <p>
  C. All your build scripts can now securetly interact with <code class="inline">op</code> without
  ever having to ask a real person for a secret.</p>
  <p>
  D. When the build script is done, you can delete your <code class="inline">opsession</code>
  completely removing any trace of those very secret secrets.</p>
  <p>
  A major benefit to the above is that once <code class="inline">opsession</code> is seeded into
  your (<strong>secure</strong>) build environment then you can completely automate
  all your secret needs.</p>
  <h3>
  Warning, Warning, Protect that opsession</h3>
  <p>
  After some conversations with a colleague Tom, he raised concerns
  about possibly being careless with the <code class="inline">opsession</code> file and accidentially
  exposing to our 1password account.</p>
  <p>
  Indeed, we are trading increased levels of automation with increased
  security exposure as our <code class="inline">opsession</code> does contain all the necessary ingredients to
  access your 1password account.  For small teams (or solo-preneurs) that&#39;s fine,
  but within an organization the exposure from carelessness is not worth it.</p>
  <p>
  To avoid sharing that information directly you can instead just
  share the 30-minute token as <a href="/articles/1password-sessions">discussed here</a>.
  By just sharing the token, your build server is now</p>
  <h3>
  Code Generator for opsession</h3>
  <p>
  Let&#39;s take our automation one step further, and securely genreate
  that opsession file for you.</p>
  <p>
  We use <code class="inline">read -p</code> to collect information from <code class="inline">admin</code> user
  about their 1password setup, and can even mask the password using <code class="inline">read -s -p</code>.
  We make this file only access to the current user with <code class="inline">chmod 700 opsession</code>.</p>
  <pre><code class="bash language-bash">#!/bin/bash
  
  read -p &quot;Enter the Account: &quot; ACCOUNT
  read -p &quot;Enter the Email: &quot; EMAIL
  read -p &quot;Enter the Secret Key: &quot; SECRET_KEY
  read -s -p &quot;Enter your Password: &quot; PASSWORD
  echo &quot;&quot;
  
  printf &quot;%b&quot; &quot;#!/usr/bin/expect
  
  set timeout 20
  log_user 0
  spawn op signin --raw ${ACCOUNT}.1password.com ${EMAIL}
  expect -re \&quot;Enter the Secret Key for ${EMAIL} at ${ACCOUNT}.1password.com: \&quot; { send \&quot;${SECRET_KEY}\\\\r\&quot; }
  expect -re \&quot;Enter the password*\&quot; { send \&quot;${PASSWORD}\\\\r\&quot; }
  expect {
      -re \&quot;\\\\n(.*)\\\\r\\\\n\&quot; {set result \$expect_out(1,string)}
  }
  expect *
  log_user 1
  puts \$result&quot; &gt; opsession
  
  chmod 700 opsession</code></pre>
  <p>
  And here we are, a few additional scripts later but we now have a <em>relatively</em> straight forward way to automate our scripts but also have some great <strong>security</strong> around not sharing passwords within those scripts (or repositories).</p>
  """
end
def article("shapkgsum-verify-mac-packages") do
  """
  <p>
  I have been looking at using <a href="https://support.1password.com/command-line-getting-started/">1Password&#39;s CLI tool</a> to better manage secrets on the terminal.  1Password
  <a href="https://support.1password.com/verify-command-line/">strongly recommends you verify your download</a>.</p>
  <p>
    <img src="/images/blog/shapkgsum-verify-mac-packages/mac-verify-fingerprint.jpg" alt="Verify Mac Package fingerprint" />
  </p>
  <p>
  And that should be compared again the posted fingerprint</p>
  <p>
    <img src="/images/blog/shapkgsum-verify-mac-packages/1password-fingerprint.jpg" alt="1Password fingerprint" />
  </p>
  <p>
  The installer does mention that <code class="inline">the installer automatically verifies the files in the package</code>, but I wanted to dive deeper into the process.</p>
  <p>
  Let&#39;s say we have downloaded 1password to <code class="inline">/tmp/op_darwin_amd64_v1.5.0.pkg</code>, we can
  view the package information by running</p>
  <pre><code class="bash language-bash">pkgutil --check-signature /tmp/op_darwin_amd64_v1.5.0.pkg</code></pre>
  <p>
  The output should look similar to</p>
  <pre><code class="bash language-bash">Package &quot;op_darwin_amd64_v1.5.0.pkg&quot;:
     Status: signed by a developer certificate issued by Apple for distribution
     Signed with a trusted timestamp on: 2020-08-18 15:47:29 +0000
     Certificate Chain:
      1. Developer ID Installer: AgileBits Inc. (2BUA8C4S2C)
         Expires: 2024-10-23 17:10:43 +0000
         SHA256 Fingerprint:
             14 1D D8 7B 2B 23 12 11 F1 44 08 49 79 80 07 DF 62 1D E6 EB 3D AB
             98 5B C9 64 EE 97 04 C4 A1 C1
         ------------------------------------------------------------------------
      2. Developer ID Certification Authority
         Expires: 2027-02-01 22:12:15 +0000
         SHA256 Fingerprint:
             7A FC 9D 01 A6 2F 03 A2 DE 96 37 93 6D 4A FE 68 09 0D 2D E1 8D 03
             F2 9C 88 CF B0 B1 BA 63 58 7F
         ------------------------------------------------------------------------
      3. Apple Root CA
         Expires: 2035-02-09 21:40:36 +0000
         SHA256 Fingerprint:
             B0 B1 73 0E CB C7 FF 45 05 14 2C 49 F1 29 5E 6E DA 6B CA ED 7E 2C
             68 C5 BE 91 B5 A1 10 01 F0 24</code></pre>
  <p>
  You will notice the <code class="inline">14 1D D8 ...</code> that aligns with the 1Password posted fingerprint.
  But let&#39;s write a small script to do this for us (<a href="https://github.com/aforward/shapkgsum">shapgksum source code here</a>)</p>
  <p>
  Here is the <a href="https://golang.org">golang</a> source (very primitively) tease out the SHA256 fingerprint from above.</p>
  <pre><code class="go language-go">package main
  
  import (
    &quot;log&quot;
    &quot;os&quot;
    &quot;os/exec&quot;
    &quot;regexp&quot;
    &quot;strings&quot;
  )
  
  type fingerprint string
  
  func pkgutil(filename string) string {
    out, err := exec.Command(&quot;pkgutil&quot;, &quot;--check-signature&quot;, filename).Output()
    if err != nil {
      log.Fatal(err)
      os.Exit(1)
    }
    return string(out[:])
  }
  
  func newFingerprintFromPkgutil(filename string) fingerprint {
    output := pkgutil(filename)
    return newFingerprintOutput(output)
  }
  
  func newFingerprintOutput(output string) fingerprint {
    isFound := false
    fingerprints := []string{}
    for _, v := range strings.Split(output, &quot;\n&quot;) {
      firstMatch, _ := regexp.MatchString(`SHA256`, v)
      lastMatch, _ := regexp.MatchString(`-------`, v)
  
      if lastMatch {
        return fingerprint(strings.Join(fingerprints, &quot; &quot;))
      } else if isFound {
        fingerprints = append(fingerprints, strings.TrimSpace(v))
      } else if firstMatch {
        isFound = true
      }
    }
  
    return &quot;&quot;
  }</code></pre>
  <p>
  The command line tool (<code class="inline">shapkgsum</code>) then looks like</p>
  <pre><code class="go language-go">package main
  
  import (
    &quot;fmt&quot;
    &quot;os&quot;
  )
  
  func main() {
    filename := os.Args[1]
    fingerprint := newFingerprintFromPkgutil(filename)
    fmt.Println(fingerprint)
  }</code></pre>
  <p>
  You can run the code yourself, as shown here.</p>
  <pre><code class="bash language-bash">wget https://github.com/aforward/shapkgsum/raw/main/bin/shapkgsum &amp;&amp; \
  chmod 755 ./shapkgsum
  ./shapkgsum /tmp/op_darwin_amd64_v1.5.0.pkg</code></pre>
  <p>
  And now only the first fingerprint is return, for example</p>
  <pre><code class="bash language-bash">14 1D D8 7B ...</code></pre>
  <p>
  You can now more easily compare the package before installing</p>
  <pre><code class="bash language-bash"># information on verifying the signature is available
  # https://support.1password.com/verify-command-line/
  AGILEBITS=$(./shapkgsum op_darwin_amd64_v1.5.0.pkg)
  FINGERPRINT=&quot;14 1D D8 7B ...&quot;
  if [ &quot;${AGILEBITS}&quot; != &quot;${FINGERPRINT}&quot; ]; then
    echo &quot;Unverified signature&quot;
    echo &quot;${AGILEBITS}&quot;
    exit 1
  else
    echo &quot;Signature verified&quot;
  fi</code></pre>
  <p>
  I am (extremely) confident that I have downloaded the correct 1Password CLI.  I am (euqally extremely) new to <a href="https://golang.org">golang</a> and still getting my bearing with respect to writing pragmatic go.  Resources and feedback welcome.</p>
  """
end
def article("fast-isolated-nonbrittle") do
  """
  <p>
  I think it leads to arguing along the lines of <em>hey this isn&#39;t a unit test</em>.</p>
  <p>
  Some of tests are very <em>un-unit</em> tests.  I will write automated tests that ...</p>
  <ul>
    <li>
  Talk to a database  </li>
    <li>
  Call other modules  </li>
    <li>
  Might even call an external services  </li>
  </ul>
  <p>
  Of course, I will also write more <em>unit-like</em> automation including ...</p>
  <ul>
    <li>
  Testing against an interface  </li>
    <li>
  Using mock objects  </li>
    <li>
  Writing test doubles  </li>
  </ul>
  <p>
  Finally, I also write tests that are very <em>production</em> oriented to verify the liveness of a running system including <strong>Canary</strong> and <strong>Smoke</strong> tests.</p>
  <p>
  Dave Thomas said recently (<a href="https://podcasts.apple.com/ca/podcast/elixir-wizards/id1454287242?i=1000478551902">in a podcast with Elixir Wizards</a>) that</p>
  <pre><code>If it has a name, it&#39;s probably wrong.
  - Dave Thomas</code></pre>
  <p>
  Names are important, very important, but somethings they can be distracting.</p>
  <h3>
  Qualities of Good Automated Tests</h3>
  <p>
  I prefer to focus on three qualities of good automated tests</p>
  <ul>
    <li>
  Fast (or non-slow)  </li>
    <li>
  Sturdy (or non-brittle)  </li>
    <li>
  Isolated (or non-coupled)  </li>
  </ul>
  <p>
  My insights into Testing are largely based on Kent Beck (see <a href="https://www.infoq.com/news/2008/10/qualities_good_test/">Qualities of a Good Tests</a> and <a href="https://medium.com/@kentbeck_7670/programmer-test-principles-d01c064d7934">Programmer Test Principles</a>)</p>
  <h4>
  Faster is Better Than Slower</h4>
  <p>
  Fast is relative.</p>
  <p>
  It&#39;s hard to argue (unless you are trolling) against having fast tests.  Speed it definitely relative, but the general thinking is that the faster your tests run, the faster you can get feedback from those tests.  Slow tests will be run less often, by fewer people and you will not provide the timely feedback that you need.</p>
  <p>
    <img src="https://user-images.githubusercontent.com/48086/86265716-221a7500-bb92-11ea-9d93-811fe62e11a8.jpeg" alt="Fast is better than slow" />
  </p>
  <p>
  As your code base grows, even with the best intentions some of your test might <em>need to be slow</em> (as the test is more important than its speed) or you simply might have too many (high value and very fast) tests that now running the entire testsuite is way too (relatively) slow.</p>
  <p>
    <img src="https://user-images.githubusercontent.com/48086/86266397-28f5b780-bb93-11ea-8199-8c34c33cb4f4.jpeg" alt="Eventually you might have to start splitting up your tests" />
  </p>
  <p>
  At this point, you offload those slow tests and no longer run them all the time.  Just never let it excuse you from always trying to make your tests run fast.</p>
  <h4>
  Sturdy is Better Than Brittle</h4>
  <p>
  Some examples of brittleness in tests might include</p>
  <ul>
    <li>
  A sleep to <em>wait</em> on something to finish  </li>
    <li>
  A hard-coded year (or some other fixed date or reliance on timezones)  </li>
    <li>
  Timezone brittleness where depending on when you run your code affects the perception of today versus tomorrow  </li>
    <li>
  Relying on data to exist somewhere that is not explicitly managed by your tests  </li>
    <li>
  Relying on the side effects of other tests that must be run before or after your test  </li>
    <li>
  Trying to test randomness in a quasi predictable way  </li>
  </ul>
  <p>
    <img src="https://user-images.githubusercontent.com/48086/86268320-01541e80-bb96-11ea-8595-9b349605377a.jpeg" alt="image" />
  </p>
  <p>
  A sturdy test is one that rarely (ideally never) fails with a false negative (i.e. the test failed but the code is just fine).  With experience you will get better at knowing <em>before hand</em> what may (or may not) make a test brittle, but even if you don&#39;t, your brittle tests will eventually tell you how brittle they are.</p>
  <h4>
  Isolated is Better Than Coupled</h4>
  <p>
  As you make changes to your code base tests will eventually start to fail, and that&#39;s a good thing.  The test suite can act as a great tool to show you possible regressions based on changes.  But, if can also highlight spots where your test suite has unnecessarily coupling to assumed behaviour.</p>
  <p>
  Imagine that you are writing in invoicing app.  You have tests that calculate the sales tax based on the shipping address.  The accounting team lets you know that digital products calculate tax a bit differently.  You write a new test to demonstrate the desired behaviour and then you run a your test suite a bunch of (what you thought were unrelated) tests start failing.  Your tests about payment transactions, your tests about PDF generation, and your tests about overdue notices all start failing.</p>
  <p>
    <img src="https://user-images.githubusercontent.com/48086/86268810-c0103e80-bb96-11ea-870f-558951e198be.jpeg" alt="image" />
  </p>
  <p>
  Turns out a lot of your tests were duplicating knowledge of the tax calculation and when things changed that assumptions were no longer true and now those tests starting blowing up.  You cannot fully isolate yourself from this scenario, and different testing frameworks give you different tools to deal with coupled tests, but it is something to be aware of something to work to minimize.  I am not advocating any particular solution to dealing with coupled tests and there is no one solution for every scenario.</p>
  <h3>
  Go Forth and Automate</h3>
  <p>
  Almost always having tests is better than not having tests.</p>
  <p>
  Try not to argue too much about whether a test is a unit test, an integration, a system test and instead focus on if the test is fast, sturdy and isolated.  Defer complexity in your build pipeline until it&#39;s a must, as it&#39;s always easier to change a simple process than a complex one.</p>
  <h3>
  Resources</h3>
  <ul>
    <li>
  <a href="https://www.infoq.com/news/2008/10/qualities_good_test/">Kent Beck Qualities of Good Tests (2008)</a>  </li>
    <li>
  <a href="https://medium.com/@kentbeck_7670/programmer-test-principles-d01c064d7934">Programmer Test Principles by Kent Beck (2019)</a>  </li>
    <li>
  <a href="https://podcasts.apple.com/ca/podcast/elixir-wizards/id1454287242?i=1000478551902">Dave Thomas on Learning How Things Work (Elixir Wizards June 18, 2020)</a>  </li>
  </ul>
  """
end
def article("generating-global-ids") do
  """
  <h3>
  Problem</h3>
  <p>
  Imagine you are building a system to assign unique numbers to each
  resource that you manage. You want the IDs to be guaranteed unique
  i.e. no UUIDs.  Since these ids are globally unique, each id can
  only be given out at most once.</p>
  <p>
  The ids are 64 bits long.</p>
  <p>
  There are a fixed number of nodes in the system, up to 1024.</p>
  <p>
  Each node knows its ID at startup and that ID never changes
  for the node.</p>
  <h3>
  Solution</h3>
  <p>
  You can <a href="https://github.com/work-samples/global_id">visit the source on GitHub</a></p>
  <h4>
  Unsynchronized ID Generation</h4>
  <p>
  We are splitting the ID generation between several nodes.
  To build a guaranteed-globally-unique generator without
  any synchronization between each node, we can split our IDs
  between</p>
  <ul>
    <li>
  X bits to identify the node  </li>
    <li>
  Y bits of unique numbers within a node.  </li>
  </ul>
  <p>
  Knowing that we will have at most 1024 (2^10) nodes, we
  can reserve the first 10 bits of our number to uniquely
  identify the node.</p>
  <pre><code>XXXXXXXXXX YYYYY.........YYYYY
    10 bits        54 bits</code></pre>
  <h4>
  By-Hand Demonstration</h4>
  <p>
  Let&#39;s demonstrate with an example.  But, we will use
  smaller numbers to better visualize the solution.  Let&#39;s
  make a 5-bit counter split between up to 4 nodes.</p>
  <p>
  In this example, we need 2 bits to identify the nodes, leaving
  3 bits for each node to count with.</p>
  <pre><code>XX YYY</code></pre>
  <p>
  So each node&#39;s numbers would be split between</p>
  <pre><code>N0: 00 YYY
  N1: 01 YYY
  N2: 10 YYY
  N3: 11 YYY</code></pre>
  <p>
  Now each node is responsible for managing its own uniqueness
  of a 3-bit number.  Global uniqueness will be assured by
  our NodeId prefix (the first two bits).</p>
  <h4>
  Elixir Demonstration</h4>
  <p>
  This can be represented using
  <a href="https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#bitstrings">Bitstrings</a>
  in Elixir.</p>
  <p>
  Here&#39;s the number 9 represented in bits</p>
  <pre><code>01001
   ^  ^
   8  1</code></pre>
  <p>
  Let&#39;s look at our 5-bit example in the iex shell.</p>
  <p>
  In Elixir, this can be (in a slightly verbose manner) done as follows</p>
  <pre><code class="elixir language-elixir">&lt;&lt;0::1,1::1,0::1,0::1,1::1&gt;&gt;</code></pre>
  <p>
  For our example nodes, this can be split between 2 bits for
  the node and 3 bits for the number</p>
  <pre><code class="elixir language-elixir">&lt;&lt;1::2,1::3&gt;&gt;</code></pre>
  <p>
  To extract the <code class="inline">integer</code> we can use Elixir pattern matching</p>
  <pre><code class="elixir language-elixir">&lt;&lt;n::5&gt;&gt; = &lt;&lt;1::2,1::3&gt;&gt;</code></pre>
  <h4>
  Elixir Template Solution</h4>
  <p>
  We now have enough to build a template solution for our GlobalId.</p>
  <pre><code class="elixir language-elixir">@doc &quot;&quot;&quot;
  Return a globally unique 64-bit non-negative integer.
  
  Each node can be represented with 10 bits (2^10 = 1024)
  we will use our unique node prefix, and then the
  remaining 54 bits to be unique within the node.
  
  The underlying call to timestamp is not guaranteed to be
  monotonic, and we do not support two calls within the
  same microsoft, but this is a good start.
  &quot;&quot;&quot;
  @spec get_id() :: non_neg_integer
  def get_id() do
    &lt;&lt;n::size(64)&gt;&gt; = &lt;&lt;node_id()::10,next_id()::54&gt;&gt;
    n
  end</code></pre>
  <p>
  The <code class="inline">node_id()</code> is assigned automatically from the node itself.
  The specification for the <code class="inline">next_id()</code> only needs to be
  unique within the node itself.</p>
  <pre><code class="elixir language-elixir">@doc &quot;&quot;&quot;
  Return a locally unique non-negative integer.
  &quot;&quot;&quot;
  @spec next_id() :: non_neg_integer
  def next_id</code></pre>
  <p>
  Before we implement the <code class="inline">next_id()</code>, let&#39;s analyze how
  many numbers can be generated so we can evaluate
  the appropriateness of our solution.</p>
  <h4>
  How Many Unique Numbers are Possible</h4>
  <p>
  Our system can, at most, distribute up to a million-trillion
  unique IDs (2^64 = 64-bit number).</p>
  <pre><code>18,446,744,073,709,552,000 (2^64)
  mT  kT   T   B   M   k</code></pre>
  <p>
  We are splitting our generator between (up to) 1024 nodes
  so each node can, at most, distribute up to a thousand-trillion
  unique IDs (2^54)</p>
  <pre><code>18,014,398,509,481,984
  kT   T   B   M</code></pre>
  <h4>
  Timestamp solution</h4>
  <p>
  A timestamp-based solution is simple but offers two possible
  problems.</p>
  <p>
  First, when will the numbers run out?  And second,
  will there ever be two requests at the exact <em>same time</em>
  (based on the precision of our timestamp)
  causing our solution to (incorrectly) return duplicate IDs.</p>
  <h5>
  How long will 2^54 last?</h5>
  <p>
  Today&#39;s date (approx) is 1.5 billion milliseconds</p>
  <pre><code>1,590,159,116
  B   M</code></pre>
  <p>
  Even if we supported units in microseconds, that
  is still only about 1.5 trillion microseconds per year,
  leaving each node with 18,013 trillion numbers possible values instead of
  18,014 trillion.</p>
  <p>
  There are about 30 billion milliseconds each year
  (365*24*60*60*1000), so we have until the year 600k
  until we exhaust 2^54 numbers based on a timestamp.</p>
  <h5>
  Two Requests At the Same Time?</h5>
  <p>
  This is a bigger concern for uniqueness.</p>
  <p>
  If our timestamp can only resolve to milliseconds,
  and we expect about 100k requests per second, that is
  around 100 requests every millisecond, which is not precise enough.</p>
  <p>
  If we had micro-time resolution, <strong>and</strong> if we could guarantee
  that our <code class="inline">get_id()</code> would perform not faster than a <code class="inline">1μ ms</code>
  then our solution below would be sufficient for our needs.</p>
  <pre><code class="elixir language-elixir">@doc &quot;&quot;&quot;
  Return a locally unique non-negative integer.
  &quot;&quot;&quot;
  @spec next_id() :: non_neg_integer
  def next_id, do: :os.system_time(:microsecond)</code></pre>
  <p>
  If we cannot guarantee those conditions then we need to
  look at <code class="inline">GlobalId</code> maintaining its counter.</p>
  <h4>
  How much to count?</h4>
  <p>
  Our system could receive 100,000 requests a second.
  But we don&#39;t know the distribution within the second.
  Maybe they all arrive at once, or maybe they are
  evenly distributed about 100 every millisecond.</p>
  <h6>
  Counting 100k every second</h6>
  <p>
  If we have no guarantees about how the requests are
  distributed within a second, then we need 17 bits to
  track those 100k per second requests (2^17=131k)</p>
  <p>
  Let us revisit our 64-bit number, where we have</p>
  <ul>
    <li>
  10 X bits for the node,  </li>
    <li>
  37 Y bits for the timestamp, and  </li>
    <li>
  17 Z bits for the counter.  </li>
  </ul>
  <pre><code>XXXXXXXXXX YYYYY.........YYYYY  ZZZZZ.........ZZZZ
    10 bits        37 bits              17 bits</code></pre>
  <p>
  We now have fewer bits for our timestamp, so let us
  see if we can still reasonably generate numbers for a long time.</p>
  <p>
  At millisecond precision, 37 bits only supports 137 billion
  numbers or 5 years.</p>
  <pre><code>137,438,953,472
    B   M</code></pre>
  <p>
  Clearly not enough.</p>
  <h5>
  To-The-Second Precision</h5>
  <p>
  We could consider to-the-second precision for our timestamp
  as we would be managing sub-second counting, this would give
  us around 4.5k years of unique numbers.</p>
  <h5>
  Counting 100 every millisecond</h5>
  <p>
  We could also see if our messages would be evenly distributed
  throughout every millisecond, which would require only 7 bits
  to track our counter as at most 100 requests would arrive
  every millisecond (2^7=128).</p>
  <p>
  Our new scheme for the 64-bit number, would be</p>
  <ul>
    <li>
  10 X bits for the node,  </li>
    <li>
  47 Y bits for the timestamp, and  </li>
    <li>
  7 Z bits for the counter.  </li>
  </ul>
  <pre><code>XXXXXXXXXX YYYYY.........YYYYY  ZZZZZ.........ZZZZ
    10 bits        47 bits              7 bits</code></pre>
  <p>
  At 47 bits, our timestamp supports up to 140 trillion numbers,
  at at 30 billion milliseconds per year, our system would last
  about 4.5k years of generating unique numbers.</p>
  <pre><code>140,737,488,355,328
    T   B   M</code></pre>
  <p>
  If we wanted to count to 1000 (instead of a 100), then we could
  support up to 1000 bursts every millisecond (instead of the
  uniformly 10/ms) then our system would last for about 500 years.</p>
  <pre><code>17,592,186,044,416
   T    B   M</code></pre>
  <h5>
  Why keep the timestamp?</h5>
  <p>
  You could argue if your system can count to a thousand, or
  to one-hundred thousand, why not have it do all the counting?</p>
  <p>
  The reason: down-time and failures.</p>
  <p>
  If a node goes offline, then when we bring it back up, or
  if a new node is brought back up in its stead, we do not
  need to manage any external state and the counter will continue
  to generate globally unique numbers.  This works nicely with
  Elixir/Erlang as our <code class="inline">GlobalId</code> could be part of a supervision tree
  that could automatically re-start it on failure.</p>
  <h4>
  Counting in Elixir</h4>
  <p>
  Elixir (and Erlang) offer several mechanisms to
  support internal state.  The most commonly used is a GenServer
  (which stands for a Generic Server) which we will use below.</p>
  <p>
  We will configure our GenServer with</p>
  <pre><code class="elixir language-elixir">defmodule GlobalId do
    use GenServer
  
    @impl true
    def init(_) do
      {:ok, %{counter: 0}}
    end
  
  end</code></pre>
  <p>
  And our counter will increment the state on each request.</p>
  <pre><code class="elixir language-elixir">  @impl true
    def handle_call(:next_id, _from, %{counter: counter}) do
      {:reply, counter, %{counter: counter + 1}}
    end</code></pre>
  <p>
  We will update our <code class="inline">get_id()</code> and <code class="inline">next_id()</code> implementations
  to use this counter.</p>
  <pre><code class="elixir language-elixir">  @spec get_id(pid()) :: non_neg_integer
    def get_id(pid) do
      &lt;&lt;n::size(64)&gt;&gt; = &lt;&lt;node_id()::10, timestamp()::47, next_id(pid)::7&gt;&gt;
      n
    end
  
    @spec next_id(pid()) :: non_neg_integer
    def next_id(pid), do: GenServer.call(pid, :next_id)</code></pre>
  <h5>
  Full Solution</h5>
  <p>
  Our full solution using the GenServer is shown below.</p>
  <pre><code class="elixir language-elixir">defmodule GlobalId do
    use GenServer
  
    @moduledoc &quot;&quot;&quot;
    GlobalId module contains an implementation of a guaranteed globally unique id system.
    &quot;&quot;&quot;
  
    @doc &quot;&quot;&quot;
    Return a globally unique 64-bit non-negative integer.
  
    Each node can be represented with 10 bits (2^10 = 1024)
    we will use the unique node prefix, and then the
    remaining 54 bits to be unique within the node.
  
    The underlying call to timestamp is not guaranteed to be
    monotonic, and we do not support two calls within the
    same microsecond, but this is a good start.
    &quot;&quot;&quot;
    @spec get_id(pid()) :: non_neg_integer
    def get_id(pid) do
      &lt;&lt;n::size(64)&gt;&gt; = &lt;&lt;node_id()::10, timestamp()::47, next_id(pid)::7&gt;&gt;
      n
    end
  
    @doc &quot;&quot;&quot;
    Return a locally unique non-negative integer.
    Provide the process of the GlobalId GenServer you
    are connecting you.
    &quot;&quot;&quot;
    @spec next_id(pid()) :: non_neg_integer
    def next_id(pid), do: GenServer.call(pid, :next_id)
  
    @doc &quot;&quot;&quot;
    Returns your node id as an integer.
    It will be greater than or equal to 0 and less than 1024.
    It is guaranteed to be globally unique.
    &quot;&quot;&quot;
    @spec node_id() :: non_neg_integer
    def node_id, do: 18
  
    @doc &quot;&quot;&quot;
    Returns timestamp since the epoch in microseconds.
    &quot;&quot;&quot;
    @spec timestamp() :: non_neg_integer
    def timestamp, do: :os.system_time(:microsecond)
  
    #
    # GenServer Functionality
    #
    #
  
    @doc &quot;&quot;&quot;
    Start our GlobalId GenServer, with our next_id being 0.
    &quot;&quot;&quot;
    @impl true
    def init(_) do
      {:ok, %{counter: 0}}
    end
  
    @impl true
    def handle_call(:next_id, _from, %{counter: counter}) do
      {:reply, counter, %{counter: counter + 1}}
    end
  end</code></pre>
  <h4>
  Debugging our Implementation</h4>
  <p>
  From the elixir shell (within a project holding our <code class="inline">GlobalId</code>)</p>
  <pre><code class="elixir language-elixir">iex -S mix</code></pre>
  <p>
  We can start a new GlobalId server.</p>
  <pre><code class="elixir language-elixir">iex&gt; {:ok, pid} = GenServer.start_link(GlobalId, :ok)</code></pre>
  <p>
  And then use the <code class="inline">pid</code> to request the next IDs.</p>
  <pre><code class="elixir language-elixir">iex&gt; GlobalId.get_id(pid)</code></pre>
  <p>
  We can also test our <code class="inline">next_id()</code> function.</p>
  <pre><code class="elixir language-elixir">iex&gt; GlobalId.next_id(pid)</code></pre>
  <h4>
  Implementing the Node ID</h4>
  <p>
  Right now our NodeId is hard-coded, let&#39;s expand that
  to grab from our internal state.</p>
  <pre><code class="elixir language-elixir">defmodule GlobalId do
    use GenServer
  
    @moduledoc &quot;&quot;&quot;
    GlobalId module contains an implementation of a guaranteed globally unique id system.
    &quot;&quot;&quot;
  
    @doc &quot;&quot;&quot;
    Return a globally unique 64-bit non-negative integer.
  
    Each node can be represented with 10 bits (2^10 = 1024)
    we will use our unique node prefix, and then the
    remaining 54 bits to be unique within the node.
  
    The underlying call to timestamp is not guaranteed to be
    monotonic, and we do not support two calls within the
    same microsecond, but this is a good start.
    &quot;&quot;&quot;
    @spec get_id(pid()) :: non_neg_integer
    def get_id(pid), do: GenServer.call(pid, :get_id)
  
    @doc &quot;&quot;&quot;
    Returns your node id as an integer.
    It will be greater than or equal to 0 and less than 1024.
    It is guaranteed to be globally unique.
    &quot;&quot;&quot;
    @spec node_id(pid()) :: non_neg_integer
    def node_id(pid), do: GenServer.call(pid, :node_id)
  
    @doc &quot;&quot;&quot;
    Returns timestamp since the epoch in microseconds.
    &quot;&quot;&quot;
    @spec timestamp() :: non_neg_integer
    def timestamp, do: :os.system_time(:microsecond)
  
    #
    # GenServer Functionality
    #
    #
  
    @doc &quot;&quot;&quot;
    Start our GlobalId GenServer, with our next_id being 0.
  
    You can start your server with `start_link/2` and then
    send the message `:get_id` the PID as shown below.
  
        iex&gt; {:ok, pid} = GenServer.start_link(GlobalId, 18)
        iex&gt; GenServer.call(pid, :get_id)
  
    These behaviours are also captured in the API above.
    &quot;&quot;&quot;
    @impl true
    def init(node_id) do
      {:ok, %{node_id: node_id, counter: 0}}
    end
  
    @impl true
    def handle_call(:node_id, _from, %{node_id: node_id} = state) do
      {:reply, node_id, state}
    end
  
    @impl true
    def handle_call(:get_id, _from, %{node_id: node_id, counter: counter} = state) do
      &lt;&lt;id::size(64)&gt;&gt; = &lt;&lt;node_id::10, timestamp()::47, counter::7&gt;&gt;
      {:reply, id, %{state | counter: counter + 1}}
    end
  end</code></pre>
  <h3>
  Testing</h3>
  <p>
  The testing of our ID generator can be split into</p>
  <ul>
    <li>
  Is it correct?  </li>
    <li>
  Is it fast enough?  </li>
    <li>
  Is it guaranteed unique?  </li>
  </ul>
  <h4>
  Is is correct?</h4>
  <p>
  A fast service that returns incorrect results is somewhat useless.
  So our first tests focus on example-driven testing (aka unit testing)
  to see if the ID generator is doing what we expect.</p>
  <p>
  There are two tests at this level.  Our function should be monotonic
  (ever-increasing), and supports sub-millisecond access.</p>
  <pre><code class="elixir language-elixir">test &quot;should be monotonically increasing&quot; do
    {:ok, pid1} = GenServer.start_link(GlobalId, 1)
    first = GlobalId.get_id(pid1)
    second = GlobalId.get_id(pid1)
    third = GlobalId.get_id(pid1)
    assert first &lt; second
    assert second &lt; third
  end</code></pre>
  <p>
  We also want to show that the last 7 bits of our solution do cycle
  through at least 100 values so that our time-based approach could
  (in theory) support the required 100,000 transactions a second
  (i.e. 100/ms).</p>
  <pre><code class="elixir language-elixir">  test &quot;theoretically support 100 (2^7) calls per millisecond&quot; do
      {:ok, pid1} = GenServer.start_link(GlobalId, 1)
  
      allIds = Enum.map(0..129, fn _ -&gt; GlobalId.get_id(pid1) end)
  
      &lt;&lt;_::57, num_0::7&gt;&gt; = &lt;&lt;Enum.at(allIds, 0)::64&gt;&gt;
      assert num_0 == 0
  
      &lt;&lt;_::57, num_1::7&gt;&gt; = &lt;&lt;Enum.at(allIds, 1)::64&gt;&gt;
      assert num_1 == 1
  
      &lt;&lt;_::57, num_127::7&gt;&gt; = &lt;&lt;Enum.at(allIds, 127)::64&gt;&gt;
      assert num_127 == 127
  
      &lt;&lt;_::57, num_128::7&gt;&gt; = &lt;&lt;Enum.at(allIds, 128)::64&gt;&gt;
      assert num_128 == 0
  
      &lt;&lt;_::57, num_129::7&gt;&gt; = &lt;&lt;Enum.at(allIds, 129)::64&gt;&gt;
      assert num_129 == 1
    end
  end</code></pre>
  <h4>
  Is it fast enough?</h4>
  <p>
  Next, we consider performance.  For that, we used <a href="https://hex.pm/packages/benchee">benchee</a></p>
  <pre><code class="elixir language-elixir">@tag perf: true
  test &quot;can we get 100k per second&quot; do
    {:ok, pid1} = GenServer.start_link(GlobalId, 1)
  
    Benchee.run(
      %{
        &quot;get_id&quot; =&gt; fn -&gt; GlobalId.get_id(pid1) end
      },
      warmup: 0,
      time: 10,
      parallel: 1
    )
  end</code></pre>
  <p>
  We will be calling our <code class="inline">&amp;get_id/1</code> function over and
  over for 10 seconds.</p>
  <p>
  To run the performance test we do</p>
  <pre><code class="bash language-bash">mix test test/perf_test.exs --include perf:true</code></pre>
  <p>
  This was tested on</p>
  <pre><code>Operating System: macOS
  CPU Information: Intel(R) Core(TM) i7-6567U CPU @ 3.30GHz
  Number of Available Cores: 4
  Available memory: 16 GB
  Elixir 1.10.3
  Erlang 22.3</code></pre>
  <p>
  And produced the following output (we ran the test several times
  each row representing one 10s test).</p>
  <p>
  | Name | ips | average | deviation | median | 99th %
  | --- | --- | --- | --- | --- | --- |
  | get_id | 525.40 K | 1.90 μs | ±1584.91% | 2 μs | 3 μs
  | get_id | 401.50 K | 2.49 μs | ±1510.79% | 1.98 μs | 15.98 μs
  | get_id | 437.85 K | 2.28 μs | ±1473.27% | 2 μs | 13 μs
  | get_id | 437.70 K | 2.28 μs | ±1691.43% | 2 μs | 15 μs</p>
  <p>
  The definition of each field is below:</p>
  <ul>
    <li>
  <strong>name</strong> - the of the test  </li>
    <li>
  <strong>ips</strong> - iterations per second, aka how often can the given function be executed within one second (the higher the better - good for graphing), only for run times  </li>
    <li>
  <strong>average</strong> - average execution time/memory usage (the lower the better)  </li>
    <li>
  <strong>deviation</strong> - standard deviation (how much do the results vary), given as a percentage of the average (raw absolute values also available)  </li>
    <li>
  <strong>median</strong> - when all measured values are sorted, this is the middle value. More stable than the average and somewhat more likely to be a typical value you see, for the most typical value see mode. (the lower the better)  </li>
    <li>
  <strong>99th %</strong> - 99th percentile, 99% of all measured values are less than this - worst-case performance-ish  </li>
  </ul>
  <p>
  The results seem to indicate our ID generator will work
  well at producing 100k IDs per second.</p>
  <h4>
  Is it guaranteed unique?</h4>
  <p>
  We can test our uniqueness guarantee by launching 1024 nodes
  and concurrently requesting IDs from them and ensuring
  the resulting list is unique.</p>
  <p>
  To run the test</p>
  <pre><code class="bash language-bash">mix test test/global_unique_test.exs  --include global:true</code></pre>
  <p>
  And here is the implementation (looking at 50k requests)</p>
  <pre><code class="elixir language-elixir">@tag global: true
  test &quot;globally unique&quot; do
  
    globals = 0..1023
    |&gt; Enum.map(fn node_id -&gt;
      {:ok, pid} = GenServer.start_link(GlobalId, node_id)
      pid
    end)
  
    num_iterations = 50_000
    unique_numbers = 1..num_iterations
    |&gt; Enum.map(fn _ -&gt;
      Task.async(fn -&gt;
        [pid] = Enum.take_random(globals, 1)
        GenServer.call(pid, :get_id)
      end)
    end)
    |&gt; Enum.map(&amp;Task.await/1)
    |&gt; Enum.uniq
    |&gt; Enum.count
  
    assert unique_numbers == num_iterations
  end</code></pre>
  <h3>
  Summary</h3>
  <p>
  Based on theoretical analysis of bitstrings, mixed with
  some engineering benchmarks, our solution seems to provide
  a GlobalId generator that offers unsynchronized unique IDs
  between upto 1024 nodes.</p>
  <p>
  The current solution will last for 4.5k years before we
  run out of numbers, and if that is of concern then the
  recommendation would be to go with a 128-bit integer
  split as follows.</p>
  <pre><code>XXXXXXXXXX YYYYY.........YYYYY  ZZZZZ.........ZZZZ
    20 bits        71 bits              17 bits</code></pre>
  <p>
  Using 20 bits allows for a million nodes, and 17-bit
  counter allows for 100k every millisecond, which still
  leaves us with 71 bits for epoch time or a trillion-years
  (well past the 4.5B years that our sun will survive).</p>
  <p>
  You can <a href="https://github.com/work-samples/global_id">visit the source on GitHub</a></p>
  """
end
def article("git-rebase-webcampzg") do
  """
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.001.jpg" alt="git rebase -i HEAD~25 slide 01" />
  </p>
  <p>
  You can watch the video below, or keep reading for a transcript.</p>
  <p>
  <a href="https://www.youtube.com/watch?v=V53cpDt2dr0">  <img src="https://img.youtube.com/vi/V53cpDt2dr0/0.jpg" alt="Andrew Forward&#39;s talk on git rebase -i HEAD~25 at WebCamp Zagreb" />
  </a></p>
  <h3>
  Git is complicated.</h3>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.002.jpg" alt="git rebase -i HEAD~25 slide 02" />
  </p>
  <p>
  There are concepts known as threshold concepts or <a href="https://en.wikipedia.org/wiki/Threshold_knowledge">threshold knowledge</a>,
  where once you cross a certain level of understanding it completely changes your perception of
  that concept.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.003.jpg" alt="git rebase -i HEAD~25 slide 03" />
  </p>
  <p>
  My goal today is to push some of you a bit closer to the threshold edge to help make git a little less complicated.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.004.jpg" alt="git rebase -i HEAD~25 slide 04" />
  </p>
  <p>
  Warning, I take no responsibility for any loss or damage you might suffer on your journey to git enlightenment.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.005.jpg" alt="git rebase -i HEAD~25 slide 05" />
  </p>
  <p>
  In a perfect world, we solve problems perfectly.  In my imperfect world, I might find and fix a bug mid feature.  I might take a break from the feature and clean up the code.  I might forget to pull in other peoples changes for a while.  I might think I pulled in peoples changes, but haven&#39;t.  I might chase down a rabbit, trying a bunch of things with a bunch of poorly formed, poorly named, and just plain awful commits.  I might need to share code with a colleague that is riddled with half implemented work.</p>
  <p>
  Reality is messy, and there is nothing wrong with changing our git commit history to tell a more compelling story about our intention with the changes, not the unfocussed journey that got us there.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.006.jpg" alt="git rebase -i HEAD~25 slide 06" />
  </p>
  <p>
  Git rebase, and similar commands do allow us to change what actually happened.  Purest might complain your repository is an untrue reflection of what truly happened.  And, I agree!  It&#39;s a good thing that git allows us to clean up our disorganized self and our disorganized code.</p>
  <p>
  We alter history all the time.  My first draft of this talk is very different that what I am presenting now.  All other mediums are highly edited and tailored to the intended audience to deliver a clear and concise message, removing our mis-steps and better communicating our intent.  This benefits the audience, which will be your colleagues and most likely also your future self.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.007.jpg" alt="git rebase -i HEAD~25 slide 07" />
  </p>
  <p>
  Git is a a distributed source code repository.  Unlike centralized repositories such as Subversion, every copy of a git repo IS itself also a git repository, and every copy can behave like a server and most copies can also behave like a client. So you push to the remote server and you pull into your local client.  Most people use it like a centralized repository, but it&#39;s not, so let&#39;s consider two falsehoods in what I just told you.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.008.jpg" alt="git rebase -i HEAD~25 slide 08" />
  </p>
  <p>
  Firstly, you don&#39;t really pull into your local code.  You actually fetch code from a remote repository and then you merge it into your local code.  You now have your code locally, but also a local copy of the remote code. And then the legitimate remote code on the <code class="inline">origin</code> server.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.009.jpg" alt="git rebase -i HEAD~25 slide 09" />
  </p>
  <p>
  If you look at your <code class="inline">.git/config</code> you will see the <code class="inline">origin</code> label is a variable,
  not a constants, and these variables help hook up your local copy with a remote one.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.010.jpg" alt="git rebase -i HEAD~25 slide 10" />
  </p>
  <p>
  Words matter.  Master is an unfortunately named term in our
  industry and is the default name for your primary branch,
  in this talk I will refer to it as main.  You might not always
  be able to change the default, but try, there are many better
  words without the emotional and historical baggage.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.011.jpg" alt="git rebase -i HEAD~25 slide 11" />
  </p>
  <p>
  And <code class="inline">origin</code> refers to a remote git server to an imaginary repository on GitHub.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.012.jpg" alt="git rebase -i HEAD~25 slide 12" />
  </p>
  <p>
  In this repo, we are tracking two remote branches <code class="inline">main</code> and <code class="inline">f/awesome</code>
  that both refer back to our <code class="inline">origin</code> remote server.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.013.jpg" alt="git rebase -i HEAD~25 slide 13" />
  </p>
  <p>
  So <code class="inline">git pull</code>, which we might be used to using, actually updates your local
  copy of the <code class="inline">origin</code> remote code using a <code class="inline">git fetch</code>, and then merges that
  local <code class="inline">origin</code> code into our actual local local code.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.014.jpg" alt="git rebase -i HEAD~25 slide 14" />
  </p>
  <p>
  The second falsehood is about git&#39;s decentralization.
  We mostly just push and fetch from <em>the</em> server, but we could have more,
  so we are pedantically fetching from <em>a</em> server, and so each remote server
  needs a uniquely identifying name.  The default is <code class="inline">origin</code> but another
  popular name is <code class="inline">upstream</code>.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.015.jpg" alt="git rebase -i HEAD~25 slide 15" />
  </p>
  <p>
  Let&#39;s now consider Amy, a developer getting back from a totally unplugged holiday.
  First thing back, she wants to forcibly get the latest code from <code class="inline">origin</code>.
  She enters the main branch, fetches code from the <code class="inline">origin</code> server and then does a
  hard reset against the local <code class="inline">origin/main</code> branch.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.016.jpg" alt="git rebase -i HEAD~25 slide 16" />
  </p>
  <p>
  This might be overkill, but Amy know she has no local changes and wants to start fresh.
  Other reasons to do a hard reset could be that you are lost in the <em>git-universe</em>
  and need to reset yourself to a known place.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.017.jpg" alt="git rebase -i HEAD~25 slide 17" />
  </p>
  <p>
  Amy is now to ready to work on a new “jump to conclusions” feature.  She creates a new branch,
  and then immediately tells the <code class="inline">origin</code> server about this new branch so that she can push and fetch with ease.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.018.jpg" alt="git rebase -i HEAD~25 slide 18" />
  </p>
  <p>
  Git checkout serves many purposes, and very recently, <a href="https://github.blog/2019-08-16-highlights-from-git-2-23/">as of last August</a>,
  git is providing two separate commands
  to track those purposes with better names.  We can now <code class="inline">git switch</code> to jump between branches and <code class="inline">git restore</code>
  to undo local changes.  I will continue to use <code class="inline">git checkout</code> for this talk, just know that change is coming.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.019.jpg" alt="git rebase -i HEAD~25 slide 19" />
  </p>
  <p>
  Amy makes great progress on the feature, trying to follow the mantra of make the hard change
  easy, and then make the easy change... one small commit at a time.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.020.jpg" alt="git rebase -i HEAD~25 slide 20" />
  </p>
  <p>
  Amy was in a rush on that last commit “doing stuff” and could write a better message.
  She amend&#39;s that last commit changing the message to “hard change”.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.021.jpg" alt="git rebase -i HEAD~25 slide 21" />
  </p>
  <p>
  And now we have diverged.  Even changing the description of a commit changes the commit.
  So now our local feature branch is different from our local copy of our <code class="inline">origin</code> remote branch.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.022.jpg" alt="git rebase -i HEAD~25 slide 22" />
  </p>
  <p>
  Git status is not a network operation.  So we could still be behind our remote version of the
  remote code.  That&#39;s why we want to <code class="inline">git fetch</code> all the time.  This will reduce accidental
  conflicts when you thought you had the latest remote code, but actually didn&#39;t.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.021.jpg" alt="git rebase -i HEAD~25 slide 21" />
  </p>
  <p>
  This diverged makes sense because we changed our commit, we changed history.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.024.jpg" alt="git rebase -i HEAD~25 slide 24" />
  </p>
  <p>
  Visually, we amended our last commit changing a “C” into a “D”.  We did the change,
  it&#39;s our branch, let&#39;s forcibly but with room for error push that to our remote
  <code class="inline">origin</code> server using <code class="inline">git push --force-with-lease</code>.  The “--with-lease” avoids overwriting
  commits that others might have pushed to our branch.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.025.jpg" alt="git rebase -i HEAD~25 slide 25" />
  </p>
  <p>
  Amy then notices she also forgot to add a file to that last commit. Let&#39;s use the <code class="inline">-A</code> to add all
  changes to avoid this going forward.  We can also add a <code class="inline">--no-edit</code> flag as we don&#39;t want to change
  the commit message this time.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.026.jpg" alt="git rebase -i HEAD~25 slide 26" />
  </p>
  <p>
  But, the code isn&#39;t really flowing and does not tell a good story of “making the hard change easy, and then making the easy change”,
  so Amy wants to re-order the commits to tell a better story of the progression of this feature. We can do this with an
  interactive <code class="inline">-i</code> rebase.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.027.jpg" alt="git rebase -i HEAD~25 slide 27" />
  </p>
  <p>
  Once the commits are in a better logical order, as opposed to their original dis-organized time-based order we are ready to push our diverged local branch. Again, this is our branch, we own it, we are the only ones working on it, so we are going to force our changes back to the origin server.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.028.jpg" alt="git rebase -i HEAD~25 slide 28" />
  </p>
  <p>
  Amy leaves for the day, and back tomorrow to finish the work.  Her teammate Bob was also
  working and he pushed new code to the teams main branch.  Let&#39;s pull that work into our branch.
  First we need to fetch from our origin server.  Second, we rebase against that local main branch
  identified as <code class="inline">origin/main</code>.  This <code class="inline">origin/main</code> is the local copy of the main branch stored in our remote server labelled <code class="inline">origin</code>.
  Just like <code class="inline">origin/f/jumps</code> is the local copy of the <code class="inline">f/jumps</code> branch stored in our remote server labelled <code class="inline">origin</code>.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.029.jpg" alt="git rebase -i HEAD~25 slide 29" />
  </p>
  <p>
  Visually.  Yesterday Amy did some work in her local branch, but Bob was working too.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.030.jpg" alt="git rebase -i HEAD~25 slide 30" />
  </p>
  <p>
  So today Bobs new commits are in the main branch, and are visible once we “git fetch”.  Now we can rebase our work against that the new code.  Amy and Bob communicate well together so no conflicts are expected.</p>
  <p>
  The first step in a rebase will detach Amy&#39;s local commits from her branch.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.031.jpg" alt="git rebase -i HEAD~25 slide 31" />
  </p>
  <p>
  The first step in a rebase will detach Amy&#39;s local commits from her branch.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.032.jpg" alt="git rebase -i HEAD~25 slide 32" />
  </p>
  <p>
  And then will re-attach it back to now include those changes from Bob.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.033.jpg" alt="git rebase -i HEAD~25 slide 33" />
  </p>
  <p>
  The output tries to relay that information.  We rewind back to where things diverged and then apply our changes in sequence to the new code base with the new commits.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.034.jpg" alt="git rebase -i HEAD~25 slide 34" />
  </p>
  <p>
  With interactive rebase, you can also edit individual commits.  The process is similar to debug breakpoints.  Where the “applying of commits” will stop mid process and allow you to make changes.  This is a great way to make fix up local errors in your local branch.  Here you will edit that interim version of the code and make it more perfect.  Add your changes and then continue on with the rebase.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.035.jpg" alt="git rebase -i HEAD~25 slide 35" />
  </p>
  <p>
  And this is why rebase gets a bad name, and why we shouldn&#39;t rebase against shared branches like main.  On the left was our tiny little amended commit.  But, we forgot to push the change and then someone else (maybe even us) pushed code to that remote branch that still had the older “C” commit.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.036.jpg" alt="git rebase -i HEAD~25 slide 36" />
  </p>
  <p>
  We have diverged at commit “B” and if try and rebase then things will go very badly, as we now have the older conflicting commit “C”, changes from others, and then our updated “D” commit and then our changes after that. The moral is really, please always be fetching, always push to your remote branch, and avoid changing history on shared branches.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.037.jpg" alt="git rebase -i HEAD~25 slide 37" />
  </p>
  <p>
  If ever you are mid rebase and your repository catches fire with strange merge conflicts, warnings of empty commits, or if you messed up; then you can always give up with —abort flag and try again later if you dare.  I sometimes get too over eager with changing history and —abort helps, a lot.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.038.jpg" alt="git rebase -i HEAD~25 slide 38" />
  </p>
  <p>
  Back and Amy.  She find&#39;s a bug in some of Bobs code, but he is not available so Amy goes ahead and fixes the issue locally.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.039.jpg" alt="git rebase -i HEAD~25 slide 39" />
  </p>
  <p>
  As it is unrelated to Amy&#39;s feature work, she is in the habit of automatically moving those unrelated change to the top of her local commit history.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.040.jpg" alt="git rebase -i HEAD~25 slide 40" />
  </p>
  <p>
  Amy likes to have unrelated bug fixes at the top of her commits, for just such an occasion.
  Turns out the bug is affecting a lot of people and the change needs to be out today.
  Amy&#39;s feature however isn&#39;t done, but because she isolated the bug fix and put it “next in line”
  in her commit history we can safely cherry-pick it out of her branch, drop it into a a new
  <code class="inline">b/off-by-one</code> branch and merge it separately without having to prematurely push her
  unfinished feature.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.041.jpg" alt="git rebase -i HEAD~25 slide 41" />
  </p>
  <p>
  When Amy returns to her feature branch, she can remove that commit by deleting it from her interactive rebase shell.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.042.jpg" alt="git rebase -i HEAD~25 slide 42" />
  </p>
  <p>
  And then rebase against origin/main that now has that bug fix in its commit history.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.043.jpg" alt="git rebase -i HEAD~25 slide 43" />
  </p>
  <p>
  Your git commit history should tell a story as the code evolved to deliver a great feature, fix an awesome bug and clean up the code.  The reality might have been 8 mis-steps in 8 separate commits, some fat fingered typos, interspersed code clean up and random bug fixes.</p>
  <p>
  Taking the poorly constructed story and editing it into a clear and concise summary of what you intended will help your future self when you return to this code in a few weeks, months or years.</p>
  <p>
  Let&#39;s qualify this with an example.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.044.jpg" alt="git rebase -i HEAD~25 slide 44" />
  </p>
  <p>
  We recently introduced Apple Pay at our company. Here&#39;s an isolated snippet of code to
  create an Apple Pay Session to get the payment process going.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.045.jpg" alt="git rebase -i HEAD~25 slide 45" />
  </p>
  <p>
  The Apple Pay documentation was comprehensive, but the process was arduous. Here is a small snippet of PHP for code that I wrote while implementing this feature.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.046.jpg" alt="git rebase -i HEAD~25 slide 46" />
  </p>
  <p>
  Look at all the hard coded-ness in there, absolutely awful, but necessarily as the code above
  is needed along side some JavaScript code, some configuration code within our Apple Pay account
  and within our payment gateway.  The intent of this code was short lived and used to get the
  end-to-end to be demonstrably working as there are many moving parts.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.047.jpg" alt="git rebase -i HEAD~25 slide 47" />
  </p>
  <p>
  And I totally committed this work.  This work help demonstrate that the other, well-written,
  helper code actually worked as expected.  Slowly but surely the code was re-worked into
  it&#39;s final production-ready state.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.048.jpg" alt="git rebase -i HEAD~25 slide 48" />
  </p>
  <p>
  Refactoring is about small, behaviour preserving incremental and safe steps. Refactoring is not an excuse to go back and fix “TODOs” like what we saw with the Apple Pay example.  There&#39;s a great quote from Kent Beck that I have repeated a few times already about making the hard change easy, and then making the easy change.  My interpretation is that you want to refactor, rework, re-architect your system before trying to implement a change.</p>
  <p>
  In a perfect world, you know exactly how to make the the hard change easy and prepare your code for the eventual change. In practice, that hard.  Git rebase allows us to use near perfect hindsight so that your code changes flow as a coherent set of refactoring, and then the actual feature changes after.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.049.jpg" alt="git rebase -i HEAD~25 slide 49" />
  </p>
  <p>
  With our Apple Pay example, it became apparent, but not at first, to extract a PayPal method
  into a more generic wallet  helper.  This was originally discovered well after I had created
  duplicate code, but the final version had an isolated refactoring commit as you see above.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.050.jpg" alt="git rebase -i HEAD~25 slide 50" />
  </p>
  <p>
  Adding support for ApplePay became a one-liner.  This wasn&#39;t my first version of my solution,
  not even my second, but it was the solution that I delivered as a pull-request for review
  from my team.  What an &quot;easy change&quot;, I made :-)</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.051.jpg" alt="git rebase -i HEAD~25 slide 51" />
  </p>
  <p>
  Ideally our code is bug free.  Second to ideally, we fix bugs in isolation.  In reality, many times we fix bugs
  as we find them.  By isolating bug fixes to just address the fixing of the bug we can then move
  those unrelated changes to the top of our branch commits.  This gives us two benefits.</p>
  <p>
  First, we don&#39;t have the overhead of fixing the bug in isolation if it&#39;s not needed.</p>
  <p>
  But second, like we saw with Amy, we can easily cherry-pick that commit into a separately
  branch without being forced to prematurely pull in other code that isn&#39;t ready for production.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.052.jpg" alt="git rebase -i HEAD~25 slide 52" />
  </p>
  <p>
  Here&#39;s a javascript bug that was observed when implementing apple way.  Captured as as an isolated commit.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.053.jpg" alt="git rebase -i HEAD~25 slide 53" />
  </p>
  <p>
  Separately, we had another bug fix for a syntax error in an exceptional scenario.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.054.jpg" alt="git rebase -i HEAD~25 slide 54" />
  </p>
  <p>
  We could use this rev-list command to figure out how far back to go with our interactive rebase.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.055.jpg" alt="git rebase -i HEAD~25 slide 55" />
  </p>
  <p>
  Or, I usually just use GitHub.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.056.jpg" alt="git rebase -i HEAD~25 slide 56" />
  </p>
  <p>
  With interactive rebase, I locate those two unrelated bug-fix commits.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.057.jpg" alt="git rebase -i HEAD~25 slide 57" />
  </p>
  <p>
  And move them to the top of the file.  Now I am ready to cherry-pick, if needed, otherwise the bug fixes will go out
  when the overall feature is ready.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.058.jpg" alt="git rebase -i HEAD~25 slide 58" />
  </p>
  <p>
  Pull request and git commit logs act as a great history of the evolution of your system.
  Consider organizing your commits by first addressing bugs, if any, then addressing refactoring, if any,
  and then providing feature tell a compelling story about how you made the hard change easy,
  and then how you made the easy change.  It will tell a great story to those reviewing your
  code in more detail; it acts as great documentation about the &quot;why&quot; without riddling your
  code with comments; and it allows you the agility to split work out into separate pull-requests
  should some of your work be <em>ok</em> to merge, but others, not so much.</p>
  <p>
    <img src="/images/blog/talks/git-rebase-webcampzg/gitrebase.059.jpg" alt="git rebase -i HEAD~25 slide 59" />
  </p>
  <p>
  Git rebase gives us the tooling to alter our disorganized history into that coherent story allowing us to edit commit messages,
  re-order commits, fix up blemishes, squash commits into more logical grouping and easily pull in
  code from others.</p>
  <p>
  Your future self, and other future maintainers will be thankful for the effort,
  in a similar manner that I hope you are thankful for the effort of speakers today trying to distill
  complex subjects down into 25 minute sound bites.</p>
  """
end
def article("the-code-i-didnt-write") do
  """
  <p>
  I enjoy reading job listings. You can learn a lot about</p>
  <ul>
    <li>
  <strong>What&#39;s trending</strong> from employers  </li>
    <li>
  How employers <strong>conduct</strong> their screening process  </li>
    <li>
  <strong>Where</strong> the jobs are located  </li>
    <li>
  The current <strong>trend about remote</strong> workers  </li>
    <li>
  The <strong>value</strong> that the company places on their hiring practices  </li>
  </ul>
  <p>
  In this article, I will focus on one question that I have
  seen popup in a few times and it goes something like this...</p>
  <h2>
  Show us some of your code, and talk about it</h2>
  <p>
    <img src="/images/blog/the-code-i-didnt-write/academia_vs_business.jpg" alt="Academia vs Business" />
  </p>
  <div class="reference">
    <a href="https://xkcd.com/664/">XKCD Cartoon</a></div>
  <p>
  What a fascinating question.</p>
  <p>
  There are so many layers to an answer, but you also must bear in mind the target audience.  In particular</p>
  <ul>
    <li>
  This is geared towards your new employer  </li>
    <li>
  They probably have zero context  </li>
    <li>
  What angle are you going for (more on that below)  </li>
    <li>
  Are you <em>allowed</em> to share the code in question  </li>
  </ul>
  <p>
  You are writing this as part of your <em>best self</em>, this is not being untrue to yourself anymore than it&#39;s untrue to wear a suit to an interview even though you might not wear them everyday.</p>
  <p>
    <img src="/images/blog/the-code-i-didnt-write/tuxedo.jpg" alt="Tuxedo After 6pm" />
  </p>
  <div class="reference">
    <a href="https://www.imdb.com/title/tt2235831/mediaviewer/rm3052254720">Image From IMDB</a></div>
  <p>
  You must be careful with proprietary closed source examples.  Avoid that code if you can, or if you must please ensure that it sufficiently obfuscated.</p>
  <p>
  You must also communicate to your audience that probably has zero context about the code, they might not even be that familiar with the programming language about why it is so ...</p>
  <ul>
    <li>
  Great,  </li>
    <li>
  Or clever,  </li>
    <li>
  Or performant,  </li>
    <li>
  Or most actively maintained,  </li>
    <li>
  Or most liked,  </li>
    <li>
  Or because it is super stable,  </li>
    <li>
  Or boring but works great,  </li>
    <li>
  Or maybe has a some historical significance  </li>
  </ul>
  <p>
  It is also an intimidating question... you have to pick just <em>one</em> piece of code and what&#39;s beautiful to some might be utter rubbish to others.  Maybe someone thinks your code is too clever (and it shouldn&#39;t be), or maybe your code is too simple (and does not consider enough edge cases), or maybe you used a <code class="inline">foreach</code> loop and everyone knows (tongue in cheek) that a <code class="inline">map</code> is always better.</p>
  <p>
  I see three general approaches to answering this question</p>
  <h4>
  Isolated Code</h4>
  <p>
  Code that did some task, but is isolated enough that you could explain why it&#39;s awesome to almost anyone.  This would be the most straight forward answer.  Maybe you implemented an algorithm, or wrote some interesting query, or connected to an API, or solved a programming challenge.</p>
  <h4>
  Symbolic Code</h4>
  <p>
  Code that is more symbolic and has a great story behind it (so its more the nostalgia of the code versus the code itself).  Maybe it was the first code you wrote as a paid software developer, or in a language you learned on your own, or the first commit in a project that blossomed into something great.</p>
  <h4>
  Humble Code</h4>
  <p>
  Code that elicits a negative reaction and acts as a reminder of the terrible, or obtuse, or complicated, or even clever code that you had written in the past and now have to live with that decision. Sometimes we learn better from our mistakes, and helps us to stay humble in a profession that sometimes runs on caffeine and egos.</p>
  <h3>
  Write for the audience, not the author</h3>
  <p>
  Context matters.  Tabs or Spaces; it depends.  Ruby or Java; it depends.  Rebase or merge; it depends.</p>
  <p>
  Regardless how pure you want your answer to be, in this context it is being asked as a means to evaluate your job application.  We are trying to demonstrate how <strong>great</strong> a candidate you are, or at the least to make enough of an impression to make it to the next step in the process.</p>
  <p>
  In one (of many) great talks from <a href="http://chadfowler.com/">Chad Fowler</a>, we get some insight into the <a href="https://www.youtube.com/watch?v=sAsRtZEGMMQ">dangers of stability and homeostatis</a>.  The system <em>should</em> be heterogenous by default and getting into the habit of throwing code away.</p>
  <p>
    <img src="/images/blog/the-code-i-didnt-write/heterogenous_by_default.jpg" alt="Heterogenous By Default" />
  </p>
  <p>
  Contrast that with an tweet from from <a href="https://dhh.dk/">David Heinemeier Hansson</a> at Basecamp.</p>
  <blockquote class="twitter-tweet" data-lang="en">
    <p lang="en" dir="ltr">Fun fact: The <a href="https://twitter.com/basecamp?ref_src=twsrc%5Etfw">@basecamp</a> billing script that runs once a day was written by <a href="https://twitter.com/jamis?ref_src=twsrc%5Etfw">@jamis</a> more than a decade ago, and has barely been touched since. 135 lines of Ruby that&#39;s responsible for collecting hundreds of millions of dollars in revenues 🤑</p>&mdash; DHH (@dhh) <a href="https://twitter.com/dhh/status/1098007632852336640?ref_src=twsrc%5Etfw">February 19, 2019</a></blockquote>
  <script async="async" src="https://platform.twitter.com/widgets.js" charset="utf-8">
  </script>
  <p>
  So, the same piece of code <code class="inline">you think is awesome</code> could be seen as great when shone in one light, and abismal in the other.</p>
  <p>
  Don&#39;t overly tailor your answer, but indeed consider looking into your audience to see what they value and then try to find code that will resonate with them.</p>
  <h3>
  How would I answer that question?</h3>
  <p>
  It depends.</p>
  <p>
  In this article I wanted to explore an answer that, unless you are <a href="https://youtu.be/ZgdUWXf8jJk">Bob Newhard waking from a dream sequence</a>, is somewhat of a cop-out answer.</p>
  <p>
    <img src="/images/blog/the-code-i-didnt-write/bob_hope_finale.jpg" alt="Bob Hope Finale" />
  </p>
  <p>
  But here goes nonetheless.</p>
  <h3>
  I am most proud of the code I did not write</h3>
  <p>
  Much like the feeling of pride when you get to delete code,
  there is equal enjoyment when you can avoid writing code in the first place.  Maybe you were able to solve the problem in a <em>simpler</em> way, or you were able to avoid doing <em>what every does in similar situations</em> because it was not needed in this particular case.</p>
  <p>
  In the abstract, this is a bit too motherly to provide much help to anyone.  So let&#39;s instead look at a few examples to illustrate my thinking about <em>not</em> writing code.</p>
  <h4>
  Flat Files Over A Database</h4>
  <p>
  Heaven forbid, but yes I recently (2015) wrote an API that stored data in flat files.</p>
  <p>
  I stored the data in JSON and despite some initial technical push-back, I was afforded the leeway to pursue this design, and it worked out extremely well. Here are a few things that I helped give me confidence this was the right approach.</p>
  <ul>
    <li>
      <p>
  Unclear operations environment.  The consumer of the API (a wordpress site) and the overall deployment architecture was a bit in flux including which technologies would be available, and who would be responsible for caching them.    </p>
    </li>
    <li>
      <p>
  HTTP Level Caching.  The API was delivered over HTTP, and so we could leverage caching using HTTP headers in the I/O from reading the flat files became a bottleneck.    </p>
    </li>
    <li>
      <p>
  Unclear solution.  Using <a href="">tracer bullets</a> we built the system knowing that what we delivered and how it would be used remained in flux.  This makes NoSQL (or NewSQL) and JSON a great choice for a more fluid data schema.    </p>
    </li>
  </ul>
  <p>
  And 4 years later, the flat files are still running strong. As a small confession, part of my concession when getting approval to push flat files was that I would eventually write a MySQL storage adapter.  And I did write it. But, it was never deployed. The flat-file implementation was not only simpler to deploy but also simpler to back-up and version control.</p>
  <p>
  So despite the fact that I actually <em>did</em> write the MySQL adapter, as it was never officially used, I consider it among my examples of <strong>code I didn&#39;t have to write</strong>.</p>
  <h4>
  Zero Caching</h4>
  <p>
  I wrote a mortgage calculator API for a new mortgage broker (<a href="https://hatchmortgage.com/">Hatch Mortgage</a>) that wanted to make things like <em>affordability</em> and <em>payouts schedules</em> much easier for people to navigate and understand.  This company was more interested in helping it&#39;s client answer questions from their perspective:</p>
  <ul>
    <li>
  I make this this much, how much house can I afford  </li>
    <li>
  I want this big a house, how much downpayment do I need  </li>
  </ul>
  <p>
  The API was 100% functional in that the code took all necessary inputs and re-cacluated everything from scratch each time.  No caching, no look-up tables, just a few <em>calculus</em> calls and lots of data returned the client.</p>
  <p>
  Why so proud of a few <em>math</em> functions?</p>
  <p>
  Well, Hatch Mortgage switched IT companies mid project (due to reasons outside of my control).  As a sub-contractor on this project, I delivered on the API but was not involved in the overall design and implementation of website.</p>
  <p>
  The front end was re-written using Wordpress, but that little Mortgage API remained, unchanged and proved to be fast enough for their needs, and continues to be used to this day (2019).</p>
  <p>
  I focussed first on being <em>right</em>, and then on being <em>pretty</em>, and it turns out we didn&#39;t need to <em>make it fast</em> (as it was already fast enough for the use case).  Indeed some of the API payloads are large coming in at 100kb of data, but that pales in comparison to say a poorly compressed 4mb JPEG image.</p>
  <h4>
  Let Your Email Provider Do The Filtering</h4>
  <p>
  For context, this particular client of mine <em>loves</em> email and as a developer I can appreciate its simplicity so tacking on a product like HelpScout or ZenDesk would not (and in other similar scenarios in fact <strong>did not</strong>) work.</p>
  <p>
  When working on a payment gateway for a client, there was a request to have any failed payments route to an additional email address in addition to one already being CCed on all payment notifications.</p>
  <p>
  Instead of <em>complying directly</em> with the ask and updating our reconciliation code when updates are received from our payment gateway, I pushed back and inquired a bit more about why this was wanted.</p>
  <p>
  Turns out that the underlying need could be more easily accomplished with an <em>email group</em> and using <em>email filters</em> to accomplish the desired goal.  So instead of implementing custom one-off <em>filters</em> within our code base, we pushed that into our email server which had much better filter capabilities.</p>
  <p>
  In the end we were able to give the client even more customized filters than they had originally thought possible; and the only coding change was a small <strong>config</strong> to the newly configured email group.</p>
  <h4>
  Re-Using IDs</h4>
  <p>
  Last example.</p>
  <p>
  Here, the client was moving from a custom invoicing and payment system to integrate with an <em>enterprise</em> accounting system.  The payment system was staying in place, just the invoicing software was being replaced.</p>
  <p>
  Instead of integrating that accounting system directly with the payment gateway, we instead wrote a small adapter to make those accounting invoices look and behave like the  custom invoices.</p>
  <p>
  That tiny adapter (let&#39;s say 100 lines of code or so) meant that our automatic billing solution remained unchanged, our custom checkout webapp also unchanged and our reconciliation service (to double check that all payments from our gateway were properly handled) also remained unchanged.</p>
  <p>
  Our solution ended up providing a second benefit.  Turns out that the accounting software had some shall we say <em>performance bottlenecks</em> when serving up invoice data.  As invoices are write-once, we enabled <em>caching</em> by changing the <em>fetch</em> of the invoice data to only be done the first time, which took only a few lines of extra code.</p>
  <h3>
  Be proud of the code you don&#39;t write.</h3>
  <p>
  Although the examples above did involve <em>some</em> code, the underlying spirit of implementing the feature focussed on using what was already available.</p>
  """
end
def article("installing-packer-for-image-creation") do
  """
  <p>
  Now that we have <a href="/articles/installing-chefdk-on-mac">installed chefdk</a>
  and are connected to our <a href="/articles/connecting-to-aws-using-saml">aws via saml</a>
  let&#39;s install <a href="https://www.packer.io/">Packer</a> to help us
  create (and later automate) the creation of a preconfigured AWS server.</p>
  <p>
  First we need to install <a href="https://golang.org/">Golang</a>.  For this,
  I used Brew as <a href="https://golang.org/doc/install/source">installing from source</a>
  see way too complicated.</p>
  <pre><code class="bash language-bash">brew install go</code></pre>
  <p>
  For packer however, once <a href="https://golang.org/">Golang</a> is installed, it seems rather straight forward
  to <a href="https://www.packer.io/intro/getting-started/install.html#compiling-from-source">install from source</a>.</p>
  <pre><code class="bash language-bash">mkdir -p ~/src &amp;&amp; \\
    cd ~/src &amp;&amp; \\
    git clone https://github.com/hashicorp/packer.git &amp;&amp; \\
    cd packer &amp;&amp; \\
    make dev</code></pre>
  <p>
  The installed things into <code class="inline">~/src/packer</code>. Let&#39;s make the packer
  tools available from anywhere on your machine by adding it
  to your path.</p>
  <pre><code class="bash language-bash">vi ~/.bash_profile</code></pre>
  <p>
  And in there add a line that looks like the following</p>
  <pre><code class="bash language-bash">...
  PATH=&quot;$HOME/src/packer/bin:$PATH&quot;
  ...
  export PATH</code></pre>
  <p>
  If everything worked as expected then open up a new terminal, and
  check the version of your installed <code class="inline">packer</code></p>
  <pre><code class="bash language-bash">$ packer -v</code></pre>
  """
end
def article("empex-2019-liveview") do
  """
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/title.jpg" alt="My Talk on LiveView" />
  </p>
  <p>
  It was great to be back at <a href="https://empex.co">EMPEX</a> in NYC again this (2019) year.
  Absolutely lovely conference, and this year my talk on LiveView
  was accepted.  Thank you to the organizing committee as my
  talk was submitted only days after the library was made available
  to the public and I hope I did not disappoint.</p>
  <p>
  Here is the actual talk from May 2019</p>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=KvvkWiECvjY">  <img src="https://img.youtube.com/vi/KvvkWiECvjY/0.jpg" alt="Andrew Forward&#39;s talk on LiveView at Empex 2019" />
  </a></p>
  <h3>
  Getting Started</h3>
  <p>
  Checkout the <a href="/articles/liveview-examples">curated List of LiveView Demos</a>
  as it includes links to articles on getting started and adding LiveView to your project.
  If you are adventurous, you could install the <code class="inline">f/live_view_flag</code>
  branch from from <a href="https://github.com/phoenixframework/phoenix/pull/3376">my pull-request to add a -live flag</a>.
  This functionality is expected to be available in 1.5+</p>
  <p>
  Within the talk, I mention of few projects directly.
  The source code has been grouped within the <a href="https://github.com/empex2019liveview">Code Samples on GitHub</a>.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/ilovegit.jpg" alt="I love git" />
  </p>
  <p>
  Look through the <a href="https://github.com/empex2019liveview/hangman/commits/main">git commit history</a>.
  I like to <a href="https://www.youtube.com/watch?v=qpdYRPL3SVE">treat git history like an edited movie</a> as opposed
  to an instagram live feed, and telling a scripted story for posterity I find more useful versus capturing
  the raw reality of potential many missteps.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/liveview_survey.jpg" alt="LiveView Survey" />
  </p>
  <h3>
  Optimizing Dividend Reinvestment - The APP</h3>
  <p>
  I love dividends, and we worked through two examples of migrating <a href="https://dividends.io">a dividend optimization app</a> away from JavaScript and JQuery to LiveView.</p>
  <p>
  Bob owns 100 shares, so he would be paid about $68 a quarter.  Alice has double that, with 200 shares netting
  her $136 every three months.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/july_payout.jpg" alt="July Dividend Payout" />
  </p>
  <p>
  What are Bob and Alice going to do with all the income?
  Obviously buy more shares.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/drip_power.jpg" alt="Drip Power" />
  </p>
  <p>
  Let&#39;s build a application to help Alice and Bob optimize their DRIPs.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/letsgetstarted.jpg" alt="Let&#39;s Get Started" />
  </p>
  <h3>
  Client Side Versus Server Side Rendering</h3>
  <p>
  A (somewhat esoteric) server side only rendition would look like</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/server_rendering.jpg" alt="Server Rending" />
  </p>
  <p>
  We definitely get the simplicity of having the rendering all in one spot.  But the page now needs to store local state to ensure the <em>paint</em> the right display each time.</p>
  <p>
  A client-side version support much improved rich client interactions would look like</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/client_rendering.jpg" alt="Client Rending" />
  </p>
  <p>
  With a client side interaction, some (or all) of the rendering is moved to the browser, state is <em>somewhat</em> shared between between client and server code.  But some interactions now no longer require any communication back to the server.</p>
  <p>
  If we were using jQuery then the client would register the need for the event, and initiate the API call, aggregate the necessary data.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/register_events.jpg" alt="Register Events with jQuery" />
  </p>
  <p>
  We would have some sort API endpoint on the server and decide on the data handshake, where the server has to agree to how the client will call it and the agree needs to agree to how the server will reply.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/api_impln.jpg" alt="Client Server API Implementation" />
  </p>
  <p>
  Our client then updates the display.  Here&#39;s we have plain old HTML templates with javascript, but we could easily be using a templating engine like Mustache or Handlebars, and/or a full on state mangement framework like React, Vue or Angular.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/client_update.jpg" alt="Client Update" />
  </p>
  <h3>
  Ceremony Versus Substance</h3>
  <p>
  Lets not confuse ceremony for substance.  There is a lot of boilerplate involved with setting up rich client-side interactions.  We have API calls registered on the client, and supported on the server.  We need our server to support those API endpoints, a decided upon message format to exchange information, our client needs to register events and make those API calls and finally the client needs to react to changes and update the display.</p>
  <h4>
  Managing Portfolio Ceremony Versus Substance</h4>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/crud_ceremony_substance.jpg" alt="Managing Portfolio Ceremony Versus Substance" />
  </p>
  <p>
  Contrast that with the substance of what we are trying to do… ultimately we are trying to do CRUD operations on our stock positions.  How much ceremony is dependent on the framework you are using, but the substance is usually constant regardless of picking Vue over React over jQuery.</p>
  <h4>
  Login Ceremony Versus Substance</h4>
  <p>
  Our dividending application will support <em>email</em> based authentication, and is implemented with a multi-step form.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/login_step_1.jpg" alt="Login Step 1" />
  </p>
  <p>
  Some find this annoying, but we can&#39;t please everyone all the time.  Our application, like others that are rarely used, can benefit from pushing authentication in the users email so they don&#39;t have to remember another password.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/login_step_2.jpg" alt="Login Step 2" />
  </p>
  <p>
  Ultimately we are trying to authenticate a user, which for our rarely used service is all about generating a secure token, sending it via email, and later validating it.</p>
  <h3>
  An easier way?</h3>
  <p>
  I usually tend to start with jQuery (mostly for the AJAX library and convenient DOM selectors) and then as bugs arrive due to a mismatch between how the client and server handle state (and rendering), then I consider reaching for more sophisticated tools.</p>
  <p>
  But, I am really just building a glorified spreadsheet, so I should not have to reach for tools needed to build Facebook or Spotify so early in the process (if ever)</p>
  <p>
  It really should not be this hard.</p>
  <h3>
  Enter Live View</h3>
  <p>
  And tada, it isn&#39;t.</p>
  <iframe src="/demo/empex" style="border: 0px" width="100%" height="800px">
  </iframe>
  <p>
  Check out the <a href="https://github.com/empex2019liveview/empexlogo">source code our EMPEX logo demo</a>.</p>
  <p>
  <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a> is a library that integrates with Phoenix.  You are going to get rich client-side behaviour using event hooks in the client rendered code (aka html), but all event handlers live on server.  The client-side framework does the rest and you have very little ceremony, and practically no javascript.</p>
  <iframe src="/demo/hangman" style="border: 0px" width="100%" height="800px">
  </iframe>
  <p>
  Check out the <a href="https://github.com/empex2019liveview/hangman">source code for our Hangman game</a>.</p>
  <p>
  So it&#39;s obviously not <em>no</em> javascript, there is LiveView JavaScript that will be run on the client.  We are using Phoenix Channels and WebSockets which also involves JavaScript.  And, finally there are custom HTML phx- tags that are required to pull things together.</p>
  <p>
  Let&#39;s look at the major moving parts of LiveView</p>
  <h3>
  LiveView Client/Server Communication</h3>
  <p>
  For our login behaviour.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/login_step_1.jpg" alt="Login Step 1" />
  </p>
  <p>
  We have the following interactions between the client and the server</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/liveview_login_rendering.jpg" alt="LiveView Login Rendering" />
  </p>
  <p>
  LiveView is still very much page focussed, so we first grab the page normally.  We return the HTML as we normally would.  Nothing special to see here.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/mount_your_view.jpg" alt="Mount your LiveView" />
  </p>
  <p>
  But, as we have tagged this view as a LiveView EEX, we now get a socket connection from the client back to our server.  This allows for the client to push events to the server, but also for the server to push updates back to the client without the need for client hook.  This mounted connection typically results in a no-operation on the client, but there will be duplicate calls on the server when things are being setup for the first time.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/event_register.jpg" alt="Register Your Event" />
  </p>
  <p>
  Events are sent back to the server through the mounted socket, and our LivewView page is really a GenServer that reacts to events and it returns an optimized encoding of your LEEX template.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/handle_event.jpg" alt="Handle Event Code" />
  </p>
  <p>
  And much like a react-ive framework, your view is a reflection of the state of the page,
  so it is simply re-rendered based on the new data.</p>
  <p>
    <img src="/images/blog/talks/empex-2019-liveview/view_based_on_state.jpg" alt="View Based On State" />
  </p>
  <p>
  And that&#39;s about it.  The actual talk dived into a few other aspects
  of Live View, some of which have be written up separately and linked below.</p>
  <ul>
    <li>
  <a href="/articles/liveview-examples">LiveView Examples And Other Articles</a>  </li>
    <li>
  <a href="/articles/from-sockets-to-sessions-with-liveview">Passing Session Data From Socket To Session</a>  </li>
    <li>
  <a href="/articles/executing-custom-javascript-with-liveview">Custom JS with LiveView</a>  </li>
    <li>
  Refactoring client side JavaScript into LiveView (unwritten, but in the talk)  </li>
    <li>
  Usability / User Experience recipes using LiveView (also unwritten)  </li>
    <li>
  Pitfalls to avoid when using LiveView&#39;s (I know, lots to write)  </li>
  </ul>
  """
end
def article("connecting-to-aws-using-saml") do
  """
  <p>
  In this article we will connect to our AWS account using SAML, this will allow us to run
  AWS CLI commands using the same authentication as you use in the browser.</p>
  <h3>
  Installing AWS CLI</h3>
  <p>
  You can <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html">read the full instructions here</a>,
  below are instructions just for the mac and might be out of date.</p>
  <p>
  I strongly advise against anyone simply running bash commands they find on the interwebs.  Go read the code,
  consider doing a checksum and then proceeding.  Asuming you have done that, as I have, then you can continue...</p>
  <pre><code class="bash language-bash">mkdir -p /tmp/awsinstall &amp;&amp; \
    cd /tmp/awsinstall &amp;&amp; \
    curl -o awscli-bundle.zip https://s3.amazonaws.com/aws-cli/awscli-bundle.zip &amp;&amp; \
    unzip awscli-bundle.zip &amp;&amp; \
    sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws</code></pre>
  <p>
  Once installed, you should be able to check the version of your AWS cli</p>
  <pre><code class="bash language-bash">$ aws --version
  aws-cli/1.16.167 Python/2.7.10 Darwin/18.6.0 botocore/1.12.157</code></pre>
  <h3>
  Installing SAML2AWS</h3>
  <p>
  Let&#39;s install <a href="https://github.com/Versent/saml2aws">saml2aws</a> to allow
  us to login and retrieve AWS temporary credentials.  This uses SAML with
  ADFS or PingFederate Identity Providers.</p>
  <pre><code class="bash language-bash">brew tap versent/homebrew-taps
  brew install saml2aws</code></pre>
  <p>
  If that installed as expected, then you should be able check which which version is
  installed, something like</p>
  <pre><code class="bash language-bash">$ saml2aws --version
  2.14.0</code></pre>
  <p>
  Now let&#39;s configure account access (and 12 hour access).  For simplicity let&#39;s call our
  AWS Account Name  <code class="inline">10xdev</code>.  So where ever you see <code class="inline">10xdev</code> please do not</p>
  <h3>
  Connect SAML to your AWS Account</h3>
  <pre><code class="bash language-bash">saml2aws configure -a 10xdev --session-duration 43200</code></pre>
  <p>
  Answer all the questions, with help probably.  Here&#39;s an example using JumpCloud.</p>
  <pre><code class="bash language-bash">? Please choose a provider: JumpCloud
  ? AWS Profile 10xdev
  ? URL https://sso.jumpcloud.com/saml2/awsJumpCloudDeveloper
  ? Username aforward@gmail.com
  ? Password *************************
  ? Confirm *************************</code></pre>
  <h3>
  Login To AWS using SAML</h3>
  <p>
  If everything worked as expected, then you should be able to use <code class="inline">saml2aws</code> to login.</p>
  <pre><code class="bash language-bash">saml2aws login -a 10xdev</code></pre>
  <p>
  Provide your credentials and you should now be logged in for 12 hours</p>
  <pre><code class="bash language-bash">Using IDP Account 10xdev to access JumpCloud https://sso.jumpcloud.com/saml2/awsJumpCloudDeveloper
  To use saved password just hit enter.
  ? Username aforward@gmail.com
  ? Password *************************
  
  Authenticating as aforward@gmail.com ...
  Selected role: arn:aws:iam::9021090210:role/JumpCloudDeveloper
  Requesting AWS credentials using SAML assertion
  Logged in as: arn:aws:sts::9021090210:assumed-role/JumpCloudDeveloper/aforward@gmail.com
  
  Your new access key pair has been stored in the AWS configuration
  Note that it will expire at 2019-05-30 03:07:37 -0400 EDT
  To use this credential, call the AWS CLI with the --profile option (e.g. aws --profile 10xdev ec2 describe-instances).</code></pre>
  <p>
  Now try and run an AWS command, for example listing all S3 buckets in a region.</p>
  <pre><code class="bash language-bash">aws --profile 10xdev s3 ls --region us-east-1</code></pre>
  """
end
def article("liveview-examples") do
  """
  <p>
  <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a>
  for <a href="https://github.com/phoenixframework/phoenix">Phoenix</a> on <a href="https://github.com/elixir-lang/elixir">Elixir</a> is definitely scratching an itch
  in the world of rich client apps, without having to go full-on
  client-side framework.  Here&#39;s a list of open
  source projects, some with online demos and other where you can
  (easily) run the code locally.</p>
  <p>
  Sometimes it&#39;s best to learn by examples, here goes.</p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  Screenshot      </th>
        <th style="text-align: left;">
  Description      </th>
        <th style="text-align: left;">
  References      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/ant_farm.jpg" alt="Ant Farm" />
        </td>
        <td style="text-align: left;">
  A virtual ant farm where every ant was a GenServer process, simulating a basic AI behavior. Originally straightforward, it got much bigger and eventually forgotten. Finally gave the ant farm another go, this time using Elixir only. So I rolled up my sleeves, and surprisingly, four or five hours later I had the ant farm working, and this is how it was done...      </td>
        <td style="text-align: left;">
  <a href="http://codeloveandboards.com/blog/2019/03/28/concurrent-ant-farm-with-elixir-and-phoenix-liveview/">Concurrent ant farm with Elixir and Phoenix LiveView</a>, <a href="https://phoenix-liveview-ant-farm.herokuapp.com/">Ant Farm Demo</a>, <a href="https://github.com/bigardone/phoenix-liveview-ant-farm">Ant Farm Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/observer.jpg" alt="Erlang Observer" />
        </td>
        <td style="text-align: left;">
  A port of <a href="https://github.com/zhongwencool/observer_cli">observer_cli</a> using <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a>. The docs are clear, accurate and provide a very smooth introduction to the capabilities of this interactive server-side rendering way of doing things.      </td>
        <td style="text-align: left;">
  <a href="https://zorbash.com/post/observer-live/">Observer Live</a>, <a href="https://liveview.zorbash.com/">Erlang Observer Demo</a>, <a href="https://github.com/zorbash/observer_live">Erlang Observer Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/markdown.jpg" alt="Markdown Editor" />
        </td>
        <td style="text-align: left;">
  When a client connects to the server they are initially served some HTML content. In our case, what is initially rendered is a textarea prepopulated with some Markdown and the HTML view of that Markdown. However, this is where things get interesting. A websocket connection is opened between the client and the server. The server listens for changes in the textbox, re-renders the HTML, and sends the smallest possible change back to the client which then updates the DOM.      </td>
        <td style="text-align: left;">
  <a href="http://markdown.dichev.io/">Markdown Editor Demo</a>, <a href="https://github.com/nickdichev/markdown-live">Markdown Editor Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/flappy_bird.jpg" alt="Flappy Bird" />
        </td>
        <td style="text-align: left;">
  Flappy Bird Clone written in LiveView.  Some interesting files: <a href="https://github.com/moomerman/flappy-phoenix/blob/master/lib/flappy_phoenix_web/live/game_live.ex">Live &quot;view&quot;</a>, <a href="https://github.com/moomerman/flappy-phoenix/blob/master/lib/flappy_phoenix/game.ex">game logic</a>, <a href="https://github.com/moomerman/flappy-phoenix/blob/master/lib/flappy_phoenix_web/templates/game/index.html.leex">UI (leex)</a>      </td>
        <td style="text-align: left;">
  <a href="https://flappy-phoenix.herokuapp.com/">Flappy Bird Demo</a>, <a href="https://github.com/moomerman/flappy-phoenix">Flappy Bird Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/breakout.jpg" alt="Breakout" />
        </td>
        <td style="text-align: left;">
  A Breakout clone written in pure Elixir, using Phoenix LiveView.      </td>
        <td style="text-align: left;">
  <a href="https://breakoutex.tommasopifferi.com/">Breakout Demo</a>, <a href="https://github.com/neslinesli93/breakoutex">Breakout Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/blackjack.jpg" alt="Black Jack" />
        </td>
        <td style="text-align: left;">
  A Black Jack game      </td>
        <td style="text-align: left;">
  <a href="https://github.com/dorilla/live_view_black_jack">Black Jack Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/hippo.jpg" alt="Hippo" />
        </td>
        <td style="text-align: left;">
  Hippopotamuses have been the subjects of various African folktales. According to a San story; when the Creator assigned each animal its place in nature, the hippos wanted to live in the water, but were refused out of fear that they might eat all the fish. After begging and pleading, the hippos were finally allowed to live in the water on the conditions that they would eat grass instead of fish and would fling their dung so that it can be inspected for fish bones.      </td>
        <td style="text-align: left;">
  <a href="https://elegant-monstrous-planthopper.gigalixirapp.com/">Hippo Demo</a>, <a href="https://github.com/miladamilli/hippo_game_live/">Hippo Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/bear.jpg" alt="Bear Game" />
        </td>
        <td style="text-align: left;">
  A little toy repo to show off a very unnecessarily fast-rendering clock, done with Phoenix LiveView. There&#39;s also a keyboard demo in here, just haven&#39;t had a chance to write it up yet, but it does have a super cute bear 🐻.      </td>
        <td style="text-align: left;">
  <a href="http://palegoldenrod-grown-ibis.gigalixirapp.com/bear_game">Bear Game Demo</a>, <a href="https://github.com/aleph-naught2tog/live_tinkering">Bear Game Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/bear_necessities.jpg" alt="Bear Necessities" />
        </td>
        <td style="text-align: left;">
  Another game involving a bear.      </td>
        <td style="text-align: left;">
  <a href="https://unbearable.nl/">Bear Necessities Demo</a>, <a href="https://github.com/DefactoSoftware/BearNecessities">Bear Necessities Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/property_search.jpg" alt="Milwaukee Property Search" />
        </td>
        <td style="text-align: left;">
  A website that allows filtering by some attributes from Milwaukee&#39;s <a href="http://city.milwaukee.gov/DownloadTabularData3496.htm?docid=3496">Master Property Record</a>      </td>
        <td style="text-align: left;">
  <a href="https://mprop.mitchellhenke.com/">Milwaukee Property Search Demo</a>, <a href="https://github.com/mitchellhenke/mprop">Milwaukee Property Search Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/falling_tiles.jpg" alt="Falling Tiles" />
        </td>
        <td style="text-align: left;">
  Simple shares, rotate the fast-dropping puzzle pieces and create solid lines — which then disappear. Rince and Repeat.      </td>
        <td style="text-align: left;">
  <a href="https://falling-tiles.angelika.me/">Falling Tiles Demo</a>, <a href="https://github.com/angelikatyborska/falling_blocks">Falling Tiles Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/wikipedia.jpg" alt="Wikipedia LiveView" />
        </td>
        <td style="text-align: left;">
  Wikipedia LiveView, a little demo to test out some phoenix_live_view features using the SSE provided from the <a href="https://wikitech.wikimedia.org/wiki/Event_Platform/EventStreams">wikimedia Kafka clusters</a>.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/fklement/wikipedia_live_view">Wikipedia LiveView Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/undo.jpg" alt="Undo" />
        </td>
        <td style="text-align: left;">
  A simple pattern for support an undo feature.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/joerichsen/phoenix_live_view_example/blob/undo_example/lib/demo_web/live/undo_live.ex">Undo Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/logic_simulator.jpg" alt="Logic Simulator" />
        </td>
        <td style="text-align: left;">
  Simulating Logic Gates Switches and Lightbulbs.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/TheFirstAvenger/logic_sim_liveview">Logic Simulator Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/dooms_fire.jpg" alt="Doom&#39;s Fire" />
        </td>
        <td style="text-align: left;">
  DOOM fire animated from server side. Made with <a href="https://github.com/phoenixframework/phoenix_live_view">Phoenix LiveView</a>. Based on <a href="https://github.com/filipedeschamps/doom-fire-algorithm">Doom fire algorithm</a>      </td>
        <td style="text-align: left;">
  <a href="https://elixir-doom-fire.herokuapp.com/">Doom&#39;s Fire Demo</a>, <a href="https://github.com/allmonty/elixir-live-doom-fire">Doom&#39;s Fire Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/svgeditor.jpg" alt="SVG Editor" />
        </td>
        <td style="text-align: left;">
  SVG Editor      </td>
        <td style="text-align: left;">
  <a href="https://showoff.riesd.com/">SVG Editor Demo</a>, <a href="https://github.com/mmmries/showoff">SVG Editor Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/calculator.jpg" alt="Calculator" />
        </td>
        <td style="text-align: left;">
  A simple calculator written in LiveView.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/smeade/phoenix_live_view_example/blob/master/lib/demo_web/live/calc_live/index.ex">Calculator Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/pixels_with_frenemies.jpg" alt="Pixels with Frenemies" />
        </td>
        <td style="text-align: left;">
  Simple app to see how easy it would be to expand the demo apps to real-time collaboration. Spoiler: it was easy, in 1 day. Now just select a color and paint the canvas!      </td>
        <td style="text-align: left;">
  <a href="https://stormy-earth-96381.herokuapp.com/collaborative_canvas">Pixels with Frenemies Demo</a>, <a href="https://github.com/JohnB/phoenix_live_view_example">Pixels with Frenemies Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/load_generator.jpg" alt="Load Generator" />
        </td>
        <td style="text-align: left;">
  Synthetic load generator + ad-hoc scheduler observer powered by LiveView      </td>
        <td style="text-align: left;">
  <a href="https://github.com/sasa1977/demo_system/tree/replace-js-with-live-view">Load Generator Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/sea_battle.jpg" alt="Sea Battle" />
        </td>
        <td style="text-align: left;">
  Sea Battle game (require &quot;registration&quot;)      </td>
        <td style="text-align: left;">
  <a href="https://radiant-plateau-73240.herokuapp.com/">Sea Battle Demo</a>, <a href="https://github.com/Sanchos01/Phoenix-Sea-Battle">Sea Battle Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/bluetooth_low_energy_heart_rate_senor.jpg" alt="Bluetooth Low Energy Heart Rate Sensor" />
        </td>
        <td style="text-align: left;">
  Bluetooth Low Energy Heart Rate Sensor that gets <a href="https://www.w3.org/community/web-bluetooth/">Bluetooth Low Energy&#39;s</a> heart rate sensor data, and presents the results using LiveView.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/khamada611/ble_live_sample">Bluetooth Low Energy Heart Rate Sensor Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/bike_compare.jpg" alt="Bike Comapare" />
        </td>
        <td style="text-align: left;">
  Bike Comparison tool written in LiveView      </td>
        <td style="text-align: left;">
  <a href="https://gist.github.com/andrielfn/6bbf0bf7fa644bfad304752bfae081f9">Bike Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/adventure_capitalist.jpg" alt="Adventure Capitalist" />
        </td>
        <td style="text-align: left;">
  A very simple implementation of <a href="https://en.wikipedia.org/wiki/AdVenture_Capitalist">Adventure Capitalist</a>      </td>
        <td style="text-align: left;">
  <a href="https://github.com/eteubert/open_adventure_capitalist">Adventure Capitalist Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/examples.jpg" alt="Phoenix Live Examples" />
        </td>
        <td style="text-align: left;">
  A collection of examples including: thermostat, snake, autocomplete search, image editor, clock, pacman, rainbow, counter, &quot;top&quot;, CRUD (users), presence      </td>
        <td style="text-align: left;">
  <a href="https://github.com/chrismccord/phoenix_live_view_example">Phoenix Live Examples Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/tablesort.jpg" alt="Table Sort" />
        </td>
        <td style="text-align: left;">
  Table Sort in LiveView      </td>
        <td style="text-align: left;">
  <a href="https://github.com/joerichsen/phoenix_live_view_example/blob/table_example/lib/demo_web/live/table_live.ex">Phoenix Table Sort Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/table_filter.jpg" alt="Table Filter" />
        </td>
        <td style="text-align: left;">
  Table Filter in LiveView      </td>
        <td style="text-align: left;">
  <a href="https://medium.com/@imartinat/table-filter-with-phoenix-liveview-cb30508e9fc0">Table Filter Article</a>, <a href="https://github.com/imartinat/phoenix_live_view_tablefilter">Table Filter Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/table_editing.jpg" alt="Table Editing" />
        </td>
        <td style="text-align: left;">
  Table Editing in LiveView      </td>
        <td style="text-align: left;">
  <a href="https://github.com/hurty/phoenix_live_view_example/blob/master/lib/demo_web/live/tables_live.ex">Table Editing Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/match.jpg" alt="Elixir Match" />
        </td>
        <td style="text-align: left;">
  Elixir Match is an online version of the memory card game.      </td>
        <td style="text-align: left;">
  <a href="https://github.com/toranb/elixir-match">Elixir Match Source</a>, <a href="https://github.com/toranb/elixir-match/commit/bac39b8da84f3e672021e9d168589204a3a7682d">Elixir Match LiveView Commit</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/empexdisplay.jpg" alt="Empex Display" />
        </td>
        <td style="text-align: left;">
  Manipulating a SVG graphic for the 2019 <a href="https://empex.co/nyc.html">Empex NY conference</a>      </td>
        <td style="text-align: left;">
  <a href="/demo/empex">Empex SVG Demo</a>, <a href="https://github.com/empex2019liveview/empexlogo">Empex SVG Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/hangman.jpg" alt="Hangman" />
        </td>
        <td style="text-align: left;">
  Impleneting a LiveView UI for Dave Thomas&#39; DIET implementation of hangman <a href="https://empex.co/nyc.html">Empex NY conference</a>      </td>
        <td style="text-align: left;">
  <a href="/demo/hangman">Hangman Demo</a>, <a href="https://github.com/empex2019liveview/hangman">Hangman Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/hanoi.jpg" alt="Towers of Hanoi" />
        </td>
        <td style="text-align: left;">
  Impleneting a LiveView UI for the Towers of Hanoi game      </td>
        <td style="text-align: left;">
  <a href="/demo/hanoi">Towers of Hanoi Demo</a>, <a href="https://github.com/empex2019liveview/hanoi">Towers of Hanoi Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/chat.jpg" alt="LiveView Chat" />
        </td>
        <td style="text-align: left;">
  Tracking Users in a Chat App with LiveView, PubSub Presence      </td>
        <td style="text-align: left;">
  <a href="https://elixirschool.com/blog/live-view-with-presence/">Chat App Article</a>, <a href="https://github.com/elixirschool/live-view-chat">Chat App (Elixir School) Source</a>, <a href="https://github.com/SophieDeBenedetto/phat">PHAT Chat Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/real_time_chat.jpg" alt="Another LiveView Chat" />
        </td>
        <td style="text-align: left;">
  Another LiveView Chat      </td>
        <td style="text-align: left;">
  <a href="https://www.dropbox.com/s/nvr1f2tkmyo41kr/live_chat.mp4">Real-Time Chat Demo (Video)</a>, <a href="https://github.com/CassiusPacheco/live_chat">Real-Time Chat Source</a>, <a href="https://github.com/dwyl/phoenix-chat-example">Based On Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/debounce.jpg" alt="Search Debounce" />
        </td>
        <td style="text-align: left;">
  Phoenix Live View Debounce      </td>
        <td style="text-align: left;">
  <a href="https://dev.to/tizpuppi/phoenix-live-view-debounce-4icf">Phoenix Live View Debounce Article</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/blast.jpg" alt="Blast" />
        </td>
        <td style="text-align: left;">
  Blast Game      </td>
        <td style="text-align: left;">
  <a href="https://blast.alembic.com.au/">Blast Demo</a>, <a href="https://github.com/team-alembic/lambdajam-blast">Blast Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/kanban_board.jpg" alt="Kanban Board" />
        </td>
        <td style="text-align: left;">
  Kanban Board      </td>
        <td style="text-align: left;">
  <a href="https://phoenix-live-view-kanban-board.herokuapp.com/">Kanban Board Demo</a>, <a href="https://github.com/amberbit/board">Kanban Board Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/soup.jpg" alt="Boggle Game (Soup)" />
        </td>
        <td style="text-align: left;">
  Boggle Game called Soup      </td>
        <td style="text-align: left;">
  <a href="https://lettersoup.herokuapp.com/">Soup Boggle Demo</a>, <a href="https://github.com/martinstannard/soup">Soup Boggle Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/trivia.jpg" alt="Tech Trivia Game" />
        </td>
        <td style="text-align: left;">
  Tech Trivia      </td>
        <td style="text-align: left;">
  <a href="https://phx-trivia.gigalixirapp.com/">Trivia Demo</a>, <a href="https://github.com/ramortegui/phoenix_trivia">Trivia Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/compare_node.jpg" alt="Timer Compared To Node" />
        </td>
        <td style="text-align: left;">
  Timer Comparison Node to LiveView      </td>
        <td style="text-align: left;">
  <a href="http://nodeservertime.herokuapp.com/">Node Timer Demo</a>, <a href="https://phoenixliveviewtime.herokuapp.com/">LiveView Timer Demo</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/rubular.jpg" alt="Rubular Regex Parser" />
        </td>
        <td style="text-align: left;">
  Rubular Regex Parser      </td>
        <td style="text-align: left;">
  <a href="https://github.com/ckampfe/rere/blob/master/lib/rere_web/live/rere_live.ex">Rubular Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/moving_imu.jpg" alt="Displays IMU data using Phoenix LiveView" />
        </td>
        <td style="text-align: left;">
  Displays IMU data using Phoenix LiveView      </td>
        <td style="text-align: left;">
  <a href="https://twitter.com/joshnuss/status/1114761613985353728">IMU Data Demo (Video)</a>, <a href="https://github.com/joshnuss/live_imu">IMU Data Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/calendar.jpg" alt="Calendar" />
        </td>
        <td style="text-align: left;">
  Calendar      </td>
        <td style="text-align: left;">
  <a href="https://github.com/nicolasblanco/booking_calendar/blob/master/lib/booking_calendar_web/live/calendar_live.ex">Calendar Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/kubernetes.jpg" alt="Kubernetes Dashboard" />
        </td>
        <td style="text-align: left;">
  Kubernetes Dashboard      </td>
        <td style="text-align: left;">
  <a href="https://www.youtube.com/watch?v=vOaZ_AspfKc">Kubernetes Dashboard Demo (Video)</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/ux_keypad.jpg" alt="UX Keypad" />
        </td>
        <td style="text-align: left;">
  UX Keypad      </td>
        <td style="text-align: left;">
  <a href="https://gist.github.com/ponyesteves/372cf186665ab464413096fd3855f0ca">UX Keypad Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/functional_data_structures.jpg" alt="Visualizing Functional Data Structures with LiveView" />
        </td>
        <td style="text-align: left;">
  Visualizing Functional Data Structures with LiveView      </td>
        <td style="text-align: left;">
  <a href="https://github.com/zkayser/pfds_visualizations">Functional Data Structures Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/todo.jpg" alt="TODO App in LiveView" />
        </td>
        <td style="text-align: left;">
  TODO App      </td>
        <td style="text-align: left;">
  <a href="https://github.com/smeade/phoenix_live_view_example_todos">TODO App Source</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
          <img src="/images/blog/liveview-examples/conway_game_of_life.jpg" alt="Conways Game of Life" />
        </td>
        <td style="text-align: left;">
  Conways Game of Life      </td>
        <td style="text-align: left;">
  <a href="https://github.com/horneber/phoenix-lifeview-conway">Conways Game of Life Demo</a> <a href="https://github.com/horneber/phoenix-lifeview-conway">Conways Game of Life Source</a>      </td>
      </tr>
    </tbody>
  </table>
  <h3>
  Articles</h3>
  <p>
  Below are a variety of articles on LiveView from mange perspectives.</p>
  <ul>
    <li>
  <a href="https://elixirschool.com/blog/phoenix-live-view/">Walk-Through of Phoenix LiveView</a>  </li>
    <li>
  <a href="https://medium.com/qixxit-development/swapping-react-for-phoenix-liveview-db6581f27a14">Swapping React for Phoenix LiveView</a>  </li>
    <li>
  <a href="https://itnext.io/a-story-of-phoenix-liveview-writing-a-crud-application-d938e52894d4">A Story of Phoenix LiveView: Writing a CRUD Application</a>  </li>
    <li>
  <a href="http://jypepin.com/elixir-phoenix-liveview-with-a-real-world-example">Elixir Phoenix LiveView with a real world example</a>  </li>
    <li>
  <a href="https://www.theguild.nl/real-world-phoenix-of-groter-dan-a-liveview-dashboard/">Real World Phoenix |&gt; A LiveView Dashboard</a>  </li>
    <li>
  <a href="https://haughtcodeworks.com/blog/software-development/elixir-phoenix-liveview/">Phoenix LiveView Impressions</a>  </li>
    <li>
  <a href="https://dockyard.com/blog/2018/12/12/phoenix-liveview-interactive-real-time-apps-no-need-to-write-javascript">Phoenix LiveView: Interactive, Real-Time Apps. No Need to Write JavaScript</a>  </li>
    <li>
  <a href="https://medium.com/@iacobson/talking-to-the-liveview-7a19f7e45522">Talking to the LiveView</a>  </li>
    <li>
  <a href="https://github.com/edelvalle/reactor">Reactor, a LiveView library for Django</a>  </li>
  </ul>
  <h3>
  Videos</h3>
  <h4>
  Chris McCord Keynote: ElixirConf 2018 (LiveView Sneak Peak)</h4>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=Z2DU0qLfPIY">  <img src="/images/blog/liveview-examples/video_elixirconf_2018_chrismccord.jpg" alt="Chris McCord Keynote: ElixirConf 2018 (LiveView Sneak Peak)" />
  </a></p>
  <h4>
  Chris McCord Keynote: ElixirConf EU 2019 (LiveView Released)</h4>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=8xJzHq8ru0M">  <img src="/images/blog/liveview-examples/video_elixirconfeu_2019_chrismccord.jpg" alt="Chris McCord Keynote: Code Sync 2019 (LiveView Released)" />
  </a></p>
  <h4>
  How to Create a Counter with Phoenix LiveView</h4>
  <p>
  <a href="https://dennisbeatty.com/2019/03/19/how-to-create-a-counter-with-phoenix-live-view.html">  <img src="https://img.youtube.com/vi/2bipVjOcvdI/0.jpg" alt="How to Create a Counter with Phoenix LiveView" />
  </a></p>
  <h4>
  How to Create a Todo List with Phoenix LiveView</h4>
  <p>
  <a href="https://dennisbeatty.com/2019/04/24/how-to-create-a-todo-list-with-phoenix-liveview.html">  <img src="https://img.youtube.com/vi/qpaFivCmJOY/0.jpg" alt="How to Create a Todo List with Phoenix LiveView" />
  </a></p>
  <h4>
  Integrating Phoenix LiveView</h4>
  <p>
  <a href="https://blog.smartlogic.io/integrating-phoenix-liveview/">  <img src="https://img.youtube.com/vi/FfpRBh2kWCI/0.jpg" alt="Integrating Phoenix LiveView" />
  </a></p>
  <h4>
  Live Coding LiveView w/ Bruce Tate</h4>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=-wzabRyc-0M">  <img src="https://img.youtube.com/vi/-wzabRyc-0M/0.jpg" alt="Live Coding LiveView w/ Bruce Tate" />
  </a></p>
  <h4>
  Getting Started With Phoenix LiveView 3 Parts (Elixircasts)</h4>
  <p>
  <a href="https://elixircasts.io/phoenix-liveview-part-1">  <img src="/images/blog/liveview-examples/video_elixircasts_part1.jpg" alt="Getting Started With Phoenix LiveView Part 1 (Free)" />
  </a></p>
  <p>
  <a href="https://elixircasts.io/phoenix-liveview-part-2">  <img src="/images/blog/liveview-examples/video_elixircasts_part2.jpg" alt="Getting Started With Phoenix LiveView Part 2 (Subscription)" />
  </a></p>
  <p>
  <a href="https://elixircasts.io/phoenix-liveview-part-3">  <img src="/images/blog/liveview-examples/video_elixircasts_part3.jpg" alt="Getting Started With Phoenix LiveView Part 3 (Subscription)" />
  </a></p>
  <h4>
  Setup Phoenix Live View</h4>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=5PWUTABsCmQ">  <img src="https://img.youtube.com/vi/5PWUTABsCmQ/0.jpg" alt="Setup Phoenix Live View" />
  </a></p>
  <h4>
  Phoenix Live View in action</h4>
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=vHKSY5dLK5Y">  <img src="https://img.youtube.com/vi/vHKSY5dLK5Y/0.jpg" alt="Phoenix Live View in action" />
  </a></p>
  <h3>
  Audios</h3>
  <ul>
    <li>
  <a href="https://soundcloud.com/elixirtalk/episode-141-more-liveview-stuff-and-desmond-wants-to-work-with-you">Elixir Talk - Episode 141 - More LiveView Stuff and Desmond Wants to Work With You</a>  </li>
  </ul>
  <h3>
  Other Curated Lists</h3>
  <p>
  List of Lists is fun.  Here are a few other places where LiveView lists are being maintained.</p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  Name      </th>
        <th style="text-align: left;">
  URL      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
  <a href="https://tefter.io">Tefter</a>      </td>
        <td style="text-align: left;">
  <a href="https://tefter.io/zorbash/lists/phoenix-liveview-examples">Phoenix LiveView Examples</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  <a href="https://medium.com/@leandrocesquini">Leandro Cesquini Pereira</a>      </td>
        <td style="text-align: left;">
  <a href="https://medium.com/@leandrocesquini/phoenix-liveview-collection-8259f35ff2b0">Phoenix Liveview Collection</a>      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  <a href="https://shift.infinite.red/@darinw">Darin Wilson</a>      </td>
        <td style="text-align: left;">
  <a href="https://shift.infinite.red/phoenix-liveview-round-up-the-story-so-far-3cbb1648e940">Phoenix LiveView Round-Up: The Story So Far</a>      </td>
      </tr>
    </tbody>
  </table>
  """
end
def article("hackerrank-for-elixir") do
  """
  <p>
  A colleague of mine sent me a link to a hacker rank challenge
  called <a href="https://www.hackerrank.com/challenges/two-characters/problem">Two Character</a></p>
  <p>
  While giving it a try, I noticed no <a href="https://elixir-lang.org/">Elixir</a> solution (yet!).
  Here&#39;s what the template solution looks like</p>
  <pre><code class="elixir language-elixir">defmodule Solution do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
  end</code></pre>
  <p>
  Here is how I am structuring my answer.</p>
  <pre><code class="elixir language-elixir">defmodule Solution do
    def go() do
      num = input(:int)
      text = input(:string)
      IO.puts(&quot;INPUTS \#{num} and \#{text}&quot;)
    end
  
    def input(:string), do: IO.read(:line) |&gt; String.trim()
    def input(:int), do: input(:string) |&gt; String.to_integer()
  end
  
  # Now run your code
  Solution.go()</code></pre>
  <p>
  When you run against HackerRank, you (properly get)</p>
  <p>
    <img src="/images/blog/hackerrank-for-elixir/elixir_solution_setup.jpg" alt="Reading and Writing for HackerRank" />
  </p>
  <p>
  Notice the OUTPUT properly captured the input (i.e. the code is
  working as expected, but not yet as desired).</p>
  <p>
  Now go forth and HackerRank!!!</p>
  """
end
def article("installing-chefdk-on-mac") do
  """
  <p>
  I am getting back into <a href="https://www.chef.io/">Chef</a>, and the landscape
  seems to have changed quite a bit in the last 10 years.  I am going
  to documenting the journey in a series of bite sized articles.</p>
  <p>
  We will focus on the how, and not so much on the why.  If you are
  still in <em>discovery mode</em> trying to find the right solution for
  your needs, then I suggest you keep looking as Chef might not
  be what you need.</p>
  <p>
  The <a href="https://docs.chef.io/install_dk.html">official docs</a> are here.
  Adjust the values accordingly (we are using <code class="inline">sw_vers</code> to tease out
  your Mac OSX version).</p>
  <pre><code class="bash language-bash">CHEF_VERSION=4.0.60 &amp;&amp; \
    CHEF_SUBV=1 &amp;&amp; \
    MACOSX_VERSION=$(sw_vers | grep ProductVersion | egrep -o &#39;\d+\.\d+&#39;) &amp;&amp; \
    curl -o /tmp/chefdk.dmg \
      https://packages.chef.io/files/stable/chefdk/${CHEF_VERSION}/mac_os_x/${MACOSX_VERSION}/chefdk-${CHEF_VERSION}-${CHEF_SUBV}.dmg &amp;&amp; \
    open /tmp/chefdk.dmg</code></pre>
  <p>
  The latest version is <code class="inline">4.0.60</code>, please check <a href="https://downloads.chef.io/chefdk">ChefDK Releases</a>
  to get the appropriate version</p>
  <p>
  That should download the SDK for your Mac (<a href="https://docs.chef.io/install_dk.html">not running OS X then check out the docs</a>).
  and popup the installer.</p>
  <p>
    <img src="/images/blog/installing-chefdk-on-mac/chefdk_installer.jpg" alt="ChefDK Installer" />
  </p>
  <p>
  If you click on the <code class="inline">.pkg</code> that will open up the installer.  Follow the
  instructions.</p>
  <p>
    <img src="/images/blog/installing-chefdk-on-mac/chefdk_install_prompt.jpg" alt="ChefDK Install Prompts" />
  </p>
  <p>
  The installed things into <code class="inline">/opt/chefdk</code>. Let&#39;s make the chefdk
  tools available from anywhere on your machine by adding it
  to your path.</p>
  <pre><code class="bash language-bash">vi ~/.bash_profile</code></pre>
  <p>
  And in there add a line that looks like the following</p>
  <pre><code class="bash language-bash">...
  PATH=&quot;/opt/chefdk/bin:$PATH&quot;
  ...
  export PATH</code></pre>
  <p>
  If everything worked as expected then open up a new terminal, and
  check the version of your installed <code class="inline">chef</code></p>
  <pre><code class="bash language-bash">chef -v</code></pre>
  <p>
  The output should look similiar to</p>
  <pre><code class="bash language-bash">Chef Development Kit Version: 3.10.1
  chef-client version: 14.12.9
  delivery version: master (9d07501a3b347cc687c902319d23dc32dd5fa621)
  berks version: 7.0.8
  kitchen version: 1.24.0
  inspec version: 3.9.3</code></pre>
  <p>
  If you want to see all the tools available, then run</p>
  <pre><code class="bash language-bash">ls -1a /opt/chefdk/bin/</code></pre>
  <p>
  And the output should be similar to</p>
  <pre><code class="bash language-bash">.
  ..
  .gitkeep
  berks
  chef
  chef-apply
  chef-client
  chef-resource-inspector
  chef-run
  chef-shell
  chef-solo
  chef-vault
  cookstyle
  dco
  delivery
  foodcritic
  inspec
  kitchen
  knife
  ohai
  print_execution_environment
  push-apply
  pushy-client
  pushy-service-manager</code></pre>
  """
end
def article("from-sockets-to-sessions-with-liveview") do
  """
  <p>
  This article is based on a very early version of LiveView and
  is here for historical purposes only.</p>
  <p>
  As <a href="http://empex.co/events/2019/conference.html">part of my talk at EMPEX 2019</a> on <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a>,
  I showed a (hackish) way of using encrypted <code class="inline">:flash</code> messages as a means
  to communicate information from the LiveView websocket to the Connection Session.
  If you know a better way, please reach out to me <a href="https://twitter.com/a4word">@a4word</a> to discuss.</p>
  <p>
  If you don&#39;t know about LiveView, maybe <a href="/articles/liveview-examples">read more about that first</a></p>
  <h3>
  Problem</h3>
  <p>
  How can you have your LiveView login form update the user&#39;s
  session across pages?</p>
  <h3>
  Sockets do not store Sessions</h3>
  <p>
  LiveView makes it easy to roll out interactive forms without having to
  write custom JavaScript.  But what if that form wants to store a <code class="inline">user</code>
  record in Session to keep her logged in between pages.</p>
  <p>
  Yes, you could create a single-page-app (SPA) and have the socket maintain
  the state.  But, we are not building a SPA here.</p>
  <p>
  The reason this is not straight straight forward is that LiveView
  communicates with your server through a WebSocket Channel, but your
  sessions are managed using Connection (aka <code class="inline">conn</code>) Session.  So we need
  a way to securely tell LiveView connection on <code class="inline">redirect</code> that our user
  is logged in.</p>
  <h3>
  Sharing Flash Messages</h3>
  <p>
  In web applications, when you do something great (or terrible perhaps)
  most frameworks (Phoenix included) allow you to drop a one-time message
  into your flow, typically called <a href="https://hexdocs.pm/phoenix/controllers.html#flash-messages">Flash Messages</a></p>
  <p>
  Here&#39;s a typical usage (non-LiveView).</p>
  <pre><code class="elixir language-elixir">defmodule HelloWeb.PageController do
    ...
    def index(conn, _params) do
      conn
      |&gt; put_flash(:info, &quot;Welcome to Phoenix, from flash info!&quot;)
      |&gt; put_flash(:error, &quot;Let&#39;s pretend we have an error.&quot;)
      |&gt; render(&quot;index.html&quot;)
    end
  end</code></pre>
  <p>
  Two interesting things to note:</p>
  <ul>
    <li>
  Phoenix does not care about the keys you use.  </li>
    <li>
  Flash messages can be complex structures (just so long as they can be JSON encoded)  </li>
  </ul>
  <p>
  So, we could just as easily store a flash message like</p>
  <pre><code class="elixir language-elixir">defmodule HelloWeb.PageController do
    ...
    def index(conn, _params) do
      conn
      |&gt; put_flash(:info, %{title: &quot;Welcome to Phoenix&quot;, subtitle: &quot;One time flash info!&quot;)
      |&gt; render(&quot;index.html&quot;)
    end
  end</code></pre>
  <p>
  And then in your template you can unwrap the flash message</p>
  <pre><code class="elixir language-elixir">&lt;%= if msg = get_flash(@conn, :info) do %&gt;
    &lt;h1&gt;&lt;%= msg[:title] %&gt;&lt;/h1&gt;
    &lt;h2&gt;&lt;%= msg[:subtitle] %&gt;&lt;/h2&gt;
  &lt;% end %&gt;</code></pre>
  <h3>
  LiveView Flash</h3>
  <p>
  To <em>break out</em> of LiveView, you can redirect to a new page.
  At it&#39;s simplest it looks like</p>
  <pre><code class="elixir language-elixir">{:stop, socket |&gt; redirect(to: &quot;/somewhere_else&quot;)}</code></pre>
  <p>
  And this supports adding Flash messages, for example</p>
  <pre><code class="elixir language-elixir">{:stop,
   socket
   |&gt; put_flash(:info, &quot;Welcome&quot;)
   |&gt; redirect(to: &quot;/account&quot;)
  }</code></pre>
  <p>
  If you dig into the Phoenix and LiveView code, you will see that
  this information is encrypted between the server and client to
  avoid the client <em>writing</em> their own flash messages.</p>
  <p>
    <img src="/images/blog/from-sockets-to-sessions-with-liveview/put_flash.jpg" alt="Putting Flash in a LiveView message" />
  </p>
  <h3>
  Using Flash to pass along login success</h3>
  <p>
  Knowing that the flash messages can contain any JSONable record, and that
  those messages are encrypted, we can use that that flash information
  from the LiveView genserver back to the server.</p>
  <p>
    <img src="/images/blog/from-sockets-to-sessions-with-liveview/flash_user.jpg" alt="Adding authenticated user to flash" />
  </p>
  <p>
  In friendly copy and paste code...</p>
  <pre><code class="elixir language-elixir">def handle_event(&quot;join-mailing-list&quot;, %{&quot;email&quot; =&gt; email, &quot;password&quot; =&gt; password}, socket) do
    validate(email, password)
    |&gt; case do
      :ok -&gt;
        socket
        |&gt; put_flash(:user, %{email: email})
        |&gt; redirect(to: &quot;/account&quot;)
        |&gt; socket_reply(:stop)
      :error -&gt;
        socket
        |&gt; assign(:msg, &quot;Unable to validate your account.&quot;)
        |&gt; socket_reply()
    end
  end
  
  defp socket_reply(socket, reply \\ :noreply), do: {reply, socket}</code></pre>
  <p>
  On the server connection, we can then look at the <code class="inline">:user</code> flash message
  to check if we were logged in from LiveView</p>
  <p>
    <img src="/images/blog/from-sockets-to-sessions-with-liveview/fetch_flash.jpg" alt="Fetch user from flash" />
  </p>
  <p>
  In friendly copy and paste code...</p>
  <pre><code class="elixir language-elixir">defp set_from_flash(conn) do
    conn
    |&gt; Phoenix.Controller.get_flash(conn, :user)
    |&gt; case do
      nil -&gt; conn
      user -&gt; conn |&gt; assigns(:user, user)
    end
  end</code></pre>
  <p>
  As LiveView evolves, this process for managing session between the
  socket and the session might change.  For now, this mechanism works
  and I believe provides a secure means of supporting session control
  between pages when using LiveView.</p>
  """
end
def article("executing-custom-javascript-with-liveview") do
  """
  <p>
  This article is based on a very early version of LiveView and is no longer
  the right way to run Custom JS code.</p>
  <p>
  As <a href="http://empex.co/events/2019/conference.html">part of my talk at EMPEX 2019</a> on <a href="https://github.com/phoenixframework/phoenix_live_view">LiveView</a>, I showed a way to execute custom JavaScript on a LiveView refresh.
  So where is how I do it?  If you know a better way, please reach out to me <a href="https://twitter.com/a4word">@a4word</a> to discuss.</p>
  <p>
  If you don&#39;t know about LiveView, maybe <a href="/articles/liveview-examples">read more about that first</a></p>
  <h2>
  Problem</h2>
  <p>
  How to force JavaScript to be executed each time my LiveView page
  refreshes itself?</p>
  <h2>
  A <code class="inline">tick</code> on every message</h2>
  <p>
  When ever you return data back to the client through the the websocket,
  consider adding an auto-incrementer.  This will allow you to uniquely track every <em>liveview</em> refresh.</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/mounting_a_tick.jpg" alt="Adding a tick to every message" />
  </p>
  <p>
  In friendly copy and paste code...</p>
  <pre><code class="elixir language-elixir">def mount(_params, _session, socket) do
    {:ok, assign(socket, tick: 1)}
  end
  
  defp socket_reply(socket, reply \\ :noreply) do
    {reply, socket |&gt; update(:tick, &amp;(&amp;1 + 1))}
  end</code></pre>
  <p>
  This is useful for a bunch of things, but let&#39;s focus on running our custom javascript.</p>
  <h2>
  Reference that <code class="inline">@tick</code> in your <code class="inline">&lt;script id=&quot;xxx&quot;&gt;...&lt;/script&gt;</code></h2>
  <p>
  In your LiveView LEEX, you can add a <code class="inline">script</code> tag and append the <code class="inline">@tick</code> to the <code class="inline">id</code>.   This will force for the MorphDOM differ to always re-render (aka re-run) that code on the client.</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/script_id_with_tick.jpg" alt="Create a script with tick ID" />
  </p>
  <p>
  In friendly copy and paste code...</p>
  <pre><code class="eex language-eex">&lt;script id=&quot;always-run-&lt;%= @tick %&gt;&quot;&gt;
    console.log(&quot;I was updated &lt;%= @tick %&gt; time(s)&quot;)
  &lt;/script&gt;</code></pre>
  <p>
  Now on every refresh, the code above will be executed, even if the internals of the code block did not change.</p>
  <h3>
  Why? Why! Why?!?</h3>
  <p>
  The code above is not that compelling.  But here is a more compelling one.
  Focus.  Focusing multiple times on an input using HTML is not (well?)
  supported.  At <a href="https://dividends.io">Dividends.io</a>, we wanted to
  have a <em>smart</em> focus so that when you were editing your portfolio,
  the system smartly put focus on the most appropriate input.</p>
  <p>
  So when the page loads, but focus on the input.  This can totally be done without
  JavaScript and plain old <code class="inline">autofocus</code> works well.</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/focus_one.jpg" alt="Autofocus on first input" />
  </p>
  <p>
  But, when you want to edit a particular stock, for example, we want to put focus on <em>that</em> input.</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/focus_two.jpg" alt="Autofocus edit input" />
  </p>
  <p>
  And once done editing, put focus back on the original <em>new</em> input.</p>
  <p>
  This was accomplished with the following code</p>
  <p>
    <img src="/images/blog/executing-custom-javascript-with-liveview/autofocus_example.jpg" alt="Maintaining autofocus using a script" />
  </p>
  <p>
  In friendly copy and paste code...</p>
  <pre><code class="javascript language-javascript">&lt;script id=&quot;autofocus-me-&lt;%= @tick %&gt;&quot;&gt;
    &lt;% input_id = case assigns[:index] do
      nil -&gt; &quot;autofocus-new&quot;
      i -&gt; &quot;autofocus-edit-{i}&quot; // should be #
    end %&gt;
    document.getElementById(&quot;&lt;%= input_id %&gt;&quot;).focus();
  &lt;/script&gt;</code></pre>
  <p>
  A few caveats.</p>
  <p>
  First, LiveView continues to evolve, so please check out the inter
  webs to see if this is still a valid approach (and if not, let me know).</p>
  <p>
  Second, don&#39;t write lots of this kind of JavaScript.
  If it hurts, you might not be doing it right so maybe consider
  taking a step back and trying to figure out what exactly are you
  trying to achieve and will this approach do as you expect.</p>
  <p>
  Happy LiveViewing.</p>
  """
end
def article("llewellyn-falco-from-0-to-100-tested-code") do
  """
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=wp6oSVDdbXQ">  <img src="https://img.youtube.com/vi/wp6oSVDdbXQ/0.jpg" alt="Highlights of Llewellyn Falco - From 0% to Cleanly Refactored 100% tested code" />
  </a></p>
  <p>
  Gives you some legacy code to practice.</p>
  <p>
  The video goes through the <a href="https://github.com/emilybache/GildedRose-Refactoring-Kata">Gilded Rose Kata</a> to add the following feature.</p>
  <pre><code>&quot;Conjured&quot; items degrade in Quality twice as fast as normal items.</code></pre>
  <p>
  And again with Kent Beck</p>
  <pre><code>Make the change easy, and then make the easy change.
  Warning: the first part might be hard.
  - Kent Beck</code></pre>
  <p>
  The working with old code uses the <a href="https://github.com/RefactoringCombos/ArlosCommitNotation">Arlo&#39;s commit notation</a></p>
  <table>
    <thead>
      <tr>
        <th style="text-align: left;">
  prefix      </th>
        <th style="text-align: left;">
  meaning      </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="text-align: left;">
  F      </td>
        <td style="text-align: left;">
  Feature      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  B      </td>
        <td style="text-align: left;">
  Bug      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  t      </td>
        <td style="text-align: left;">
  Test only      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  r      </td>
        <td style="text-align: left;">
  Proveable refactor      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  a      </td>
        <td style="text-align: left;">
  Automated      </td>
      </tr>
      <tr>
        <td style="text-align: left;">
  !!!      </td>
        <td style="text-align: left;">
  Non-proveable refactor      </td>
      </tr>
    </tbody>
  </table>
  <p>
  Assigns risk to the comments <code class="inline">F</code> and <code class="inline">B</code> and <code class="inline">!!!</code> introduce risk, the lower case <code class="inline">t</code>, <code class="inline">r</code> and <code class="inline">a</code> are safe.</p>
  <p>
  Falco is using a tool to support <a href="https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864">Test-Commit-Revert</a>, where every day is committed if it the tests pass.</p>
  <p>
    <img src="/images/blog/videos/llewellyn-falco-from-0-to-100-tested-code/tcr_commit.jpg" alt="TCR tool in Java" />
  </p>
  <p>
  Much of the first part of the talk is about <em>documenting</em> through tests the behaviour of the existing method, and using a coverage tool here is very helpful in showing that you have (well) covered all the existing code before you try and change it.</p>
  <p>
    <img src="/images/blog/videos/llewellyn-falco-from-0-to-100-tested-code/another_input.jpg" alt="Adding tests to increase coverage before refactoring" />
  </p>
  <p>
  It takes about 20 lines of code and 400 <em>tests</em> until 100% coverage is achieved and we can start to do actual work.</p>
  <p>
  That actual work involved 2 main refactorings</p>
  <ul>
    <li>
  Lift Conditional Refactor  </li>
    <li>
  <a href="https://github.com/digdeeproots/provable-refactorings/blob/master/recipes/micro-step-helpers/add-explicit-return/cpp.md">Add Explicit Return</a>  </li>
  </ul>
  <p>
  After almost a hundred commits, one <code class="inline">F</code>eature commit with 2 lines of code were added.</p>
  <p>
  Resources</p>
  <ul>
    <li>
  <a href="https://approvaltests.com">ApprovalTests</a>  </li>
    <li>
  <a href="https://github.com/RefactoringCombos/ArlosCommitNotation">Arlo&#39;s commit notation</a>  </li>
    <li>
  <a href="https://github.com/emilybache/GildedRose-Refactoring-Kata">Gilded Rose Kata</a>  </li>
    <li>
  <a href="https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864">Test-Commit-Revert</a>  </li>
    <li>
  <a href="https://github.com/digdeeproots/provable-refactorings/blob/master/recipes/micro-step-helpers/add-explicit-return/cpp.md">Add Explicit Return</a>  </li>
  </ul>
  """
end
def article("kent-beck-beauty-in-code") do
  """
  <p>
  <a href="https://www.youtube.com/watch?feature=player_embedded&v=tM1iOJsR7p4">  <img alt="Highlights of Kent Beck&#39;s &#39;Beauty In Code&#39;" class="w-full" src="https://img.youtube.com/vi/tM1iOJsR7p4/0.jpg" />
  </a></p>
  <p>
  We are first teased that the talk was intended to be about &quot;the use of symmetry in coding&quot;, as I believe symmetry is a great way to help drive you towards cohesion and aligning the abstractions.</p>
  <p>
  For me, the highlights of the talk include</p>
  <pre><code>Making big changes can emerge from making little ones</code></pre>
  <p>
  Beck uncovered this idea when he was refactoring &quot;running one test&quot; in JUnit and the changes ultimately resulting in the Rules annotation.</p>
  <pre><code>Pass/Fail is important, but not the most important.</code></pre>
  <p>
  Beck talks about how feedback loops in our code are really important. Tests (here referring mostly to unit tests I believe) are one fo them but not necessarily the most important. Some feedback loops need to go through production.</p>
  <pre><code>The measure of a system is the effects it has on the world;
  intended or unintended, and measurable or unmeasurable.</code></pre>
  <p>
  Kent dislikes the term requirements, as your system is in production and people are using it so clearly it was not a requirement to have that feature and this is where the term story was born (and then it was ruined when people started saying &quot;user story&quot;).</p>
  <pre><code>Don&#39;t estimate, timebox as an exploration. But stupid
  when you have __hundreds__ of people working on a stable product.</code></pre>
  <p>
  Engineering skills in software development demand for different approaches in different scenarios. Here Kent is discussing the notion of certification and how to measure the engineering-ness of an engineer.</p>
  <p>
  And finally, a few concrete ideas about the act of cleaning up code.</p>
  <ul>
    <li>
  If it&#39;s hard, don&#39;t do it.  </li>
    <li>
  It&#39;s a bunch of little deals that turn into a big deal.  </li>
    <li>
  Only do obvious stuff.  </li>
    <li>
  Put the intermediate stages into production, immediately.  </li>
    <li>
  Only do this kind of &quot;beauty&quot; work when you are fresh.  </li>
    <li>
  Practice. Try it, learn from it and move on (aka throw out code)  </li>
  </ul>
  """
end
def article("oh-the-apis-opencamps-2017") do
  """
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/oh_the_apis.jpg" alt="Oh, the API Clients You&#39;ll Build (in Elixir)" />
  </p>
  <p>
  Today we are going explore how to write API clients in the <a href="https://elixir-lang.org">Elixir</a> language. This is a follow-up article to my presentation at OpenCamps 2017.</p>
  <p>
  <a href="https://elixir-lang.org">Elixir</a> is relatively new programming language (v1.0 released in 2014), with one of it&#39;s greatest features being that is stands on the shoulders of a giant in Erlang. That said, it is still quite rare to find official support in <a href="https://elixir-lang.org">Elixir</a> for a lot of your favourite APIs. This leaves you with the task of writing your own, or possibly trying one of the many open source options out there.</p>
  <p>
  In this article, we will look at how you can build your own. The exercise of writing your own has many benefits. First, you learn a bit more about <a href="https://elixir-lang.org">Elixir</a>, the language, and how to leverage a bunch of it features. Second, you learn a bit more about the API you are working with. And finally, you gain some insight into how it could be built so that you can better evaluate the altneratives.</p>
  <p>
  Let&#39;s dive in.</p>
  <h3>
  What Do We Mean API?</h3>
  <p>
  For starters, API is a very overloaded term. So here, I am referring to RESTful APIs available over HTTP. These are indeed not the only meaning of API, but for this context that is what we are referring to.</p>
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/api_calls.jpg" alt="API calls" />
  </p>
  <p>
  In the example above, we have a Weather API and several clients that interact with that API over HTTP. Those clients could be straight curl commands, or more likely a think wrapper written in the programming language like Ruby, Java, or in our case <a href="https://elixir-lang.org">Elixir</a>.</p>
  <h3>
  What is a RESTful API?</h3>
  <p>
  A RESTful service was defined back in 2000 by Roy Thomas Fielding as a design approach for network based APIs. Your service can be implemented / provide various levels of RESTful maturity. And the data to communicate with the service is usually JSON, but could also be XML, YAML, Key/Value pairs, etc.</p>
  <p>
  Leonard Richardson provided a nice breakdown of the <a href="https://martinfowler.com/articles/richardsonMaturityModel.html">principles an a RESTful approach into various maturity levels</a>, which was summarized well by Martin Fowler. The higher the level, the more closely you are following the full spirit of REST; but even any HTTP service offering could qualify as REST, just not a very mature implementation.</p>
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/restful_mm.jpg" alt="RESTful maturity model" />
  </p>
  <p>
  OK, now let&#39;s start talking Elixir.</p>
  <h3>
  Elixir Libraries To Talk HTTP</h3>
  <p>
  There are lots of libraries available for interacting with HTTP services. Some in pure elixir, others in Erlang, and bypass is a mocking library to help us test HTTP calls without actually reaching out the service.</p>
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/elixir_rest_libs.jpg" alt="Elixir Libraries To Talk HTTP" />
  </p>
  <p>
  We are going to use <a href="https://hex.pm/packages/httpoison">httpoison</a>, it is a pure Elixir library built on top of <a href="https://hex.pm/packages/hackney">hackney</a> and provides a very approachable interface.</p>
  <p>
  Here&#39;s how to make a GET request out to a public API.</p>
  <pre><code class="elixir language-elixir">iex&gt; HTTPoison.get!(&quot;https://api.github.com&quot;)
  %HTTPoison.Response{
    status_code: 200,
    headers: [{&quot;content-type&quot;,
    &quot;application/json&quot;}],
    body: &quot;{…}&quot;}</code></pre>
  <p>
  The response is an Elixir structure that includes what you would expect like the status_code, response headers and the body (aka the return data).</p>
  <p>
  Notice the <code class="inline">!</code> on the method name, that is a convention to return the data, or if it fails then raise an error. The error friendly version will return a <code class="inline">{:ok, data}</code> or <code class="inline">{:error, reason}</code> response.</p>
  <pre><code class="elixir language-elixir">iex&gt; HTTPoison.get(&quot;https://api.github.com&quot;)
  {:ok, %HTTPoison.Response{}}</code></pre>
  <p>
  And if things fail, the response might look similar to</p>
  <pre><code class="elixir language-elixir">iex&gt; HTTPoison.get(&quot;ppq://url.com&quot;)
  {:error, %HTTPoison.Error{reason: :nxdomain}}</code></pre>
  <p>
  Now that we know how to make simple HTTP calls, we are ready to build our very own client.</p>
  <h3>
  Creating Our Elixir Client</h3>
  <p>
  Here is a first attempt at wrapping an HTTP get call in a client method.</p>
  <pre><code class="elixir language-elixir">def get(url, headers \\ []) do
    case HTTPoison.get(url, headers) do
      {:ok, %{body: raw_body, status_code: code}} -&gt; {code, raw_body}
      {:error, %{reason: reason}} -&gt; {:error, reason}
    end
  end</code></pre>
  <p>
  In the above, we are delegating the underlying call to <code class="inline">HTTPoision.get</code> and then using a <code class="inline">case</code> statement to pattern match on the two types of responses. We can now make our call API call using our new method.</p>
  <pre><code class="elixir language-elixir">iex&gt; Myclient.get(&quot;https://api.github.com&quot;)
  {200, %{...}}</code></pre>
  <p>
  You can access the Myclient example on Github, and follow along with…</p>
  <pre><code class="bash language-bash">$ git clone git@github.com:work-samples/myclient.git
  $ cd myclient
  $ mix deps.get
  $ iex -S mix</code></pre>
  <h3>
  Decoding the Raw Response</h3>
  <p>
  The response from our API is in it&#39;s most raw form, in the case of the GitHub API it&#39;s an encoded JSON string. This is not very usable within our Elixir client, so we much rather have something that we can manipulate more directly. For this, we will use poison, an Elixir library for dealing with JSON.</p>
  <p>
  Here&#39;s an example of decoding a JSON string into an Elixir map.</p>
  <pre><code class="elixir language-elixir">iex&gt; Poison.decode(&quot;{\&quot;a\&quot;: 1}&quot;, keys: :atoms)
  {:ok, %{a: 1}}</code></pre>
  <p>
  You will notice that Poison follow a similar pattern of :ok and :error response tuples.</p>
  <p>
  Let&#39;s incorporate that into our get method from above. But first, let&#39;s refactor it a bit into it&#39;s parts.</p>
  <pre><code class="elixir language-elixir">def get(url, headers \\ []) do
    url
    |&gt; HTTPoison.get(headers)
    |&gt; case do
        {:ok, %{body: raw, status_code: code}} -&gt; {code, raw}
        {:error, %{reason: reason}} -&gt; {:error, reason}
       end
    |&gt; (fn {ok, body} -&gt;
          body
          |&gt; Poison.decode(keys: :atoms)
          |&gt; case do
               {:ok, parsed} -&gt; {ok, parsed}
               _ -&gt; {:error, body}
             end
        end).()
  end</code></pre>
  <h3>
  But What About Non JSON Data</h3>
  <p>
  Usually an API client needs only worry about one data format, but there are occasions where there might be various formats returned. How are we going to deal with that?</p>
  <p>
  Well, part of a response from the API, which until now we have ignored, are the return headers. And burried deep in there the API will tell you the Content-Type.</p>
  <pre><code class="elixir language-elixir">[{&quot;Server&quot;, &quot;GitHub.com&quot;},
   {&quot;Content-Type&quot;, &quot;application/json; charset=utf-8&quot;},
   {&quot;Content-Length&quot;, &quot;2039&quot;},
   {&quot;Status&quot;, &quot;200 OK&quot;},
   {&quot;X-RateLimit-Limit&quot;, &quot;60&quot;},
   {&quot;X-RateLimit-Remaining&quot;, &quot;44&quot;},
   {&quot;X-RateLimit-Reset&quot;, &quot;1510586818&quot;},
   {&quot;X-GitHub-Request-Id&quot;, &quot;6FA8:11F9:41D7744:86CB6AE:5A09B817&quot;}]</code></pre>
  <p>
  So now we can extract the content type and use that decode the response from our API.</p>
  <p>
  But before we tack that only our get method, let&#39;s refactor it into it&#39;s main parts.</p>
  <pre><code class="elixir language-elixir">def get(url, headers \\ []) do
    url
    |&gt; call(headers)
    |&gt; content_type
    |&gt; decode
  end</code></pre>
  <p>
  The <code class="inline">call</code> function will perform the underlying HTTP call, and the <code class="inline">content_type</code> function will extract the content type and finally our decode function will take that information and try to <code class="inline">decode</code> everything into an Elixir data structure.</p>
  <h3>
  Implementing call</h3>
  <p>
  Our call function really has not changed much from above, but we are now returning the headers in addition to the status_code and raw body.</p>
  <pre><code class="elixir language-elixir">def call(url, headers \\ []) do
    url
    |&gt; HTTPoison.get(headers)
    |&gt; case do
         {:ok, %{body: raw, status_code: code, headers: headers}} -&gt;
           {code, raw, headers}
         {:error, %{reason: reason}} -&gt; {:error, reason, []}
      end
  end</code></pre>
  <h3>
  Implementing content_type</h3>
  <p>
  Here&#39; s how we implement the content_type function.</p>
  <p>
  First, we want to keep the information above, so we have a pass-through function that will keep the status_code and raw body untouched. We will pattern match on the desired tuple returned from call above.</p>
  <pre><code class="elixir language-elixir">def content_type({ok, body, headers}) do
    {ok, body, content_type(headers)}
  end</code></pre>
  <p>
  But the acutal implementation will just focus on the headers list. We can implement this function in three parts. The first function matches an empty list, so if the API didn&#39;t provide us with a content-type, then we will default to JSON.</p>
  <pre><code class="elixir language-elixir">def content_type([]), do: &quot;application/json&quot;</code></pre>
  <p>
  The second function matches a list (in head/tail syntax) where we have located the content-type. In this case, we want to tease out any additional meta information (such a the character set) and just return the type.</p>
  <pre><code class="elixir language-elixir">def content_type([{&quot;Content-Type&quot;, val} | _]) do
    val
    |&gt; String.split(&quot;;&quot;)
    |&gt; List.first
  end</code></pre>
  <p>
  The last function matches a list again, but here it&#39;s not the content-type, so we want to check the rest of the list.</p>
  <pre><code class="elixir language-elixir">def content_type([_ | t]) do: content_type(t)</code></pre>
  <h3>
  Implementing decode</h3>
  <p>
  Now that we have the status code, the raw data and the content-type, we can implement our decode function.</p>
  <p>
  First, our JSON implementation will remain relatively unchanged from above.</p>
  <pre><code class="elixir language-elixir">def decode({ok, body, &quot;application/json&quot;}) do
    body
    |&gt; Poison.decode(keys: :atoms)
    |&gt; case do
         {:ok, parsed} -&gt; {ok, parsed}
         _ -&gt; {:error, body}
       end
  end</code></pre>
  <p>
  But now, we can add more decoders based on the types of data the API returns. For example, here is how we could handle an XML response.</p>
  <pre><code class="elixir language-elixir">def decode({ok, body, &quot;application/xml&quot;}) do
    try do
      {ok, body |&gt; :binary.bin_to_list |&gt; :xmerl_scan.string}
    catch
      :exit, _e -&gt; {:error, body}
    end
  end</code></pre>
  <p>
  We are using an Erlang function directly, and in this implementation we catch the <code class="inline">:exit</code> code that is raised if the XML is not well formed and instead wrap it in our consistent <code class="inline">{:error, reason}</code> response.</p>
  <p>
  Finally, if we don&#39;t understand the encoded, we will pass the raw body through, as such.</p>
  <pre><code class="elixir language-elixir">def decode({ok, body, _}), do: {ok, body}</code></pre>
  <h3>
  Playing With Our Own Server</h3>
  <p>
  Instead of poking at the GitHub API, we are now going to change focus to use a companion project myserver.</p>
  <p>
  You can access Myserver example on Github, and follow along with …</p>
  <pre><code class="bash language-bash">$ git clone git@github.com:work-samples/myserver.git
  $ cd myserver
  $ mix deps.get
  $ mix run --no-halt</code></pre>
  <p>
  Let&#39;s use Myclient to access our server.</p>
  <pre><code class="elixir language-elixir">iex&gt; Myclient.get(&quot;http://localhost:4000&quot;)
  {200, %{version: &quot;0.1.0&quot;}}</code></pre>
  <p>
  We are well on our way to implementing a full fledged client.</p>
  <p>
  But not really.</p>
  <p>
    <img src="/images/blog/talks/oh-the-apis-opencamps-2017/api_other_concerns.jpg" alt="Other API concerns" />
  </p>
  <p>
  We have gone pretty far with our spike, but have not really talked about how we can test our client. Or, how to send data to the API. Or, how to handle those other API calls like <code class="inline">POST</code> and <code class="inline">PUT</code> and <code class="inline">DELETE</code>. Or, how to handle accessing protected API endpoints, using something like secure tokens or an OAuth2 like protocol.</p>
  <p>
  Let&#39;s address some fo these concerns in more detail, and others will be left to the reader to explore on their own.</p>
  <h3>
  Sending Data To The API</h3>
  <p>
  Sending data to the API is relatively straight forward, we just need to support additional arguments, one for the query parameters (such as <code class="inline">?user=sarah&amp;filter=topTen</code>).</p>
  <pre><code class="elixir language-elixir">def call(url, query_params \\ %{}, headers \\ []) do
    url
    |&gt; HTTPoison.get(headers, params: query_params)
    |&gt; case do
        {:ok, %{body: raw, status_code: code, headers: headers}} -&gt;
          {code, raw, headers}
        {:error, %{reason: reason}} -&gt; {:error, reason, []}
       end
  end</code></pre>
  <p>
  To support adding data to the body, such as <code class="inline">{&quot;name&quot;: &quot;James&quot;, &quot;role&quot;: &quot;admin&quot;}</code>, a similar approach would be followed.</p>
  <h3>
  Supporting POST, PUT, DELETE, etc</h3>
  <p>
  To support multiple verbs as they are called in HTTP lingo, we need to re-work our underlying call to HTTPoison.</p>
  <pre><code class="elixir language-elixir">def call(url, method, body \\ &quot;&quot;, query_params \\ %{}, headers \ []) do
    HTTPoison.request(
      method,
      url |&gt; clean_url,
      body |&gt; encode(content_type(headers)),
      headers |&gt; clean_headers,
      query_params |&gt; clean_params
    )
    |&gt; case do
        {:ok, %{body: raw, status_code: code, headers: headers}} -&gt;
          {code, raw, headers}
        {:error, %{reason: reason}} -&gt; {:error, reason, []}
       end
  end</code></pre>
  <p>
  A bunch for of things are going on here, and we will discuss each in some detail.</p>
  <h4>
  Cleaning the URL</h4>
  <p>
  First <strong>clean_url</strong> is a helper method to deal with a bug-feature in underlying httpoison API, but it also provides a few other capabilities. I leave it to the reader to review the code to see what else it is doing.</p>
  <h4>
  Encoding the Data</h4>
  <p>
  Second, we need to encode the data for transport. We can use the same <code class="inline">content_type</code> function to determine which encoder to use.</p>
  <h4>
  Cleaning the Headers</h4>
  <p>
  Third, we will by default add a <code class="inline">Content-Type: application/json</code> to each call, to avoid having our client automatically add it directly.</p>
  <h4>
  Cleaning the Query Params</h4>
  <p>
  Finally, we will check to see if we have any query params, and if so, then put it into a form ready for httpoison.</p>
  <h3>
  Actual Client Methods</h3>
  <p>
  Ok, so far we have really only provided a few convenience function wrappers to the raw API calls. The intent of building an Elixir Client for an API is so that we can interact with the API just like it were available directly, instead of talking about urls, and payloads and such.</p>
  <p>
  In our implementation will be push all that API access code into a <code class="inline">Myclient.Api</code> module, and the start a <code class="inline">Myclient.Client</code> module to provide those more encapsulated functions.
  defmodule Myclient.Client do</p>
  <pre><code class="elixir language-elixir">  def current_version() do
      &quot;http://localhost:4000&quot;
      |&gt; Myclient.Api.get
      |&gt; (fn {200, %{version: version}} -&gt; version end).()
    end
  
    def next_version(version) do
      &quot;http://localhost:4000&quot;
      |&gt; Myclient.Api.post(%{version: version})
      |&gt; (fn {201, %{version: version}} -&gt; version end).()
    end
  
  end</code></pre>
  <p>
  So in the above, we have exposed two functions that under the hood will send GET and POST requests to our myserver service. Now those calls look and feel like normal elixir functions</p>
  <pre><code class="elixir language-elixir">iex(1)&gt; Myclient.Client.current_version
  &quot;0.0.3&quot;
  
  iex(2)&gt; Myclient.Client.next_version(&quot;0.1.0&quot;)
  &quot;0.1.0&quot;</code></pre>
  <h3>
  And So Much More</h3>
  <p>
  The above provides but a glimpse of the talk. For more insight checkout the accompanying repositories.</p>
  <p>
  Happy Coding.</p>
  """
end
def article("doex-elixir-api-for-digital-ocean") do
  """
  <p>
  Want to automate your infrastructure leveraging the awesome <a href="https://developers.digitalocean.com/documentation/v2/">Digital Ocean API V2</a>, then the shell is your friend. Here we will learn about how to access the API from the command line using Elixir&#39;s <a href="https://hexdocs.pm/mix/master/Mix.Tasks.Escript.Build.html">Escript</a> tooling.</p>
  <p>
    <img src="/images/blog/doex/doex_on_hex.jpg" alt="doex API for digital ocean on hex" />
  </p>
  <p>
  Doex, access <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>&#39;s API through the shell and/or Elixir</p>
  <p>
  First, if you don&#39;t know <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> (my referral link should you wish to sign up, we both get a little kickback) is a cloud provider that helps you spin up new servers, quickly, to help get your application into production.</p>
  <p>
    <img src="/images/blog/doex/create_droplet.jpg" alt="Digital Ocean create droplet" />
  </p>
  <p>
  With features like <a href="https://www.digitalocean.com/community/tutorials/how-to-use-floating-ips-on-digitalocean">Floating IPs</a>, <a href="https://www.digitalocean.com/community/tutorials/how-to-create-your-first-digitalocean-load-balancer">Load Balancers</a>, and <a href="https://www.digitalocean.com/community/tutorials/an-introduction-to-digitalocean-cloud-firewalls">Firewalls</a> you can be up and running with a production grade setup on the cheap.</p>
  <p>
  After setting up your DO account, you then need to generate a new Token through the API link from the top of your digital ocean dashboard.</p>
  <p>
    <img src="/images/blog/doex/create_droplet.jpg" alt="Digital Ocean API tokens" />
  </p>
  <h2>
  That&#39;s not a real token, so don&#39;t bother trying</h2>
  <p>
  Store that token safely, as it allows scripts to perform actions on your account without human intervention.</p>
  <p>
  Now let&#39;s play with <a href="https://hex.pm/packages/doex">doex</a>, an elixir escript command line tool. This article assumes you have an <a href="https://elixir-lang.org/getting-started/introduction.html">elixir environment up and running</a>.</p>
  <p>
  To install <em>doex</em>, run</p>
  <pre><code class="bash language-bash">mix escript.install github capbash/doex</code></pre>
  <p>
  You might see a warning like</p>
  <pre><code class="bash language-bash">warning: you must append &quot;/Users/&lt;username&gt;/.mix/escripts&quot; to your PATH if you want to invoke escripts by name</code></pre>
  <p>
  Heed the adashvice and add it to your path, for example (each system is slightly different, so don&#39;t blindly follow, instead learn more about PATH)</p>
  <pre><code class="bash language-bash">vi ~/.bash_profile
  # add something like
  PATH=&quot;$HOME/.mix/escripts:$PATH&quot;
  export PATH</code></pre>
  <p>
  If you are up and running, then you can get help by calling doex without any arugments.</p>
  <pre><code class="bash language-bash">doex</code></pre>
  <p>
  The output will show you what&#39;s available on the command line, at this time that includes</p>
  <pre><code class="bash language-bash">doex v0.3.1
  doex is a API client for Digital Ocean&#39;s API v2.
  
  Available tasks:
  
  doex config           # Reads, updates or deletes Doex config
  doex droplets.create  # Create a droplet on Digital Ocean
  doex init             # Initialize your doex config
  
  Further information can be found here:
    -- https://hex.pm/packages/doex
    -- https://github.com/capbash/doex</code></pre>
  <p>
  Let&#39;s <a href="https://hexdocs.pm/doex/Mix.Tasks.Doex.Config.html#content">configure our server</a> to talk to our <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> account. I will use <code class="inline">ABC123DEF456</code> as my DO Token, please update the scripts below based on your token.</p>
  <pre><code class="bash language-bash">doex init &amp;&amp; \
    doex config token ABC123DEF456</code></pre>
  <p>
  Next, let&#39;s <a href="https://hexdocs.pm/doex/Mix.Tasks.Doex.Droplets.Create.html#content">create a new droplet</a>.</p>
  <pre><code class="bash language-bash">mix doex.droplets.create mydroplet \
    --region tor1 \
    --tags myt \
    --image ubuntu-14-04-x64 \
    --size 512mb</code></pre>
  <p>
  It&#39;s just that easy.</p>
  <p>
    <img src="/images/blog/doex/mydroplet.jpg" alt="my droplet created" />
  </p>
  <p>
  The command line script is still evolving, but all GET/POST DigitalOcean endpoints are available from the <a href="https://github.com/capbash/doex">elixir doex library</a>.</p>
  <h3>
  Alternatives</h3>
  <p>
  If you are looking for a feature-complete command line tool, then checkout DigitalOcean&#39;s <a href="https://github.com/digitalocean/doctl">doctl</a> command line tool. It is written in Go, and provides an excellent <em>shell</em> for interacting with the DO API.</p>
  <pre><code class="bash language-bash">doctl is a command line interface for the DigitalOcean API.
  
  Usage:
    doctl [command]
  
  Available Commands:
    account     account commands
    auth        auth commands
    completion  completion commands
    compute     compute commands
    version     show the current version
  
  Flags:
    -t, --access-token string   API V2 Access Token
    -c, --config string         config file (default is $HOME/.config/doctl/config.yaml)
    -o, --output string         output format [text|json] (default &quot;text&quot;)
        --trace                 trace api access
    -v, --verbose               verbose output
  
  Use &quot;doctl [command] --help&quot; for more information about a command.</code></pre>
  <p>
  There are also a few other Elixir specific libraries, but none that have gained much traction and none provide both elixir API access AND command line access.</p>
  <p>
    <img src="/images/blog/doex/altneratives_do_clients.jpg" alt="Alternatives to elixir Digital Ocean clients" />
  </p>
  <p>
  Yep, that&#39;s doex at the the bottom there with a ton of downloads; watch out!</p>
  <p>
  Happy automation.</p>
  """
end
def article("mailgun-on-digital-ocean") do
  """
  <p>
  Not having to manage an email server is awesome, thank you <a href="https://www.mailgun.com">Mailgun</a>. I am currently integrating with <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> and ran into some documentation confusion with DNS records, especially when trying to configure for a subdomain.</p>
  <p>
  After following <a href="https://help.mailgun.com/hc/en-us/articles/202052074-How-do-I-verify-my-domain-">Mailgun&#39;s instructions</a> (including the <a href="https://www.digitalocean.com/community/questions/how-to-set-up-a-host-name-in-digitalocean">Digital Ocean guide</a>, <a href="https://code.krister.ee/mailgun-digitalocean/">alternate guide</a>, and <a href="https://www.digitalocean.com/community/questions/failed-to-verify-domain-on-mailgun">community help</a>) I was able to get it setup.</p>
  <p>
  Note that all links to <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> are using my referral link.</p>
  <h3>
  Configure Your Domain</h3>
  <p>
  If you are setting up your account directly against your domain, then things are a bit easier (and the instructions work a little more as expected). If you are setting up against a subdomain, skim this section as the subdomain instructions are a bit different.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/new_domain_on_mailgun.jpg" alt="New domain on mailgun" />
  </p>
  <p>
  I wanted to provide my view of how to get things configured should the <em>shorthand</em> editor in <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> change between now and when you are reading me.</p>
  <p>
  This is what the Zone file looks like to confirm mydomain.com for sending and receiving emails using <a href="https://www.mailgun.com">Mailgun</a>.</p>
  <pre><code class="bash language-bash">$ORIGIN mydomain.com.
  $TTL 1800
  mydomain.com. IN SOA ns1.digitalocean.com. hostmaster.mydomain.com. 123412341234 10800 3600 604800 1800
  mydomain.com. 1800 IN NS ns1.digitalocean.com.
  mydomain.com. 1800 IN NS ns2.digitalocean.com.
  mydomain.com. 1800 IN NS ns3.digitalocean.com.
  mydomain.com. 1800 IN A 10.20.30.40
  mydomain.com. 1800 IN MX 10 mxa.mailgun.org.
  mydomain.com. 1800 IN MX 10 mxb.mailgun.org.
  mydomain.com. 1800 IN TXT “v=spf1 include:mailgun.org ~all”
  k1._domainkey.mydomain.com. 1800 IN TXT “k=rsa; p=ABC1234+DEF/aSDF@!#$/FWAEF”
  email.mydomain.com. 1800 IN CNAME mailgun.org.</code></pre>
  <p>
  <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>&#39;s data entry provides shortcuts in the editor, so be sure to leave out mydomain.com, and use the @ symbol where necessary. Here&#39;s what the values look like in <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>&#39;s editor</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/do_dns_editor.jpg" alt="Digital Ocean DNS editor" />
  </p>
  <p>
  Please note that 10.20.30.40 is the IP address of your droplet and NOT that provided by mailgun.</p>
  <h3>
  Sending Emails (Not Receiving) From Your Sub Domain</h3>
  <p>
  If you want to keep your primary domain free and clear from <a href="https://www.mailgun.com">Mailgun</a>, you might consider setting up a subdomain to route all email through.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/subdomain_domain_on_mailgun.jpg" alt="Using instead a subdomain on mailgun" />
  </p>
  <p>
  Please note that in this example I have NOT configured the MX records, and you will not be able to receive emails. This is because at the moment <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a> does not directly support subdomain MX records. If you do configure your MX records, your account will still show as active, but the MX records will not be configured as you expect in Mailgun.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/mailgun_mx_records.jpg" alt="MX records on mailgun" />
  </p>
  <p>
  Skip to the next section if you will want to both send AND receive emails from your subdomain. See <a href="https://www.digitalocean.com/community/questions/mx-record-for-subdomains">here</a> and <a href="https://www.digitalocean.com/community/questions/sub-domains-with-mx-records-for-mailgun">here</a> for discussions about the limitations in the DNS editor.</p>
  <p>
  This is what the Zone file looks like to confirm <em>mydomain.ca</em> with a sub domain of <em>mg.mydomain.ca</em> for sending emails using <a href="https://www.mailgun.com">Mailgun</a>.</p>
  <pre><code class="bash language-bash">$ORIGIN mydomain.ca.
  $TTL 1800
  mydomain.ca. IN SOA ns1.digitalocean.com. hostmaster.mydomain.ca. 123412341234 10800 3600 604800 1800
  mydomain.ca. 1800 IN NS ns1.digitalocean.com.
  mydomain.ca. 1800 IN NS ns2.digitalocean.com.
  mydomain.ca. 1800 IN NS ns3.digitalocean.com.
  mg.mydomain.ca. 1800 IN A 1.2.3.4
  mydomain.ca. 1800 IN A 10.20.30.40
  mg.mydomain.ca. 1800 IN TXT “v=spf1 include:mailgun.org ~all”
  pic._domainkey.mg.mydomain.ca. 1800 IN TXT “k=rsa; p=MIGfMA0GCSqGSASDFASDFASDFBiQKBgQC+v78XOweoD+JGrE8STwHLQaxX310gDHAgK2IaJ/TEGZ4GS5xr/sb/AxX+crzEkMDp9e58PASDFASDFASDFASDFASDFQ9r4I/ni3LDC+ORkBzzmy3syU7UKCN3fRKPba4d8fvIE/GvqTGnuJuwDeLZ8lJfIfwIDAQAB”
  email.mg.mydomain.ca. 1800 IN CNAME mailgun.org.</code></pre>
  <p>
  <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>&#39;s data entry provides shortcuts in the editor, so you will want to leave out mydomain.ca, but <strong>NOT</strong> mg. Here&#39;s what the values look like in <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a>&#39;s editor.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/do_dns_subdomain_editor.jpg" alt="Digital Ocean editing subdomains in DNS editor" />
  </p>
  <p>
  Here&#39;s what you need to change for your specific configuration</p>
  <ul>
    <li>
  A record for mg should by the IP provided by mailgun (not 1.2.3.4)  </li>
    <li>
  A record for @ should be your droplets&#39; IP (not mailgun&#39;s)  </li>
    <li>
  TXT record for mg should be wrapped in quotes  </li>
    <li>
  TXT record for pic._domainkey.mg should also be wrapped in quotes  </li>
  </ul>
  <h3>
  Sending And Receiving Emails From Your Sub Domain</h3>
  <p>
  If you wish to receive emails from mg.mydomain.com, then you have a little bit more work to do.</p>
  <p>
  First, you will need to create an entirely new domain for your subdomain in <a href="https://m.do.co/c/e450543d2a29">Digital Ocean</a></p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/do_add_a_domain.jpg" alt="Digital Ocean add a domain" />
  </p>
  <p>
  The IP address of 1.2.3.4 should that from <a href="https://www.mailgun.com">Mailgun</a> and NOT your droplet&#39;s IP. Here is what the records will look like in editor.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/do_dns_to_mailgun.jpg" alt="Digital Ocean DNS points to mailgun" />
  </p>
  <p>
  In the above the 1.2.3.4 IP address is the one provided by Mailgun, and NOT your DigitalOcean droplet. Once those settings propagate you should be able to receive emails from @mg.mydomain.com.</p>
  <p>
    <img src="/images/blog/mailgun-on-digital-ocean/mailgun_working_mx_records.jpg" alt="Mailgun working MX records" />
  </p>
  <p>
  Do not copy and paste anything from this post, and instead use the values provided by <a href="https://www.mailgun.com">Mailgun</a>.</p>
  <p>
  Happy Emailing.</p>
  """
end
def article("continuous-testing-with-elixir") do
  """
  <p>
  There is great power in having your tests always run, all the time when writing code, it stops the minor interruptions.</p>
  <p>
  First, let&#39;s start a new Elixir app. If you are new to elixir then first check out the many resources to get started. I also published a very small example on GitHub, if you prefer to look at code than read articles.</p>
  <pre><code class="elixir language-elixir">$ mix new my_app</code></pre>
  <p>
  Then add a dependency to mix_test_watch in your mix.exs.</p>
  <p>
  If you are running Elixir 1.4 (or later)</p>
  <pre><code class="elixir language-elixir">defp deps do
    [{:mix_test_watch, &quot;~&gt; 0.3&quot;, only: :dev, runtime: false}]
  end</code></pre>
  <p>
  Or, for Elixir 1.3 (or earlier)</p>
  <pre><code class="elixir language-elixir">defp deps do
    [{:mix_test_watch, &quot;~&gt; 0.3&quot;, only: :dev}]
  end</code></pre>
  <p>
  Grab all dependencies</p>
  <pre><code class="bash language-bash">$ mix deps.get</code></pre>
  <p>
  You might want to clear your terminal on each test run, you can do this my adding the following line to the ./config/config.exs file.</p>
  <pre><code class="elixir language-elixir">if Mix.env == :dev do
    config :mix_test_watch,
      clear: true
  end</code></pre>
  <p>
  If you are within a Phoenix application, you might encounter the following dependency issue:</p>
  <pre><code class="bash language-bash">Failed to use &quot;fs&quot; (versions 0.9.1 and 0.9.2) because
      mix_test_watch (versions 0.3.0 to 0.3.3) requires ~&gt; 2.12
      phoenix_live_reload (version 1.0.8) requires ~&gt; 0.9.1</code></pre>
  <p>
  Then forcibly update your phoenix_live_reload with</p>
  <pre><code class="bash language-bash">mix do deps.update phoenix_live_reload deps.get</code></pre>
  <p>
  And now launch your watcher</p>
  <pre><code class="bash language-bash">$ mix test.watch</code></pre>
  <p>
  If you see the following error</p>
  <pre><code class="bash language-bash">[error] backend port not found: :inotifywait</code></pre>
  <p>
  Then you need to install inotify, which on Ubuntu can be installed using</p>
  <pre><code class="bash language-bash">sudo apt-get install inotify-tools</code></pre>
  <p>
  Now you can try again,</p>
  <pre><code class="bash language-bash">$ mix test.watch</code></pre>
  <p>
  Your project will now automatically compile and re-run all tests on save. The output should look similar to the following</p>
  <pre><code class="bash language-bash">==&gt; fs (compile)
  Compiled src/fs_event_bridge.erl
  Compiled src/fs_server.erl
  Compiled src/sys/fsevents.erl
  Compiled src/sys/inotifywait_win32.erl
  Compiled src/fs_sup.erl
  Compiled src/fs_app.erl
  Compiled src/sys/inotifywait.erl
  Compiled src/fs.erl
  ==&gt; mix_test_watch
  Compiled lib/mix_test_watch/paths.ex
  Compiled lib/mix/tasks/test/watch.ex
  Generated mix_test_watch app
  Running tests...
  Setting up watches. Beware: since -r was given, this may take a while!
  Watches established.
  ==&gt; fs (compile)
  ==&gt; mix_test_watch
  Compiled lib/mix_test_watch/paths.ex
  Compiled lib/mix/tasks/test/watch.ex
  Generated mix_test_watch app
  ==&gt; my_app
  Compiled lib/my_app.ex
  Generated my_app app
  .
  Finished in 0.05 seconds (0.05s on load, 0.00s on tests)
  1 test, 0 failures
  Randomized with seed 474092</code></pre>
  <p>
  Now let&#39;s add a new test. Open up your new project in your favourite elixir editor and add a new test. For example, let&#39;s see if two wrongs make a right (vi ./test/my_app_test.exs).</p>
  <pre><code class="elixir language-elixir">defmodule MyAppTest do
    use ExUnit.Case
    doctest MyApp
    test “the truth” do
      assert 1 + 1 == 2
    end
    test “checking what two wrongs make” do
      assert (false &amp;&amp; false) == true
    end
  end</code></pre>
  <p>
  If we now look at our terminal, we should see the failure</p>
  <pre><code class="bash language-bash">Running tests...
  1) test another truth (MyAppTest)
   test/my_app_test.exs:9
   Assertion with == failed
   code: (false &amp;&amp; false) == true
   lhs: false
   rhs: true
   stacktrace:
   test/my_app_test.exs:10
  .
  Finished in 0.07 seconds (0.07s on load, 0.00s on tests)
  2 tests, 1 failure
  Randomized with seed 807654</code></pre>
  <p>
  Turns out two wrongs don&#39;t make a right. Let&#39;s update the test.</p>
  <pre><code class="elixir language-elixir">defmodule MyAppTest do
    use ExUnit.Case
    doctest MyApp
    test “the truth” do
      assert 1 + 1 == 2
    end
    test “checking what two wrongs make” do
      assert (false &amp;&amp; false) == false
    end
  end</code></pre>
  <p>
  And now we are back to 100% test passing (all without having to leave our editor).</p>
  <pre><code class="bash language-bash">Running tests...
  ..
  Finished in 0.04 seconds (0.04s on load, 0.00s on tests)
  2 tests, 0 failures
  Randomized with seed 386800</code></pre>
  <p>
  When running tests that require a database, you might run into an issue where your test database is not properly created before the tests are run.</p>
  <pre><code>[error] Postgrex.Protocol (#PID&lt;0.221.0&gt;) failed to connect:
  ** (Postgrex.Error) FATAL 3D000 (invalid_catalog_name):
  database &quot;myapp_test&quot; does not exist</code></pre>
  <p>
  The suggested approach is to create an alias in your mix.exs file, like</p>
  <pre><code class="elixir language-elixir">def aliases() do
      [&quot;test&quot;: [&quot;ecto.drop --quiet&quot;, &quot;ecto.create --quiet&quot;,
                &quot;ecto.migrate&quot;, &quot;test&quot;]]
  end</code></pre>
  <p>
  Unfortunately, for test.watch you will probably observe the following error</p>
  <pre><code class="bash language-bash">** (Mix) The database for MyApp.Repo couldn&#39;t be dropped:
  ERROR 55006 (object_in_use): database &quot;myapp_test&quot;
  is being accessed by other users
  
  There are 99 other sessions using the database.</code></pre>
  <p>
  To get around this, consider changing your alias to</p>
  <pre><code class="elixir language-elixir">def aliases() do
      [&quot;test.once&quot;: [&quot;ecto.drop --quiet&quot;,
                     &quot;ecto.create --quiet&quot;,
                     &quot;ecto.migrate&quot;, &quot;test&quot;]]
  end</code></pre>
  <p>
  You will still need to run mix test.once every time your database schema changes, but hopefully that is not too often.</p>
  <p>
  If you prefer living dangerously, then consider using a fork of the project with additional features to help avoid those issues above.</p>
  <pre><code class="elixir language-elixir">if Mix.env == :dev do
    config :mix_test_watch,
      ansi_enabled: :ignore,
      clear: true
  end</code></pre>
  <p>
  With the above your test alias (the one that you might have changed to test.once will now work every time.</p>
  <p>
  If you would prefer to just run the database setup when you first start mix test.watch then leave thetest.once alias alone, and instead configure :mix_test_watch with a :setup_tasksas follows (which will only be run once upon start up.</p>
  <pre><code class="elixir language-elixir">if Mix.env == :dev do
    config :mix_test_watch,
      setup_tasks: [
        &quot;ecto.drop --quiet&quot;,
        &quot;ecto.create --quiet&quot;,
        &quot;ecto.migrate&quot;,
      ],
      ansi_enabled: :ignore,
      clear: true
  end</code></pre>
  <p>
  There are two pull requests against the the original project [PR#70 and PR#71], so check to see if they have been merged and available in the official release.</p>
  <p>
  To learn more about the practice of continuous, consider picking up this great (albeit now out of print) book Continuous Testing with Ruby, Rails and Javascript</p>
  <p>
    <img src="/images/blog/books/continuous_testing_ruby.jpg" alt="Continuous Testing with Ruby" />
  </p>
  """
end
def article("safetybox") do
  """
  <p>
  Of course you don&#39;t know anyone that actually stores user passwords in plaintext, or database passwords directly in a repository, so this is more for those theoretical developers to provide them with just a little bit more security; without adding much more complexity</p>
  <p>
  Before you get started, you will need a working <a href="https://elixir-lang.org/">Elixir</a> environment. Once that is ready, let&#39;s play with <a href="https://github.com/aforward/safetybox">safetybox</a>.</p>
  <pre><code class="shell language-shell">mix new myproj
  cd myproj
  vi mix.exs
  
    # Add safetybox to your dependencies
    defp deps do
      [
        {:safetybox, &quot;~&gt; 0.1.2&quot; }
      ]
    end</code></pre>
  <p>
  Now you can compile your code and a start an IEX session.</p>
  <pre><code class="shell language-shell">mix deps.get
  mix compile
  iex -S mix</code></pre>
  <h3>
  Encrypting User Data (one-way)</h3>
  <p>
  For one way encryption, e.g. storying user passwords, simply encrypt the string.</p>
  <pre><code class="elixir language-elixir"># Encrypt a password and store it in pwd
  iex&gt; pwd = Safetybox.encrypt(&quot;helloworld&quot;)
  &quot;fc5e038d38a57032085441e7fe7010b0&quot;
  
  # Later on, you can validate the user provided password
  # against the encrypted stored password
  # Oopses, not the same
  iex&gt; Safetybox.is_decrypted(&quot;goodbyeworld&quot;, pwd)
  false
  
  # Ok, validated!
  iex&gt; Safetybox.is_decrypted(&quot;helloworld&quot;, pwd)
  true</code></pre>
  <h3>
  Encrypting Config Data (two-way)</h3>
  <p>
  You will also want to encrypt configuration passwords, like those for databases.  For this, you will need a secret and salt.</p>
  <pre><code class="elixir language-elixir">iex&gt; enc = Safetybox.encrypt(&quot;helloworld&quot;, &quot;MYSECRET&quot;, &quot;MYSALT&quot;)
  &quot;dWlwZnh5QmlwOFBmYm1US0hWeUtTWG9adGpPZ3pOald6TFE1V25ZVWl1WT0tLXpSU2lhQzFQWDR0blc5VVNqZGV1b3c9PQ==--7C53B199CE26A6B39081236823329A606DFF37DF&quot;
  iex&gt; dec = Safetybox.decrypt(enc, &quot;MYSECRET&quot;, &quot;MYSALT&quot;)
  &quot;helloworld&quot;
  iex&gt; dec = Safetybox.decrypt(enc, &quot;YOURSECRET&quot;, &quot;YOURSALT&quot;)
  :error</code></pre>
  <p>
  You can also run a mix command to generate your secret keys.</p>
  <pre><code class="shell language-shell">$ SECRET=MYSECRET SALT=MYSALT mix safetybox.encrypt helloworld
  N2MwMUczREVCYU5zNXFUR0NtVFNZSEJEaWNETCtTWjJkZzNkeVptbWdEST0tLUhxRHB2R1ZxVUpNcmswWFRqdW9oa3c9PQ==--EAD3CEE629EC527E7C67C9E5AE1385D630BDB24A</code></pre>
  <p>
  You can now (more) safely store these encrypted strings directly in your configurations files, and in use environment variables to store your SECRET and SALT.</p>
  <pre><code class="elixir language-elixir">vi ./config/prod.exs
    config :myapp,
      secret: System.get_env(&quot;SECRET&quot;) || &quot;myappsecret&quot;,
      salt: System.get_env(&quot;SALT&quot;) || &quot;myappsalt&quot;,
      db_password: &quot;Z3NLcGVwdjQ1UWtHL2lsUC9UN0xHQT09LS1lRFF0eUpJdmhObzZ6b2lZNzVQRlVBPT0=--68B020579898BCE71B01B7558DB9C0D3D9305350&quot;,
      db_user: &quot;myapp&quot;</code></pre>
  <p>
  And, then in your code you can decrypt the data using the Application.get_env function.</p>
  <pre><code class="elixir language-elixir">def conf(_env) do
    raw_password = Application.get_env(:myapp, :db_password)
    password = S.decrypt(raw_password, :myapp)
    parse_url &quot;ecto://myapp:\#{password}@localhost/myapp&quot;
  end</code></pre>
  <p>
  The code above is really only as secure as your SECRET and SALT, but it is much, much better than storing passwords directly in your database (no matter how small your project may be). For those trying out <a href="https://elixir-lang.org/">Elixir</a>, <a href="https://github.com/aforward/safetybox">safetybox</a> provides a simple enough mechanism to encrypt your own passwords, as well as the passwords of your users.</p>
  <h3>
  Behind the scenes</h3>
  <p>
  I did not (nor should I) write the underlying algorithms for providing the encyrption.  I simply wrapped available functions from other libraries in a slightly more user friendly form at the cost of somewhat reduced security.</p>
  <p>
  The code is <a href="https://github.com/aforward/safetybox">open sourced</a>, and one-way encryption uses MD5 hashing combined with low level Erlang functions, shown below</p>
  <pre><code class="elixir language-elixir">def encrypt(plaintext) do
    :crypto.hash(:md5, plaintext)
      |&gt; :erlang.bitstring_to_list
      |&gt; Enum.map(&amp;(:io_lib.format(&quot;~2.16.0b&quot;, [&amp;1])))
      |&gt; List.flatten
      |&gt; :erlang.list_to_bitstring
  end</code></pre>
  <p>
  The two-way encryption is a wrapper to <a href="https://github.com/scrogson/cryptex">cryptex</a> which itself is a wrapper to <a href="http://erlang.org/doc/man/crypto.html">crypto</a>.  The cryptex example was too cumbersome for my needs, so I encapsulated the Encryptor and KeyGenerator so that the only additional inputs were a SECRET and a SALT.</p>
  <pre><code class="elixir language-elixir">def encrypt(plaintext, secret, salt) when is_binary(secret) do
    secret
    |&gt; K.generate(salt)
    |&gt; E.new(K.generate(secret, &quot;signed \#{salt}&quot;))
    |&gt; E.encrypt_and_sign(plaintext)
  end</code></pre>
  <p>
  The decryption function is simiarly wrapped.</p>
  <p>
  If you disagree with me, then I invite you to fork the project and provide your own approach.</p>
  <h3>
  Resources</h3>
  <ul>
    <li>
  <a href="https://github.com/aforward/safetybox">Safetbox Source (Github)</a>  </li>
    <li>
  <a href="https://hexdocs.pm/safetybox/">HEX API Documentation</a>  </li>
    <li>
  <a href="https://elixir-lang.org/">Elixir</a> (a rubyesque functional language on top of Erlang)  </li>
    <li>
  <a href="https://github.com/phoenixframework/phoenix">Phoenix</a> (web framework for Elixir)  </li>
    <li>
  <a href="https://github.com/scrogson/cryptex">Cryptex</a> (underlying crypto Elixir library)  </li>
    <li>
  <a href="https://erlang.org/doc/man/crypto.html">Crypo</a> (Erlang cryptography library)  </li>
  </ul>
  """
end
def article("webl") do
  """
  <p>
  An exploration of the Go language (golang) to build a simple webcrawler, all code is available on <a href="https://github.com/aforward/webl">GitHub</a>.  This application was written as an exploration of the language and demonstration of the various features of the language; it is not feature complete but should be complex enough to provide some examples of using Go&#39;s various concurrent features, tied together in a simple command line and web interface.</p>
  <p>
    <img src="/images/blog/webl/github.jpg" alt="GitHub Repo for Webl" />
  </p>
  <h3>
  Installation</h3>
  <p>
  The webcrawler uses <a href="https://redis.io">Redis</a>, to store results. Please install it and ensure it is running before starting.&lt;/p&gt;</p>
  <p>
  Grab the three projects:</p>
  <pre><code class="shell language-shell">go get github.com/aforward/webl/api
  go get github.com/aforward/webl/weblconsole
  go get github.com/aforward/webl/weblui</code></pre>
  <p>
  Build and test them</p>
  <pre><code class="shell language-shell">cd $GOPATH/src
  go test github.com/aforward/webl/api
  go build github.com/aforward/webl/weblconsole
  go build github.com/aforward/webl/webluiß</code></pre>
  <h3>
  The Web Application</h3>
  <p>
  To start the webserver</p>
  <pre><code class="shell language-shell">cd $GOPATH/src/github.com/aforward/webl/weblui
  go build
  ./weblui</code></pre>
  <p>
  The launched application should be available at <a href="http://127.0.0.1:4005">http://127.0.0.1:4005</a>, and you can add urls to crawl.</p>
  <p>
    <img src="/images/blog/webl/add_url.jpg" alt="Adding a URL" />
  </p>
  <p>
  Using websockets, it attaches itself to the running project and streams the current status back to Javascript.</p>
  <p>
    <img src="/images/blog/webl/logger.jpg" alt="The Logger" />
  </p>
  <p>
  Data is persisted to <a href="https://redis.io">Redis</a>, so that you can view recently crawled</p>
  <p>
    <img src="/images/blog/webl/list.jpg" alt="Found files list view" />
  </p>
  <p>
  In the details view, we show the sitemap as a table, showing links (to other pages), and assets (being used on the current page, e.g. Javascript / CSS). For simplicity, we are only crawling within a domain (e.g. a4word.com), and do not look beyond (e.g. twitter.com / facebook.com) or within other subdomains (e.g. admin.a4word.com).</p>
  <p>
    <img src="/images/blog/webl/table_view.jpg" alt="Found files table view" />
  </p>
  <p>
  I experimented with <a href="http://www.graphdracula.net/">Graph Dracula</a> for some better visualizations, but right now the results are far too busy.</p>
  <p>
    <img src="/images/blog/webl/graph.jpg" alt="Graph Dracula view" />
  </p>
  <h3>
  The Console Application</h3>
  <p>
  To start the console</p>
  <pre><code class="shell language-shell">cd $GOPATH/src/github.com/aforward/webl/weblconsole
  go build
  # change a4word.com with your url
  ./weblconsole -url=a4word.com</code></pre>
  <p>
  The webl library is consumed by a web application (described above) and console application, described here.  Both systems are thin clients and push most of the work to the Go library.</p>
  <p>
    <img src="/images/blog/webl/console_help.jpg" alt="Console help flag" />
  </p>
  <p>
  In fact, the logged output in the web application is drawn from the same logging information used to display to the console (but the console has extra flags to turn verbosity up and down)</p>
  <p>
    <img src="/images/blog/webl/console_download.jpg" alt="Console download" />
  </p>
  <h3>
  The Data Store</h3>
  <p>
  For simplicity, data is stored in a <a href="https://redis.io">Redis</a> database.  We are using a set to manage all crawled domains.</p>
  <pre><code class="shell language-shell">127.0.0.1:6379&gt; smembers domains
  1) &quot;instepfundraising.com&quot;
  2) &quot;a4word.com&quot;</code></pre>
  <p>
  Each resource is unique identified by it&#39;s <a href="http://en.wikipedia.org/wiki/Uniform_resource_locator">URL:</a> and is stored internally as a has of properties</p>
  <pre><code class="shell language-shell">127.0.0.1:6379&gt; hgetall &quot;resources:::http://a4word.com/snippets.php&quot;
   1) &quot;name&quot;
   2) &quot;/snippets.php&quot;
   3) &quot;lastanalyzed&quot;
   4) &quot;2014-05-19 15:54:23&quot;
   5) &quot;url&quot;
   6) &quot;http://a4word.com/snippets.php&quot;
   7) &quot;status&quot;
   8) &quot;200 OK&quot;
   9) &quot;statuscode&quot;
  10) &quot;200&quot;
  11) &quot;lastmodified&quot;
  12) &quot;&quot;
  13) &quot;type&quot;
  14) &quot;text/html&quot;</code></pre>
  <p>
  Assets and Links within a page are stored in an <em>edges</em> set for each resource.</p>
  <pre><code class="shell language-shell">127.0.0.1:6379&gt; smembers &quot;edges:::http://a4word.com/snippets.php&quot;
   1) &quot;http://a4word.com/Andrew-Forward-Resume.php&quot;
   2) &quot;http://a4word.com/css/gumby.css&quot;
   3) &quot;http://a4word.com/snippets.php&quot;
   4) &quot;http://a4word.com/js/syntaxhighlighter_3.0.83/scripts/shBrushBash.js&quot;
   5) &quot;http://a4word.com/js/libs/ui/gumby.retina.js&quot;
   6) &quot;http://a4word.com&quot;</code></pre>
  <p>
  The data structure in Go represent the results of a crawl, are captured in a Resource struct.</p>
  <pre><code class="go language-go">type Resource struct {
    Name string
    LastAnalyzed string
    Url string
    Status string
    StatusCode int
    LastModified string
    Type string
    Links []*Resource
    Assets []*Resource
  }</code></pre>
  <h3>
  Configure The Logger</h3>
  <p>
  To flexibly manage the logging of information, we configured four type of logs:</p>
  <pre><code class="go language-go">// TRACE: For a more in-depth view of how the code is behaving&lt;/li&gt;
  // INFO: Key feedback of the running system&lt;/li&gt;
  // WARN: When things go awry, but not necessary totally un-expected&lt;/li&gt;
  // ERROR: Catatrosphic issue that typically results in a shut down of the app&lt;/li&gt;</code></pre>
  <p>
  From the command line, by default, we display INFO, WARN, and ERROR.  Using the <code class="inline">-verbose</code> flag, we include TRACE, and using the <code class="inline">-quiet</code> flag we turn off INFO (and TRACE is off too).  This is accomplished by setting the appropriate io.Writer.</p>
  <pre><code class="go language-go">// use ioutil.Discard to ignore message
  // use os.Stdout for displaying messages to the standard console
  // use os.Stderr for displaying messages to the error console</code></pre>
  <p>
  In addition, the logger also accecpt a WebSocket (*websocket.Conn), which allows us to stream results from the crawler directly to the browser.</p>
  <h3>
  Using WaitGroups For Concurrency</h3>
  <p>
  The Crawl algorithm is broken down into two parts: fetch and analyze.  The fetch portion performs an HTTP Get on the domain being crawled, and then passes the response to the analyze to extract the wanted metadata (like status code, and document type) as well as look for additional links to fetch.</p>
  <pre><code class="go language-go">// A trimmed down version of Crawl to show the basic of WaitGroups
  func Crawl(domainName string) {
    var wg sync.WaitGroup
    wg.Add(1)
  
    alreadyProcessed := set.New()
    url := toUrl(domainName,&quot;&quot;)
    name := ToFriendlyName(url)
  
    AddDomain(&amp;Resource{ Name: name, Url: url, LastAnalyzed: lastAnalyzed })
    go fetchResource(name, url, alreadyProcessed, &amp;wg)
    wg.Wait();
  }</code></pre>
  <p>
  In the crawl, we setup a synchronized set to avoid processing the same link twice, and delegate the fetching of the data to a goroutine fetchResource.  To ensure the main program doesn&#39;t quit right away, we use a WaitGroup to track how many things we have left to process.</p>
  <p>
  In a first, iteration, the fetchResource needs to tell the WaitGroup, it&#39;s done, and we do this with a defer call (similar to ensure in ruby).</p>
  <pre><code class="go language-go">func fetchResource(domainName string, currentUrl string, alreadyProcessed *set.Set, wg *sync.WaitGroup) {
  
    // When the method ends, decrement to wait group
    defer wg.Done()
  
    // Don&#39;t re-process the same urls
    if alreadyProcessed.Has(currentUrl) {
  
    // Only process the Urls within the same domain
    // (a rule for this web crawler, not necessarily yours)
    } else if shouldProcessUrl(domainName,currentUrl) {
      alreadyProcessed.Add(currentUrl)
  
      // Fetch the data
      resp, err := http.Get(currentUrl)
      should_close_resp := true
  
      if err != nil {
        return
      } else {
        contentType := resp.Header.Get(&quot;Content-Type&quot;)
        lastModified := resp.Header.Get(&quot;Last-Modified&quot;)
  
        // Only webpages (e.g. text/html) should be trasversed
        // other links are assets like JS, CSS, etc
        if IsWebpage(contentType) {
          if resp.StatusCode == 200 {
            should_close_resp = false
  
            // More work to do, so increment the WaitGroup
            // And delegate to the analyzer
            wg.Add(1);
            go analyzeResource(domainName, currentUrl, resp, alreadyProcessed, httpLimitChannel, wg)
          }
        }
      }
  
      // Note that the analyzeResource will close
      // the response, but it&#39;s not called in all cases
      // So I have this extra code here
      if should_close_resp {
        if resp == nil || resp.Body == nil {
          return
        }
        defer io.Copy(ioutil.Discard, resp.Body)
        defer resp.Body.Close()
      }
    }
  }</code></pre>
  <p>
  The analyzer will process the data, identify the links and then fetch them.</p>
  <pre><code class="go language-go">func analyzeResource(domainName string, currentUrl string, resp *http.Response, alreadyProcessed *set.Set, httpLimitChannel chan int, wg *sync.WaitGroup) {
    defer wg.Done()
    defer resp.Body.Close()
    defer io.Copy(ioutil.Discard, resp.Body)
  
    tokenizer := html.NewTokenizer(resp.Body)
    for {
      token_type := tokenizer.Next()
      if token_type == html.ErrorToken {
        // Something went wrong in the processing of the file
        if tokenizer.Err() != io.EOF {
          WARN.Println(fmt.Sprintf(&quot;HTML error found in %s due to &quot;, currentUrl, tokenizer.Err()))
        }
        return
      }
      token := tokenizer.Token()
      switch token_type {
      case html.StartTagToken, html.SelfClosingTagToken:
  
        path := resourcePath(token)
  
        // If the found token contains a link to another URL
        // Then we have more work to, and must fetch another resource
        if path != &quot;&quot; {
          wg.Add(1)
          nextUrl := toUrl(domainName,path)
          go fetchResource(domainName,nextUrl,alreadyProcessed,httpLimitChannel,wg)
        }
      }
    }
  }</code></pre>
  <p>
  For simplicity, I stripped out the persistence of the crawled data, so please refer to the <a href="https://github.com/aforward/webl">GitHub project</a> to browse the working code.</p>
  <h3>
  Throttle http.Get with a Channel (semaphore)</h3>
  <p>
  Go is fast, fast enough that you can run out of resources locally (i.e. 1024 open files), or burden the remote server.  To throttle goroutines, we use a &quot;full&quot; channel to limit the number of executing http.Get <a href="http://www.golangpatterns.info/concurrency/semaphores">Implementing a Semaphores in Go</a>.</p>
  <pre><code class="go language-go">// fills up a channel of integers to capacity
  func initCapacity(maxOutstanding int) (sem chan int) {
    sem = make(chan int, maxOutstanding)
    for i := 0; i &lt; maxOutstanding; i++ {
      sem &lt;- 1
    }
    return
  }
  
  // initialize the http GET limit channel
  httpLimitChannel := initCapacity(4)
  
  // wrap the http.GET around the channel
  // as &lt;- will block until available
  &lt;-httpLimitChannel
  resp, err := http.Get(currentUrl)
  httpLimitChannel &lt;- 1</code></pre>
  <p>
  Here&#39;s a great talk <a href="https://youtube.com/watch?v=f6kdp27TYZs">introducing Go&#39;s concurrency patterns</a></p>
  <h3>
  Respecting Robots.txt</h3>
  <p>
  The <a href="http://www.robotstxt.org/">Web Robots Pages</a> describes how bots, like webl all allowed to interact with the site.  To achieve this, we used a <a href="https://github.com/temoto/robotstxt-go">robotstxt</a> and enhanced the fetchResource to keep track of &lt;i&gt;which&lt;/i&gt; robots it had loaded to avoid having to fetch the data on each request.</p>
  <p>
    <img src="/images/blog/webl/robots_txt.jpg" alt="Robots dot text" />
  </p>
  <p>
  The bulk of the heavy lifting looks like the following:</p>
  <pre><code class="go language-go">func canRobotsAccess(input string, allRobots map[string]*robotstxt.RobotsData) (canAccess bool) {
    canAccess = true
    robotsUrl := toRobotsUrl(input)
    inputPath := toPath(input)
  
    if robot,ok := allRobots[robotsUrl]; ok {
      if robot == nil {
        return
      }
      canAccess = robot.TestAgent(inputPath, &quot;WeblBot&quot;)
    } else {
      allRobots[robotsUrl] = nil
      TRACE.Println(fmt.Sprintf(&quot;Loading %s&quot;,robotsUrl))
      resp, err := http.Get(robotsUrl)
      if resp != nil &amp;&amp; resp.Body != nil {
        defer resp.Body.Close()
      }
      if err != nil {
        return
      }
      if resp.StatusCode != 200 {
        TRACE.Println(fmt.Sprintf(&quot;Unable to access %s, assuming full access.&quot;,robotsUrl))
        return
      } else {
        robot, err := robotstxt.FromResponse(resp)
        if err != nil {
          return
        }
        allRobots[robotsUrl] = robot
        canAccess = robot.TestAgent(inputPath, &quot;WeblBot&quot;)
        TRACE.Println(fmt.Sprintf(&quot;Access to %s via %s (ok? %t)&quot;,inputPath,robotsUrl,canAccess))
      }
    }
    return
  }</code></pre>
  <h3>
  If you wanted to improve things</h3>
  <ul>
    <li>
  Adding the ability to manage multiple crawls over a domain and provide a diff of the results.  </li>
    <li>
  Adding security to prevent abuse from crawling too often.  </li>
    <li>
  Improve visualization based on how best to use the data (e.g. broken links, unused assets, etc).  This will most likely involve an improved data store (like Postgres) to allow for reaching searching.  </li>
    <li>
  Improved sitemap.xml generation to grab other fields like priority, last modified, etc.  </li>
    <li>
  Improved resource meta-data like title, and keywords, as well as taking thumbnails of the webpage.  </li>
    <li>
  Improved link identification by analyzing JS and CSS for urls.  </li>
  </ul>
  """
end


  def title("lighthouse-seo-chrome-tool"),  do: "Analysing your website with Lighthouse SEO (Chrome Plugin)"
def title("hubspot_website_grader"),  do: "Analysing your website with Hubspot Website Grader"
def title("doodle-doctorwho"),  do: "Doctor Who Doodles"
def title("doodle-spacecat"),  do: "Spacecat"
def title("new-blog-2023"),  do: "A new blog for 2023"
def title("hugo_and_tailwind"),  do: "Installing Hugo with Tailwind CSS"
def title("ocaml-and-vcl-cloud"),  do: "Running OCAML on UOttawa VCL"
def title("ocaml-and-vscode"),  do: "Configure VS Code to run OCAML a Mac OSX"
def title("1password-sessions"),  do: "Automating 1Password CLI with --session"
def title("1password-bootstrap"),  do: "Bootstrapping 1Password CLI using Expect"
def title("shapkgsum-verify-mac-packages"),  do: "Verifying .pkg files on a Mac (using Go)"
def title("fast-isolated-nonbrittle"),  do: "I don't like the name *unit tests*."
def title("generating-global-ids"),  do: "Generating Globally Unique IDs"
def title("git-rebase-webcampzg"),  do: "git rebase -i HEAD\~25"
def title("the-code-i-didnt-write"),  do: "The Code I Didn't Write"
def title("installing-packer-for-image-creation"),  do: "Installing Packer For Image Creation"
def title("empex-2019-liveview"),  do: "LiveView Talk at Empex 2019"
def title("connecting-to-aws-using-saml"),  do: "Connecting to AWS using SAML"
def title("liveview-examples"),  do: "Phoenix LiveView Examples"
def title("hackerrank-for-elixir"),  do: "HackerRank Template in Elixir"
def title("installing-chefdk-on-mac"),  do: "Getting Started With ChefDK"
def title("from-sockets-to-sessions-with-liveview"),  do: "LiveView storing Session Data on Redirect"
def title("executing-custom-javascript-with-liveview"),  do: "Run Custom JS on LivePage Reload"
def title("llewellyn-falco-from-0-to-100-tested-code"),  do: "Falco \"From 0% to 100% tested code\""
def title("kent-beck-beauty-in-code"),  do: "Kent Beck's \"Beauty In Code\""
def title("oh-the-apis-opencamps-2017"),  do: "Oh, the API Clients You'll Build (in Elixir)"
def title("doex-elixir-api-for-digital-ocean"),  do: "Yet Another Digital Ocean API client in Elixir"
def title("mailgun-on-digital-ocean"),  do: "Setting up Mailgun on Digital Ocean"
def title("continuous-testing-with-elixir"),  do: "Continuous Testing with Elixir"
def title("safetybox"),  do: "Simple encryption in Elixir"
def title("webl"),  do: "A simple web crawler in Golang"



  def meta("lighthouse-seo-chrome-tool") do
  %{
    title: "Analysing your website with Lighthouse SEO (Chrome Plugin)",
    datetime: "2023-01-15",
    slug: "lighthouse-seo-chrome-tool"
  }
end
def meta("hubspot_website_grader") do
  %{
    title: "Analysing your website with Hubspot Website Grader",
    datetime: "2023-01-14",
    slug: "hubspot_website_grader"
  }
end
def meta("doodle-doctorwho") do
  %{
    title: "Doctor Who Doodles",
    datetime: "2023-01-04",
    slug: "doodle-doctorwho"
  }
end
def meta("doodle-spacecat") do
  %{
    title: "Spacecat",
    datetime: "2023-01-01",
    slug: "doodle-spacecat"
  }
end
def meta("new-blog-2023") do
  %{
    title: "A new blog for 2023",
    datetime: "2022-12-23",
    slug: "new-blog-2023"
  }
end
def meta("hugo_and_tailwind") do
  %{
    title: "Installing Hugo with Tailwind CSS",
    datetime: "2022-09-14",
    slug: "hugo_and_tailwind"
  }
end
def meta("ocaml-and-vcl-cloud") do
  %{
    title: "Running OCAML on UOttawa VCL",
    datetime: "2020-08-30",
    slug: "ocaml-and-vcl-cloud"
  }
end
def meta("ocaml-and-vscode") do
  %{
    title: "Configure VS Code to run OCAML a Mac OSX",
    datetime: "2020-08-30",
    slug: "ocaml-and-vscode"
  }
end
def meta("1password-sessions") do
  %{
    title: "Automating 1Password CLI with --session",
    datetime: "2020-08-28",
    slug: "1password-sessions"
  }
end
def meta("1password-bootstrap") do
  %{
    title: "Bootstrapping 1Password CLI using Expect",
    datetime: "2020-08-27",
    slug: "1password-bootstrap"
  }
end
def meta("shapkgsum-verify-mac-packages") do
  %{
    title: "Verifying .pkg files on a Mac (using Go)",
    datetime: "2020-08-22",
    slug: "shapkgsum-verify-mac-packages"
  }
end
def meta("fast-isolated-nonbrittle") do
  %{
    title: "I don't like the name *unit tests*.",
    datetime: "2020-07-10",
    slug: "fast-isolated-nonbrittle"
  }
end
def meta("generating-global-ids") do
  %{
    title: "Generating Globally Unique IDs",
    datetime: "2020-05-26",
    slug: "generating-global-ids"
  }
end
def meta("git-rebase-webcampzg") do
  %{
    title: "git rebase -i HEAD\~25",
    datetime: "2019-10-11",
    slug: "git-rebase-webcampzg"
  }
end
def meta("the-code-i-didnt-write") do
  %{
    title: "The Code I Didn't Write",
    datetime: "2019-07-06",
    slug: "the-code-i-didnt-write"
  }
end
def meta("installing-packer-for-image-creation") do
  %{
    title: "Installing Packer For Image Creation",
    datetime: "2019-07-03",
    slug: "installing-packer-for-image-creation"
  }
end
def meta("empex-2019-liveview") do
  %{
    title: "LiveView Talk at Empex 2019",
    datetime: "2019-07-02",
    slug: "empex-2019-liveview"
  }
end
def meta("connecting-to-aws-using-saml") do
  %{
    title: "Connecting to AWS using SAML",
    datetime: "2019-05-30",
    slug: "connecting-to-aws-using-saml"
  }
end
def meta("liveview-examples") do
  %{
    title: "Phoenix LiveView Examples",
    datetime: "2019-05-29",
    slug: "liveview-examples"
  }
end
def meta("hackerrank-for-elixir") do
  %{
    title: "HackerRank Template in Elixir",
    datetime: "2019-05-27",
    slug: "hackerrank-for-elixir"
  }
end
def meta("installing-chefdk-on-mac") do
  %{
    title: "Getting Started With ChefDK",
    datetime: "2019-05-22",
    slug: "installing-chefdk-on-mac"
  }
end
def meta("from-sockets-to-sessions-with-liveview") do
  %{
    title: "LiveView storing Session Data on Redirect",
    datetime: "2019-05-21",
    slug: "from-sockets-to-sessions-with-liveview"
  }
end
def meta("executing-custom-javascript-with-liveview") do
  %{
    title: "Run Custom JS on LivePage Reload",
    datetime: "2019-05-20",
    slug: "executing-custom-javascript-with-liveview"
  }
end
def meta("llewellyn-falco-from-0-to-100-tested-code") do
  %{
    title: "Falco \"From 0% to 100% tested code\"",
    datetime: "2019-05-15",
    slug: "llewellyn-falco-from-0-to-100-tested-code"
  }
end
def meta("kent-beck-beauty-in-code") do
  %{
    title: "Kent Beck's \"Beauty In Code\"",
    datetime: "2018-05-31",
    slug: "kent-beck-beauty-in-code"
  }
end
def meta("oh-the-apis-opencamps-2017") do
  %{
    title: "Oh, the API Clients You'll Build (in Elixir)",
    datetime: "2017-11-27",
    slug: "oh-the-apis-opencamps-2017"
  }
end
def meta("doex-elixir-api-for-digital-ocean") do
  %{
    title: "Yet Another Digital Ocean API client in Elixir",
    datetime: "2017-07-28",
    slug: "doex-elixir-api-for-digital-ocean"
  }
end
def meta("mailgun-on-digital-ocean") do
  %{
    title: "Setting up Mailgun on Digital Ocean",
    datetime: "2015-12-03",
    slug: "mailgun-on-digital-ocean"
  }
end
def meta("continuous-testing-with-elixir") do
  %{
    title: "Continuous Testing with Elixir",
    datetime: "2015-12-02",
    slug: "continuous-testing-with-elixir"
  }
end
def meta("safetybox") do
  %{
    title: "Simple encryption in Elixir",
    datetime: "2015-10-24",
    slug: "safetybox"
  }
end
def meta("webl") do
  %{
    title: "A simple web crawler in Golang",
    datetime: "2014-06-07",
    slug: "webl"
  }
end

end
