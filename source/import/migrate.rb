


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>babodx.github.com/source/_import/migrate.rb at source · babodx/babodx.github.com</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe134-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (e1c0c3f392) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="DA428535:2D77:8A5B1E:52936BE7" name="octolytics-dimension-request_id" /><meta content="1391188" name="octolytics-actor-id" /><meta content="disburden" name="octolytics-actor-login" /><meta content="4f4f498f370d759dfdf10151dfb94c9972271e39b271d85bbde0c5bc4f751c08" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="MsOwZFqbMrxNB1gEX+xA/gTj1NiZKa3BIwwPecsZgyM=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-a74a5fce192e6b4fb51aee8caf915457fbbfefc2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-472a6c32cb9e80c66ee8f985f4cfa6666114340a.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-b1d0fec7595db649d617e0f0be1fadb36ce38de2.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-940f50a20aede0f934de53adcb5f15d0f52362a4.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="a9a09f774a9f14e5b447ed09efd66d66">

        <link data-pjax-transient rel='permalink' href='/babodx/babodx.github.com/blob/59375b8b831144b18b4c10e50abe47c23449d01d/source/_import/migrate.rb'>
  <meta property="og:title" content="babodx.github.com"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/babodx/babodx.github.com"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="babodx.github.com - babodx&#39;s octopress blog"/>

  <meta name="description" content="babodx.github.com - babodx&#39;s octopress blog" />

  <meta content="3482074" name="octolytics-dimension-user_id" /><meta content="babodx" name="octolytics-dimension-user_login" /><meta content="8172339" name="octolytics-dimension-repository_id" /><meta content="babodx/babodx.github.com" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="8172339" name="octolytics-dimension-repository_network_root_id" /><meta content="babodx/babodx.github.com" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/babodx/babodx.github.com/commits/source.atom" rel="alternate" title="Recent Commits to babodx.github.com:source" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey=" s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="disburden"
      data-repo="babodx/babodx.github.com"
      data-branch="source"
      data-sha="37e178b08a7442e4e37629cd6da13dc2edc6b560"
  >

    <input type="hidden" name="nwo" value="babodx/babodx.github.com" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/disburden" class="name">
        <img height="20" src="https://0.gravatar.com/avatar/ebcea4c6572fe284aa5b02586f2359a2?d=https%3A%2F%2Fidenticons.github.com%2F49943a0eeef34d4fe670c1d233c578c2.png&amp;r=x&amp;s=140" width="20" /> disburden
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="babodx/babodx.github.com">This repository</span>
    </li>
      <li>
        <a href="/babodx/babodx.github.com/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="MsOwZFqbMrxNB1gEX+xA/gTj1NiZKa3BIwwPecsZgyM=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="8172339" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/babodx/babodx.github.com/watchers">
        1
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/babodx/babodx.github.com/unstar"
      class="minibutton with-count js-toggler-target star-button starred upwards"
      title="Unstar this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/babodx/babodx.github.com/star"
      class="minibutton with-count js-toggler-target star-button unstarred upwards"
      title="Star this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/babodx/babodx.github.com/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/babodx/babodx.github.com/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/babodx/babodx.github.com/network" class="social-count">1</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/babodx" class="url fn" itemprop="url" rel="author"><span itemprop="title">babodx</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/babodx/babodx.github.com" class="js-current-repository js-repo-home-link">babodx.github.com</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    

    <div class="container">

      <div class="repository-with-sidebar repo-container  ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/babodx/babodx.github.com/tree/source" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /babodx/babodx.github.com/tree/source">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/babodx/babodx.github.com/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /babodx/babodx.github.com/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/babodx/babodx.github.com/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /babodx/babodx.github.com/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/babodx/babodx.github.com/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /babodx/babodx.github.com/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/babodx/babodx.github.com/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /babodx/babodx.github.com/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/babodx/babodx.github.com/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /babodx/babodx.github.com/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/babodx/babodx.github.com/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /babodx/babodx.github.com/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/babodx/babodx.github.com.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/babodx/babodx.github.com.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:babodx/babodx.github.com.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:babodx/babodx.github.com.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/babodx/babodx.github.com" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/babodx/babodx.github.com" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/babodx/babodx.github.com" class="minibutton sidebar-button js-conduit-rewrite-url">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


              <a href="/babodx/babodx.github.com/archive/source.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:37ca8476daa35cf8cf715a8ec6d3c740 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/babodx/babodx.github.com/find/source" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="source"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">source</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/babodx/babodx.github.com/blob/master/source/_import/migrate.rb"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/babodx/babodx.github.com/blob/source/source/_import/migrate.rb"
                 data-name="source"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="source">source</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/babodx/babodx.github.com/tree/source" data-branch="source" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">babodx.github.com</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/babodx/babodx.github.com/tree/source/source" data-branch="source" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">source</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/babodx/babodx.github.com/tree/source/source/_import" data-branch="source" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">_import</span></a></span><span class="separator"> / </span><strong class="final-path">migrate.rb</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="source/_import/migrate.rb" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/babodx/babodx.github.com/contributors/source/source/_import/migrate.rb">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>116 lines (100 sloc)</span>
        <span>3.189 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/babodx/babodx.github.com?branch=source&amp;filepath=source%2F_import%2Fmigrate.rb"
               title="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton tooltipped upwards"
                   title="Clicking this button will automatically fork this project so you can edit the file"
                   href="/babodx/babodx.github.com/edit/source/source/_import/migrate.rb"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/babodx/babodx.github.com/raw/source/source/_import/migrate.rb" class="button minibutton " id="raw-url">Raw</a>
            <a href="/babodx/babodx.github.com/blame/source/source/_import/migrate.rb" class="button minibutton ">Blame</a>
          <a href="/babodx/babodx.github.com/commits/source/source/_import/migrate.rb" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon tooltipped downwards"
             href="/babodx/babodx.github.com/delete/source/source/_import/migrate.rb"
             title="Fork this project and delete file"
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-ruby js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1"># coding: utf-8</span></div><div class='line' id='LC2'><span class="nb">require</span> <span class="s1">&#39;rubygems&#39;</span></div><div class='line' id='LC3'><span class="nb">require</span> <span class="s1">&#39;hpricot&#39;</span></div><div class='line' id='LC4'><span class="nb">require</span> <span class="s1">&#39;fileutils&#39;</span></div><div class='line' id='LC5'><span class="nb">require</span> <span class="s1">&#39;time&#39;</span></div><div class='line' id='LC6'><span class="nb">require</span> <span class="s1">&#39;ya2yaml&#39;</span></div><div class='line' id='LC7'><span class="nb">require</span> <span class="no">File</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="no">File</span><span class="o">.</span><span class="n">dirname</span><span class="p">(</span><span class="bp">__FILE__</span><span class="p">),</span> <span class="s2">&quot;downmark_it&quot;</span><span class="p">)</span></div><div class='line' id='LC8'><span class="nb">require</span> <span class="s1">&#39;nokogiri&#39;</span></div><div class='line' id='LC9'><span class="nb">require</span> <span class="s1">&#39;cgi&#39;</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="no">LANG_TABLE</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC12'>&nbsp;&nbsp;<span class="s1">&#39;asm&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;nasm&#39;</span><span class="p">,</span></div><div class='line' id='LC13'>&nbsp;&nbsp;<span class="s1">&#39;lisp&#39;</span> <span class="o">=&gt;</span> <span class="s1">&#39;cl&#39;</span><span class="p">,</span></div><div class='line' id='LC14'><span class="p">}</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="k">def</span> <span class="nf">filter_html</span><span class="p">(</span><span class="n">html</span><span class="p">)</span></div><div class='line' id='LC17'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">remove_node</span><span class="p">(</span><span class="n">node</span><span class="p">)</span></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">children</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">child</span><span class="o">|</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">add_previous_sibling</span> <span class="n">child</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">remove</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">underline_to_u</span><span class="p">(</span><span class="n">doc</span><span class="p">,</span> <span class="n">node</span><span class="p">)</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">u</span> <span class="o">=</span> <span class="n">doc</span><span class="o">.</span><span class="n">create_element</span> <span class="s1">&#39;u&#39;</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">children</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">child</span><span class="o">|</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">u</span> <span class="o">&lt;&lt;</span> <span class="n">child</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">add_previous_sibling</span> <span class="n">u</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">remove</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">pre_to_codeblock</span><span class="p">(</span><span class="n">doc</span><span class="p">,</span> <span class="n">node</span><span class="p">)</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lang</span> <span class="o">=</span> <span class="n">node</span><span class="o">[</span><span class="s1">&#39;class&#39;</span><span class="o">][</span><span class="sr">/brush: (\w+)/</span><span class="p">,</span> <span class="mi">1</span><span class="o">]</span> <span class="k">rescue</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lang</span> <span class="o">=</span> <span class="no">LANG_TABLE</span><span class="o">[</span><span class="n">lang</span><span class="o">]</span> <span class="k">if</span> <span class="no">LANG_TABLE</span><span class="o">.</span><span class="n">include?</span> <span class="n">lang</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">u</span> <span class="o">=</span> <span class="n">doc</span><span class="o">.</span><span class="n">create_text_node</span> <span class="s2">&quot;</span><span class="se">\n\n</span><span class="s2">``` </span><span class="si">#{</span><span class="n">lang</span><span class="si">}</span><span class="se">\n</span><span class="si">#{</span><span class="n">node</span><span class="o">.</span><span class="n">text</span><span class="si">}</span><span class="se">\n</span><span class="s2">```</span><span class="se">\n\n</span><span class="s2">&quot;</span></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">add_previous_sibling</span> <span class="n">u</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">node</span><span class="o">.</span><span class="n">remove</span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="n">html</span><span class="o">.</span><span class="n">sub!</span><span class="p">(</span><span class="sr">/&lt;\!--more--!&gt;/</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="n">doc</span> <span class="o">=</span> <span class="ss">Nokogiri</span><span class="p">:</span><span class="ss">:HTML</span> <span class="n">html</span></div><div class='line' id='LC43'>&nbsp;&nbsp;<span class="n">doc</span><span class="o">.</span><span class="n">css</span><span class="p">(</span><span class="s1">&#39;p&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="nb">p</span><span class="o">|</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">remove_node</span> <span class="nb">p</span></div><div class='line' id='LC45'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC46'><br/></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="n">doc</span><span class="o">.</span><span class="n">css</span><span class="p">(</span><span class="s1">&#39;span&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">span</span><span class="o">|</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">remove_node</span><span class="p">(</span><span class="n">span</span><span class="p">)</span> <span class="k">if</span> <span class="n">span</span><span class="o">[</span><span class="s1">&#39;style&#39;</span><span class="o">]</span> <span class="ow">and</span> <span class="n">span</span><span class="o">[</span><span class="s1">&#39;style&#39;</span><span class="o">][</span><span class="sr">/font-family/</span><span class="o">]</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">underline_to_u</span><span class="p">(</span><span class="n">doc</span><span class="p">,</span> <span class="n">span</span><span class="p">)</span> <span class="k">if</span> <span class="n">span</span><span class="o">[</span><span class="s1">&#39;style&#39;</span><span class="o">]</span> <span class="ow">and</span> <span class="n">span</span><span class="o">[</span><span class="s1">&#39;style&#39;</span><span class="o">][</span><span class="sr">/underline/</span><span class="o">]</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="n">doc</span><span class="o">.</span><span class="n">css</span><span class="p">(</span><span class="s1">&#39;pre&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">pre</span><span class="o">|</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">pre_to_codeblock</span><span class="p">(</span><span class="n">doc</span><span class="p">,</span> <span class="n">pre</span><span class="p">)</span> <span class="k">if</span> <span class="n">pre</span><span class="o">[</span><span class="s1">&#39;class&#39;</span><span class="o">]</span> <span class="ow">and</span> <span class="n">pre</span><span class="o">[</span><span class="s1">&#39;class&#39;</span><span class="o">][</span><span class="sr">/brush/</span><span class="o">]</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="no">CGI</span><span class="o">.</span><span class="n">unescapeHTML</span><span class="p">(</span><span class="n">doc</span><span class="o">.</span><span class="n">css</span><span class="p">(</span><span class="s1">&#39;body&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">inner_html</span><span class="p">)</span></div><div class='line' id='LC56'><span class="k">end</span></div><div class='line' id='LC57'><br/></div><div class='line' id='LC58'><span class="k">module</span> <span class="nn">Jekyll</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="c1"># This importer takes a emlog.xml file, which can be exported from your</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="c1"># emlog.com blog (yourdomain/rss.php).</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="k">module</span> <span class="nn">EmlogDotCom</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">def</span> <span class="nc">self</span><span class="o">.</span><span class="nf">process</span><span class="p">(</span><span class="n">filename</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">import_count</span> <span class="o">=</span> <span class="no">Hash</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">puts</span> <span class="s2">&quot;test&quot;</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">puts</span> <span class="n">filename</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">doc</span> <span class="o">=</span> <span class="ss">Hpricot</span><span class="p">:</span><span class="ss">:XML</span><span class="p">(</span><span class="no">File</span><span class="o">.</span><span class="n">read</span><span class="p">(</span><span class="n">filename</span><span class="p">))</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="n">doc</span><span class="o">/</span><span class="ss">:channel</span><span class="o">/</span><span class="ss">:item</span><span class="p">)</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">item</span><span class="o">|</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">title</span> <span class="o">=</span> <span class="n">item</span><span class="o">.</span><span class="n">at</span><span class="p">(</span><span class="ss">:title</span><span class="p">)</span><span class="o">.</span><span class="n">inner_text</span><span class="o">.</span><span class="n">strip</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">permalink_title</span> <span class="o">=</span> <span class="n">item</span><span class="o">.</span><span class="n">at</span><span class="p">(</span><span class="ss">:link</span><span class="p">)</span><span class="o">.</span><span class="n">inner_text</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># Fallback to &quot;prettified&quot; title if link is empty (can happen)</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">permalink_title</span> <span class="o">==</span> <span class="s2">&quot;&quot;</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">permalink_title</span> <span class="o">=</span> <span class="n">title</span><span class="o">.</span><span class="n">downcase</span><span class="o">.</span><span class="n">split</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="s1">&#39;-&#39;</span><span class="p">)</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC75'><br/></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">date</span> <span class="o">=</span> <span class="no">Time</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="n">item</span><span class="o">.</span><span class="n">at</span><span class="p">(</span><span class="ss">:pubDate</span><span class="p">)</span><span class="o">.</span><span class="n">inner_text</span><span class="p">)</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">status</span> <span class="o">=</span> <span class="s2">&quot;publish&quot;</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">status</span> <span class="o">==</span> <span class="s2">&quot;publish&quot;</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">published</span> <span class="o">=</span> <span class="kp">true</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">published</span> <span class="o">=</span> <span class="kp">false</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">type</span> <span class="o">=</span> <span class="s2">&quot;post&quot;</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">tags</span> <span class="o">=</span> <span class="p">(</span><span class="n">item</span><span class="o">/</span><span class="ss">:category</span><span class="p">)</span><span class="o">.</span><span class="n">select</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span><span class="o">[</span><span class="s1">&#39;domain&#39;</span><span class="o">]</span> <span class="o">==</span> <span class="s1">&#39;post_tag&#39;</span><span class="p">}</span><span class="o">.</span><span class="n">map</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span><span class="o">.</span><span class="n">inner_text</span><span class="p">}</span><span class="o">.</span><span class="n">reject</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span> <span class="o">==</span> <span class="s1">&#39;Uncategorized&#39;</span><span class="p">}</span><span class="o">.</span><span class="n">uniq</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">categories</span> <span class="o">=</span> <span class="p">(</span><span class="n">item</span><span class="o">/</span><span class="ss">:category</span><span class="p">)</span><span class="o">.</span><span class="n">select</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span><span class="o">[</span><span class="s1">&#39;domain&#39;</span><span class="o">]</span> <span class="o">==</span> <span class="s1">&#39;category&#39;</span><span class="p">}</span><span class="o">.</span><span class="n">map</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span><span class="o">.</span><span class="n">inner_text</span><span class="p">}</span><span class="o">.</span><span class="n">reject</span><span class="p">{</span><span class="o">|</span><span class="n">c</span><span class="o">|</span> <span class="n">c</span> <span class="o">==</span> <span class="s1">&#39;Uncategorized&#39;</span><span class="p">}</span><span class="o">.</span><span class="n">uniq</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">=</span><span class="n">permalink_title</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">=</span><span class="n">url</span><span class="o">.</span><span class="n">gsub</span><span class="p">(</span><span class="sr">/^http:\/\/xinlogs.com\//</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span><span class="o">=</span><span class="n">url</span><span class="o">.</span><span class="n">gsub</span><span class="p">(</span><span class="sr">/^post\//</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">name</span> <span class="o">=</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">date</span><span class="o">.</span><span class="n">strftime</span><span class="p">(</span><span class="s1">&#39;%Y-%m-%d&#39;</span><span class="p">)</span><span class="si">}</span><span class="s2">-</span><span class="si">#{</span><span class="n">url</span><span class="si">}</span><span class="s2">.md&quot;</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">header</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;layout&#39;</span>     <span class="o">=&gt;</span> <span class="n">type</span><span class="p">,</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;title&#39;</span>      <span class="o">=&gt;</span> <span class="n">title</span><span class="p">,</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;categories&#39;</span> <span class="o">=&gt;</span> <span class="n">categories</span><span class="p">,</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s1">&#39;comments&#39;</span>   <span class="o">=&gt;</span> <span class="kp">true</span><span class="p">,</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span><span class="o">.</span><span class="n">delete_if</span> <span class="p">{</span><span class="o">|</span><span class="n">k</span><span class="p">,</span><span class="n">v</span><span class="o">|</span> <span class="n">v</span><span class="o">.</span><span class="n">nil?</span> <span class="o">||</span> <span class="n">v</span> <span class="o">==</span> <span class="s1">&#39;&#39;</span><span class="p">}</span></div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">FileUtils</span><span class="o">.</span><span class="n">mkdir_p</span> <span class="s2">&quot;_</span><span class="si">#{</span><span class="n">type</span><span class="si">}</span><span class="s2">s&quot;</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">File</span><span class="o">.</span><span class="n">open</span><span class="p">(</span><span class="s2">&quot;_</span><span class="si">#{</span><span class="n">type</span><span class="si">}</span><span class="s2">s/</span><span class="si">#{</span><span class="nb">name</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">,</span> <span class="s2">&quot;w:utf-8&quot;</span><span class="p">)</span> <span class="k">do</span> <span class="o">|</span><span class="n">f</span><span class="o">|</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">f</span><span class="o">.</span><span class="n">puts</span> <span class="n">header</span><span class="o">.</span><span class="n">ya2yaml</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">f</span><span class="o">.</span><span class="n">puts</span> <span class="s1">&#39;---&#39;</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">f</span><span class="o">.</span><span class="n">puts</span> <span class="n">filter_html</span><span class="p">(</span><span class="n">item</span><span class="o">.</span><span class="n">at</span><span class="p">(</span><span class="s1">&#39;description&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">inner_text</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC104'><br/></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">import_count</span><span class="o">[</span><span class="n">type</span><span class="o">]</span> <span class="o">+=</span> <span class="mi">1</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC107'><br/></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">import_count</span><span class="o">.</span><span class="n">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">key</span><span class="p">,</span> <span class="n">value</span><span class="o">|</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">puts</span> <span class="s2">&quot;Imported </span><span class="si">#{</span><span class="n">value</span><span class="si">}</span><span class="s2"> </span><span class="si">#{</span><span class="n">key</span><span class="si">}</span><span class="s2">s&quot;</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC112'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC113'><span class="k">end</span></div><div class='line' id='LC114'><br/></div><div class='line' id='LC115'><span class="ss">Jekyll</span><span class="p">:</span><span class="ss">:EmlogDotCom</span><span class="o">.</span><span class="n">process</span><span class="p">(</span><span class="no">ARGV</span><span class="o">[</span><span class="mi">0</span><span class="o">]</span><span class="p">)</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.04830s from github-fe134-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/babodx/babodx.github.com/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

