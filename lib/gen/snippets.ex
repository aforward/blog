defmodule Gen.Snippets do
  def snippets() do
    [
      %{
        title: "Changing a YAML file in Ruby",
        body: """
        <pre><code class="ruby language-ruby">require &quot;yaml&quot;
        File.open(&quot;./example.yml&quot;, &#39;w&#39;) {|f| f.write(&quot;
        workbook: 5
        sheet: 10
        header_index: 5
        headers:
          - hello
          - hi
          - bye
        &quot;) }
        data = YAML.load_file(&quot;./example.yml&quot;)
        puts &quot;OLD DATA: \#{data}&quot;

        data[&quot;headers&quot;] = [ &quot;Hello&quot;, &quot;Hi&quot;, &quot;Bye&quot; ]
        File.open(&quot;./example.yml&quot;, &#39;w&#39;) {|f| f.write(data.to_yaml) }

        data = YAML.load_file(&quot;./example.yml&quot;)
        puts &quot;NEW DATA: \#{data}&quot;</code></pre>
        """,
        slug: "changing-yaml-file-ruby"
      },
      %{
        title: "Clean bundler within a Ruby Script",
        body: """
        <pre><code class="ruby language-ruby">oenv = ENV.to_hash
        begin
          %w{BUNDLE_GEMFILE RUBYOPT GEM_HOME GIT_DIR GIT_WORK_TREE BUNDLE_BIN_PATH}.each { |key| ENV.delete(key) }
          output = IO.popen(&quot;xlshell \&quot;\#{filename}\&quot; \&quot;\#{worksheet}\&quot;&quot;)
          return output.readlines.collect { |f| f.strip }
        ensure
          ENV.replace(oenv)
        end</code></pre>
        """,
        slug: "clean_bundler_within_ruby_script"
      },
      %{
        title: "Clear Your Local DNS Cache",
        body: """
        <pre><code class="bash language-bash">dscacheutil -flushcache</code></pre>
        <p>
        On newer Macs, somethings this works too.</p>
        <pre><code class="bash language-bash">sudo killall -HUP mDNSResponder</code></pre>
        """,
        slug: "clear-dns"
      },
      %{
        title: "Create a public / private key",
        body: """
        <pre><code class="bash language-bash">ssh-keygen -t rsa</code></pre>
        """,
        slug: "create-public-private-key"
      },
      %{
        title: "Dealing with CSV files and MS Excel (.xls / .xlsx)",
        body: """
        <p>
        When dealing with CSV, you need to get your encodings correct.Excel will typically export to ISO-8859-1. This is not good, and should be converted to UTF-8 to support non english files.</p>
        <p>
        To check the encoding of a file</p>
        <pre><code class="bash language-bash">file -I original_file.csv</code></pre>
        <p>
        To convert between encodings (a few common examples)</p>
        <pre><code class="bash language-bash">iconv --from-code=ISO-8859-1 --to-code=UTF-8 original_file.csv &gt; new_file.utf8.csv
        iconv --from-code=MacRoman --to-code=UTF-8 original_file.csv &gt; new_file.utf8.csv</code></pre>
        <p>
        When exporting files to be read within Excel, you will need to convert the CSV based on the target platform.</p>
        <h2>
        For MAC</h2>
        <pre><code class="bash language-bash">iconv --from-code=UTF-8 --to-code=MacRoman downloaded_file.csv &gt; downloaded_file_mac.excel.csv</code></pre>
        <h2>
        For PC (untested)</h2>
        <pre><code class="bash language-bash">iconv --from-code=UTF-8 --to-code=Windows-1252 downloaded_file.csv &gt; downloaded_file_windows.excel.csv</code></pre>
        """,
        slug: "dealing-with-csv-encodings-and-xls"
      },
      %{
        title: "Deleting Git Branches",
        body: """
        <p>
        Delete the &quot;demo_maintenance&quot; branch on the &quot;origin&quot; remote server.</p>
        <pre><code class="bash language-bash">git push origin :demo_maintenance # deletes the remote branch
        git branch -d demo_maintenance # deletes the local branch</code></pre>
        <p>
        If you need to &#39;force&#39; the delete on your local machine, use -D</p>
        <pre><code class="bash language-bash">git branch -D demo_maintenance # deletes the local branch</code></pre>
        """,
        slug: "delete-git-branch"
      },
      %{
        title: "Delete Rails sessions",
        body: """
        <p>
        Remove all old sessions, and then optimize the table.&lt;/p&gt;</p>
        <pre><code class="sql language-sql">DELETE
        FROM sessions
        WHERE updated_at &lt; DATE_SUB(NOW(), INTERVAL 1 DAY);

        optimize TABLE sessions;</code></pre>
        """,
        slug: "delete-rails-sessions"
      },
      %{
        title: "Destroy All RabbitMQ Queues",
        body: """
        <p>
        Should only be done on a dev machine:</p>
        <pre><code class="bash language-bash">rabbitmqctl stop_app
        rabbitmqctl reset
        rabbitmqctl start_app</code></pre>
        """,
        slug: "destroy-all-rabbitmq-queues"
      },
      %{
        title: "Faster Macbook Pro Wakeups",
        body: """
        <p>
        A longer discussion at
        <a href="https://blog.ewal.net/fixing-slow-wake-for-macbook-pro-w-retina-display/">ewal.net</a></p>
        <pre><code class="bash language-bash">sudo pmset -a standbydelay 86400 # only standby after 24 hours</code></pre>
        """,
        slug: "faster_macbook-wakeups"
      },
      %{
        title: "Find text in files within a directory",
        body: """
        <pre><code class="bash language-bash">grep -r &quot;some words reward&quot; /path/tp/look/*</code></pre>
        """,
        slug: "find-in-files"
      },
      %{
        title: "Find large files on a Linux / Mac OS X machine",
        body: """
        <p>
        The following should owrk on your Mac OS X</p>
        <pre><code class="bash language-bash">sudo find / -type f -size +20000k -exec ls -lh {} \; | awk &#39;{ print $9 &quot;: &quot; $5 }&#39;</code></pre>
        <p>
        For a linux (tested on Ubuntu), the $9 most liley needs to be an $8</p>
        <pre><code class="bash language-bash">sudo find / -type f -size +20000k -exec ls -lh {} \; | awk &#39;{ print $8 &quot;: &quot; $5 }&#39;</code></pre>
        """,
        slug: "finding-large-files"
      },
      %{
        title: "Enable FTP on Mac OS X Lion",
        body: """
        <pre><code class="bash language-bash"># enable the ftp server
        sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist

        #disable the server when you are done
        sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist</code></pre>
        """,
        slug: "ftp-mac-osx-lion"
      },
      %{
        title: "Checking Out New Git Branches",
        body: """
        <p>
        First locat the branches, then checkout the one you want (e.g. origin/demo1)</p>
        <pre><code class="bash language-bash">git branch -r
        git checkout --track -b demo1 origin/demo1</code></pre>
        """,
        slug: "git-remote-branches"
      },
      %{
        title: "Undo a local commit",
        body: """
        <p>
        If you committing a git change locally, you can undo it using the following command:</p>
        <pre><code class="bash language-bash">git reset --soft HEAD^</code></pre>
        """,
        slug: "git-undo-local-commit"
      },
      %{
        title: "Undo the last pushed commited",
        body: """
        <p>
        If you already committed the change, then you need to do hard resets:</p>
        <pre><code class="bash language-bash">git reset --hard HEAD~1
        git push -f</code></pre>
        """,
        slug: "git-undo-pushed-commit"
      },
      %{
        title: "Granting passwordless access to root on RHEL",
        body: """
        <p>
        When running CHEF, it needs root access, so if you are using something like chef-solo, and you like
        automated scripts, then here is how grant that access.  PLEASE NOTE, THIS IS VERY UNSAFE, to
        avoid try, I created a (now obsolete) <a href="https://github.com/aforward/chef-bootstrap">CHEF BOOTSTRAP</a>.</p>
        <pre><code class="bash language-bash">$ mkdir -p /root/.ssh
        $ chmod 700 /root/.ssh
        $ chmod 600 /roiot/.ssh/authorized_keys
        $ restorecon -R -v /root/.ssh</code></pre>
        """,
        slug: "grant-passwordless-root-access"
      },
      %{
        title: "Install older version of HTML to PDF (wkhtmltopdf) using Homebrew on a Mac",
        body: """
        <p>
        Bug with current version that will cause the process to not exit properly:&lt;/p&gt;</p>
        <pre><code class="bash language-bash">brew uninstall wkhtmltopdf
        cd /usr/local/Library/Formula/
        git checkout 6e2d550 /usr/local/Library/Formula/wkhtmltopdf.rb
        brew install wkhtmltopdf
        wkhtmltopdf --version | grep 0.9.9</code></pre>
        <p>
        Ticket was described <a href="https://code.google.com/p/wkhtmltopdf/issues/detail?id=141">here</a>, but now the site (and history)
        have for <a href="https://wkhtmltopdf.org/">wkhtmltopdf.org</a> have moved.
        Thank you to <a href="http://wearepandr.com/blog/article/homebrew-and-installing-old-package-versions">wearepandr</a></p>
        """,
        slug: "htmltopdf"
      },
      %{
        title: "Kill a Defunct Process",
        body: """
        <pre><code class="bash language-bash"># Locate defunct processes
        ps -A | grep defunct

        # Get the parent ID (UID PID PPID ...)
        ps -ef | grep defunct | more

        # for example...
        deployer  2707  2698  0  2012 ?        00:00:03 [unicorn_rails] &lt;defunct&gt;
        deployer  2710  2698  0  2012 ?        00:00:04 [unicorn_rails] &lt;defunct&gt;

        # Kill the parent PID (PPID)
        kill -9 2698</code></pre>
        """,
        slug: "kill-defunct-processes"
      },
      %{
        title: "See how much memory something consumes in PHP",
        body: """
        <pre><code class="php language-php">$start_time = microtime(true);
        $start_memory = memory_get_usage();

        // INSERT CODE HERE

        $end_memory = memory_get_usage();
        $end_time = microtime(true);

        print_r(array(
          &#39;memory (Mb)&#39; =&gt; ($end_memory - $start_memory) / (1024 * 1024),
          &#39;time (s)&#39; =&gt; $end_time - $start_time
        ));</code></pre>
        """,
        slug: "measure-php-memory-usage"
      },
      %{
        title: "Memcache in PHP",
        body: """
        <pre><code class="php language-php">$memcache = new Memcache();
        $memcache-&gt;connect(&#39;localhost&#39;, 11211);

        function doSomethingSlow() {
          sleep(5);
          return &quot;foobar&quot;;
        }

        $name = $memcache-&gt;get(&#39;name&#39;);
        if (!$name)
        {
          $name = doSomethingSlow();
          $memcache-&gt;set(&#39;name&#39;,$name);
        }

        echo $name;</code></pre>
        """,
        slug: "memcache-in-php"
      },
      %{
        title: "Execute a single MySQL statement from command line",
        body: """
        <pre><code>mysql -u myname -pmypassword -D mydb -e &quot;show tables&quot;</code></pre>
        """,
        slug: "mysql-from-command-line"
      },
      %{
        title: "Granting access to mysql users",
        body: """
        <pre><code class="sql language-sql">SHOW GRANTS FOR deployer
        # ALL ACCESS
        GRANT ALL ON myshop.* TO &#39;deployer&#39;@&#39;%&#39; IDENTIFIED BY &#39;pass&#39; ;
        # SELECT ONLY, and filtered by IP
        GRANT SELECT ON myshop.* TO deployer@&#39;192.168.1.%&#39; IDENTIFIED BY &#39;pass&#39;;
        # Or by domain name
        GRANT SELECT ON myshop.* TO deployer@&#39;webapp.myserver.com&#39; IDENTIFIED BY &#39;pass&#39;;
        FLUSH PRIVILEGES;</code></pre>
        <h2>
        Removing access to mysql users</h2>
        <pre><code class="sql language-sql">REVOKE ALL PRIVILEGES, GRANT OPTION FROM &#39;deployer&#39;@&#39;%&#39;;</code></pre>
        """,
        slug: "mysql-grants"
      },
      %{
        title: "How to change owners of a postgres database",
        body: """
        <pre><code class="sql language-sql">GRANT ALL PRIVILEGES ON DATABASE @DATABASE_NAME@ TO @NEW_USERNAME@;
        GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO @NEW_USERNAME@;</code></pre>
        <p>
        For example, changing from the &#39;postgres&#39; user to the &#39;deployer&#39; user.</p>
        <pre><code class="sql language-sql">GRANT ALL PRIVILEGES ON DATABASE my_app TO deployer;
        GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO deployer;</code></pre>
        """,
        slug: "postgres-db-privileges"
      },
      %{
        title: "Granting access to postgres users",
        body: """
        <pre><code class="sql language-sql">CREATE USER myuser  WITH ENCRYPTED PASSWORD &#39;ppp&#39;;
        GRANT USAGE ON SCHEMA public to myuser;
        ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO myuser;

        GRANT CONNECT ON DATABASE mydb to myuser;
        \c mydb
        GRANT USAGE ON SCHEMA public to myuser;
        GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO myuser;
        GRANT SELECT ON ALL TABLES IN SCHEMA public TO myuser;</code></pre>
        """,
        slug: "postgres-user-permissions"
      },
      %{
        title: "Clean / Clear / Delete Rails Databse Sessions",
        body: """
        <p>
        Don&#39;t forget to clear your sessions every once in a while</p>
        <pre><code class="bash language-bash">rake db:sessions:clear</code></pre>
        """,
        slug: "rails-clear-db-sessions"
      },
      %{
        title: "Run A Script Remotely Using SSH",
        body: """
        <p>
        For simple scripts, just pass them via a quoted string.</p>
        <pre><code class="bash language-bash">ssh name@server.com &#39;ls -la&#39;</code></pre>
        <p>
        For more complicated scripts, put them in a local file and stream them to the server.</p>
        <pre><code>ssh name@server.com &#39;bash -s&#39; &lt; local_script.sh</code></pre>
        """,
        slug: "remote-bash"
      },
      %{
        title: "Rename exentions on a file",
        body: """
        <pre><code class="bash language-bash">find . -name &#39;*.php.eex&#39; -exec sh -c &#39;mv &quot;$0&quot; &quot;${0%.php.eex}.eex&quot;&#39; {} \;
        find . -name &#39;*.php&#39; -exec sh -c &#39;mv &quot;$0&quot; &quot;${0%.php}.eex&quot;&#39; {} \;</code></pre>
        """,
        slug: "rename_extension_on_files"
      },
      %{
        title: "Maintain should support in latest rspec gem",
        body: """
        <p>
        If you receive warnings about should and either are not ready to change, or don&#39;t want to, here is how you can silence the warnings.</p>
        <p>
        Using <code class="inline">should</code> from rspec-expectations&#39; old <code class="inline">:should</code> syntax without explicitly enabling the syntax is deprecated. Use the new <code class="inline">:expect</code> syntax or explicitly enable <code class="inline">:should</code> instead.</p>
        <p>
        Using <code class="inline">stub</code> from rspec-mocks&#39; old <code class="inline">:should</code> syntax without explicitly enabling the syntax is deprecated. Use the new <code class="inline">:expect</code> syntax or explicitly enable <code class="inline">:should</code> instead.</p>
        <pre><code class="ruby language-ruby">RSpec.configure do |config|
          config.mock_with :rspec do |c|
            c.syntax = [:should, :expect]
          end
          config.expect_with :rspec do |c|
            c.syntax = [:should, :expect]
          end
        end</code></pre>
        """,
        slug: "rspec-should-remove-warnings"
      },
      %{
        title: "Tar / Untar a file",
        body: """
        <p>
        Compress a directly into a tar.gz file:</p>
        <pre><code class="bash language-bash">tar cvzf myapp.tar.gz myapp/</code></pre>
        <p>
        Uncompress that file back into a directory:</p>
        <pre><code class="bash language-bash">tar zxfv myapp.tar.gz</code></pre>
        <p>
        Uncompress a gz zip (no tar):</p>
        <pre><code class="bash language-bash">gzcat x.txt.gz &gt;x.txt
        gunzip -c x.txt.gz &gt;x.txt</code></pre>
        """,
        slug: "tar-commands"
      },
      %{
        title: "Which Port is a Process Running On",
        body: """
        <p>
        Find which process is listening on a certain port</p>
        <pre><code class="bash language-bash">lsof -i :12345 # for port 12345</code></pre>
        """,
        slug: "which_port"
      }
    ]
  end
end
