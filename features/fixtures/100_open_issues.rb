#encoding: utf-8

A_100_OPEN_ISSUES = %q{
[
  {
    "body": "When a non-empty string that casts to zero is assigned to a number column already containing zero, then _field_changed? should not become true.\n\nFixes a bug(?)  introduced some time in 3.2\n(It is working in 3.0.15, but broken in 3.2.8)\n\n",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9a43d1985eaeebd9afeab6c15f29709e",
      "avatar_url": "https://secure.gravatar.com/avatar/9a43d1985eaeebd9afeab6c15f29709e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "bkuo",
      "url": "https://api.github.com/users/bkuo",
      "id": 119251
    },
    "closed_at": null,
    "created_at": "2012-09-10T17:01:45Z",
    "comments": 1,
    "title": "Fixes _field_changed?",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7590.patch",
      "html_url": "https://github.com/rails/rails/pull/7590",
      "diff_url": "https://github.com/rails/rails/pull/7590.diff"
    },
    "number": 7590,
    "html_url": "https://github.com/rails/rails/issues/7590",
    "updated_at": "2012-09-10T17:06:59Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7590",
    "assignee": null,
    "id": 6767072
  },
  {
    "body": "All as of http://www.postgresql.org/docs/9.1/static/datatype-binary.html bytea-strings have to be escaped with leading \"E\" as in\n\n```\nINSERT INTO table (col) VALUES (E'\\\\101foo')\n```\n\nand not as in\n\n```\nINSERT INTO table (col) VALUES ('\\\\101foo')\n```\n\nThe difference is, whether 4 bytes (41666f6f, correct) or whether 7 bytes (5c313031666f6f, incorrect) are stored. \n\nSpecifically, https://github.com/rails/rails/blob/232d2223ebcfe5c9e0425c821f5d30a7d5968512/activerecord/lib/active_record/connection_adapters/postgresql/quoting.rb#L46 needs to be changed by adding an 'E' prefix.\n\nThis data loss bug has been introduced more than 2 years ago by this https://github.com/rails/rails/commit/dac80f779d357b2df6fabdda33dac56c69c2a6f9#L0L379 commit.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "26768a10b719085717862dcca374c374",
      "avatar_url": "https://secure.gravatar.com/avatar/26768a10b719085717862dcca374c374?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "xb",
      "url": "https://api.github.com/users/xb",
      "id": 51794
    },
    "closed_at": null,
    "created_at": "2012-09-10T16:06:41Z",
    "comments": 0,
    "title": "Data corruption: bytea data is not properly escaped",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7589,
    "html_url": "https://github.com/rails/rails/issues/7589",
    "updated_at": "2012-09-10T16:06:41Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7589",
    "assignee": null,
    "id": 6765625
  },
  {
    "body": "Recently upgraded from 3.2.1 to 3.2.8 and found that something changed.  Controller specs POSTing a hash containing `:format => :json` are no longer stringified, causing `Time.zone.parse` to fail with \n>  undefined method 'sub' for Mon, 10 Sep 2012:Date\n\nSample:\n\nIn spec:\n```ruby\nit \"should not fail\" do\n  attrs = @attributes.merge(:format => :json)    # <= hash without :format => :json has no problems\n  post :create, attrs\n  ...\nend\n```\n\nIn controller:\n```ruby\ndef create\n  params[:thing][:date_field] = tz.parse(params[:thing][:date_field]).utc  # <= fails here\n  @model = Thing.new(params[:thing])\n  ...\nend\n```\n\nTracked down to `Date.convert_american_to_iso(string#Date)`.  Snip:\n```ruby\n# Transform american date fromat into ISO format.\ndef convert_american_to_iso(string)\n  string.sub(AMERICAN_DATE_RE){|m| \"#$3-#$1-#$2\"}\nend\n```\nwhere the method is clearly expecting a string, but instead is getting a Date object.  In other words, `params[:thing][:date_field]` is a Date, not a String, but only in the case when the paramter hash is annotated as JSON.",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "c70d0bae41fc4f169ff9a5fea2c99250",
      "avatar_url": "https://secure.gravatar.com/avatar/c70d0bae41fc4f169ff9a5fea2c99250?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "adamstrickland",
      "url": "https://api.github.com/users/adamstrickland",
      "id": 78512
    },
    "closed_at": null,
    "created_at": "2012-09-10T16:02:05Z",
    "comments": 1,
    "title": "Timezone parsing fails for JSON requests in test environment",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7588,
    "html_url": "https://github.com/rails/rails/issues/7588",
    "updated_at": "2012-09-10T16:05:13Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7588",
    "assignee": null,
    "id": 6765507
  },
  {
    "body": "If I happen to use a `.rb` file inside `app/assets` it can get automatically loaded, this probably holds true for `app/views`.\n\nI think this is not the intended behavior, [railties has](https://github.com/rails/rails/blob/master/railties/lib/rails/engine/configuration.rb#L38):\n\n```ruby\npaths.add \"app\",                 :eager_load => true, :glob => \"*\"\npaths.add \"app/assets\",          :glob => \"*\"\npaths.add \"app/controllers\",     :eager_load => true\npaths.add \"app/helpers\",         :eager_load => true\npaths.add \"app/models\",          :eager_load => true\npaths.add \"app/mailers\",         :eager_load => true\npaths.add \"app/views\"\n```\n\nseems quite clear that the first line refers to all non-specified paths\n\n\nOf course I can fix this per application by adding to `application.rb`:\n\n```ruby\n    config.before_initialize do\n      config.eager_load_paths = config.eager_load_paths.dup - Dir[\"#{Rails.root}/app/{assets,views}\"]\n    end\n```\n",
    "milestone": null,
    "labels": [
      {
        "name": "bug",
        "url": "https://api.github.com/repos/rails/rails/labels/bug",
        "color": "444444"
      },
      {
        "name": "railties",
        "url": "https://api.github.com/repos/rails/rails/labels/railties",
        "color": "8BE06E"
      }
    ],
    "user": {
      "gravatar_id": "c82630c82a3c675d2928804f432fcf17",
      "avatar_url": "https://secure.gravatar.com/avatar/c82630c82a3c675d2928804f432fcf17?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "elia",
      "url": "https://api.github.com/users/elia",
      "id": 1051
    },
    "closed_at": null,
    "created_at": "2012-09-10T15:52:53Z",
    "comments": 0,
    "title": "Should not eager_load app/assets",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7587,
    "html_url": "https://github.com/rails/rails/issues/7587",
    "updated_at": "2012-09-10T15:59:29Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7587",
    "assignee": null,
    "id": 6765243
  },
  {
    "body": "Current realization refactored because there's no sense to capture output in quiet block.\n\nI added commented block in code with my thoughts about this. Since rake task should be always invoked successfully we can check exit status and show to user original error instead of showing \"Probably you didn't install JavaScript runtime\". I'd like to use capture(:stderr) but it's not impossible because it doesn't reopen $std{out,err} and just reassigns it, that does impossible to capture subprocesses.\n",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "route",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": null,
    "created_at": "2012-09-10T13:42:51Z",
    "comments": 1,
    "title": "Rake assets:precompile shouldn't fail quietly.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7586.patch",
      "html_url": "https://github.com/rails/rails/pull/7586",
      "diff_url": "https://github.com/rails/rails/pull/7586.diff"
    },
    "number": 7586,
    "html_url": "https://github.com/rails/rails/issues/7586",
    "updated_at": "2012-09-10T13:43:16Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7586",
    "assignee": null,
    "id": 6762185
  },
  {
    "body": "When a non-empty string that casts to zero is assigned to a number column already containing zero, then _field_changed?  should not become true.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "9a43d1985eaeebd9afeab6c15f29709e",
      "avatar_url": "https://secure.gravatar.com/avatar/9a43d1985eaeebd9afeab6c15f29709e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "bkuo",
      "url": "https://api.github.com/users/bkuo",
      "id": 119251
    },
    "closed_at": null,
    "created_at": "2012-09-10T09:54:58Z",
    "comments": 2,
    "title": "Fixes _field_changed? ",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7585.patch",
      "html_url": "https://github.com/rails/rails/pull/7585",
      "diff_url": "https://github.com/rails/rails/pull/7585.diff"
    },
    "number": 7585,
    "html_url": "https://github.com/rails/rails/issues/7585",
    "updated_at": "2012-09-10T16:06:33Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7585",
    "assignee": null,
    "id": 6757593
  },
  {
    "body": "basic work for supporting partitioned tables in postgresql\n\nthese changes are associated with this pull request: https://github.com/rails/rails/pull/7573\nwhich were changes associated with rails 3.2.8.\n\nIf I were to sum up the work, it would be:\n\n* provide an instance method arel_table used for any operation that has access to the instance should use the instance method to acquire an arel_table associated with the current models attributes.\n* alter class method arel_table to handle parameters, with no parameters do original work -- with parameters associate the table with the specific partitioned table determined by key attributes\n* provide methods to manage key attributes and values (these are the fields the db table is partitioned on)\n* provide an instance method table_name which calls the altered class method table_name which now takes attribute values that should determine the specific partitioned table to name\n* bunch of helper methods in postgresql connection area associated with schema management.  this is for reasons 1) create_schema seems like a useful method, 2) adding foreign key is needed because in postgres child partitions need to manage the foreign key references, 3) some sequence method changes to support tables in non-public (well non search path) schema: this is probably generally useful work as rails seems broken about non-public schemas\n* change any self.class.arel_table to self.arel_table\n* create is a little weird because it needs to acquire the primary key if it isn't supplied (for instance ID where your need to fetch from the sequence -- for this work to be complete we need to supply the model instance method \"prefetch_primary_key?\" instead of it being on connection since prefetching isn't needed for any tables that aren't partitioned by a primary key)\n* some helper methods for finds (from_partition(*x)) which we've found useful in our day to day coding.  this method just sets the table name (this is useful because find from the parent table even when partition keys are provided can take an inordinate time if the number of child tables is large -- so specifying the specific child table is useful).\n\nthe rest of the code to support partitioning is here: https://github.com/fiksu/partitioned/tree/rails-3-2-8-patching -- you'll need to pull from that branch (which doesn't try to patch rails -- so use it with this pull request).  the master branch patches rails 3.2.8 correctly -- you can use it on your own.  The current rubygem of partitioned patches rails in a different (and more conservative way) -- I don't think you should look at that code.\n\nYou could probably remove a bunch of stuff to make this code faster for the common non-partitioned case.\n\n* instance arel_table could just call class method arel_table\n* self.class.arel_table could just do the old work\n* instance table_name could just call class method table_name which did just the old work\n\nthen one might provide fixups for those methods for models where partitioning is desired.\n\nI think the ugliest part of this code is update -- although I haven't walked down this path, it would seem the best way to manage this would be to add a hook to attribute modifications and fix up the all arel_tables that the attributes point to if the partitioned key values changes\n\nI'm willing to help in any way that makes sense to support partitioning in a future rails version.\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "f23c30d03f27dac9a573ada974726cc4",
      "avatar_url": "https://secure.gravatar.com/avatar/f23c30d03f27dac9a573ada974726cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "keithgabryelski",
      "url": "https://api.github.com/users/keithgabryelski",
      "id": 884378
    },
    "closed_at": null,
    "created_at": "2012-09-10T02:29:33Z",
    "comments": 0,
    "title": "partitioning updates working",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7584.patch",
      "html_url": "https://github.com/rails/rails/pull/7584",
      "diff_url": "https://github.com/rails/rails/pull/7584.diff"
    },
    "number": 7584,
    "html_url": "https://github.com/rails/rails/issues/7584",
    "updated_at": "2012-09-10T02:29:33Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7584",
    "assignee": null,
    "id": 6752275
  },
  {
    "body": "My rails 3.2 app is trying to fetch values from the cache (memcached via dalli) that I'm not expecting it to be caching. It's not getting any cache hits, but I'm puzzled about what is going on. This happens with `config.action_controller.perform_caching = true` on production as well as development, using WEBrick.\n\nHere's a snippet of what I'm seeing in memcache verbose output:\n\n    <30 GET https://www.myrailsapp.com/?\n    >30 Writing an error: Not found\n    >30 Writing bin response:\n    >30   0x81 0x00 0x00 0x00\n    >30   0x00 0x00 0x00 0x01\n    >30   0x00 0x00 0x00 0x09\n    >30   0x00 0x00 0x00 0x00\n    >30   0x00 0x00 0x00 0x00\n    >30   0x00 0x00 0x00 0x00\n    <30 Read binary protocol data:\n    <30    0x80 0x00 0x00 0xd0\n    <30    0x00 0x00 0x00 0x00\n    <30    0x00 0x00 0x00 0xd0\n    <30    0x00 0x00 0x00 0x00\n    <30    0x00 0x00 0x00 0x00\n    <30    0x00 0x00 0x00 0x00\n\nNote that there is only a cache GET and I'm not seeing any cache writes.\n\nI see similar cache GET attempts for all my actions, most of which are JSON API calls. All of them result in a cache miss. Like this,\n\n    <31 GET https://www.myrailsapp.com/api/somecall?param1=foo&param2=bar\n    >31 Writing an error: Not found\n\nI have not specified any `caches_action` directives anywhere in my app.\n\nIs this a rails bug? \n\nIf no, where should I look to stop these unnecessary cache GETs?\n\n\n \n\n ",
    "milestone": null,
    "labels": [
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      }
    ],
    "user": {
      "gravatar_id": "5c0b963a5d80a4bef067204dc1149881",
      "avatar_url": "https://secure.gravatar.com/avatar/5c0b963a5d80a4bef067204dc1149881?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "shyam-habarakada",
      "url": "https://api.github.com/users/shyam-habarakada",
      "id": 601660
    },
    "closed_at": null,
    "created_at": "2012-09-09T17:18:48Z",
    "comments": 5,
    "title": "Unexpected (and failing) cache GETs ",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7581,
    "html_url": "https://github.com/rails/rails/issues/7581",
    "updated_at": "2012-09-09T20:50:55Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7581",
    "assignee": null,
    "id": 6747349
  },
  {
    "body": "This method return @attribute[name].serialized  or read_attribute().\nThis patch allows to return @attributes[name] if it is already typecasted.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "0cd98f4e263d306bc455ca750c31443f",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd98f4e263d306bc455ca750c31443f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "acapilleri",
      "url": "https://api.github.com/users/acapilleri",
      "id": 46208
    },
    "closed_at": null,
    "created_at": "2012-09-08T22:23:45Z",
    "comments": 1,
    "title": "typecastes_attribute_value could return @attributes[name]",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7579.patch",
      "html_url": "https://github.com/rails/rails/pull/7579",
      "diff_url": "https://github.com/rails/rails/pull/7579.diff"
    },
    "number": 7579,
    "html_url": "https://github.com/rails/rails/issues/7579",
    "updated_at": "2012-09-08T23:38:51Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7579",
    "assignee": null,
    "id": 6738280
  },
  {
    "body": "I did this refactoring out of the discussion in #7518. I think it's better to have a minimal amount of duplication between the database adapters. Every adapter should define it's own column mappings and not delegate to a global superclass, which has some knowledge of the different database vendors.\n\nThis make the mappings simpler because we just need to care about the datatypes of one vendor and it allows us to issue warnings when unsupported datatypes are detected.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "senny",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": null,
    "created_at": "2012-09-08T17:10:05Z",
    "comments": 2,
    "title": "refactoring: isolate sql-datatype mapping in postgres adapter",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7575.patch",
      "html_url": "https://github.com/rails/rails/pull/7575",
      "diff_url": "https://github.com/rails/rails/pull/7575.diff"
    },
    "number": 7575,
    "html_url": "https://github.com/rails/rails/issues/7575",
    "updated_at": "2012-09-08T17:32:09Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7575",
    "assignee": null,
    "id": 6733661
  },
  {
    "body": "Aaron,\n\nYou asked for a pull request with the changes to make activerecord dynamically determine a model's table name such that it can support database table partitioning.\n\nAt the time, I was pretty incompetent with git and github -- I've adjusted and hope I'm doing this first pull request correctly.\n\nHere is a branch of the partitioning code which has been modified to work with this pull request.\n\nhttps://github.com/fiksu/partitioned/tree/rails-3-2-8-patching\n\nI've created a repo with examples of different types of partitioning.\n\nhttps://github.com/keithgabryelski/partitioned_examples\n\nexamples are in app/models and can be run like this:\n\n    $ cd partitioned_examples\n    $ rails runner app/models/company_id.rb --force\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      },
      {
        "name": "3-2-stable",
        "url": "https://api.github.com/repos/rails/rails/labels/3-2-stable",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "f23c30d03f27dac9a573ada974726cc4",
      "avatar_url": "https://secure.gravatar.com/avatar/f23c30d03f27dac9a573ada974726cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "keithgabryelski",
      "url": "https://api.github.com/users/keithgabryelski",
      "id": 884378
    },
    "closed_at": null,
    "created_at": "2012-09-08T14:53:32Z",
    "comments": 2,
    "title": "Partitioned",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7573.patch",
      "html_url": "https://github.com/rails/rails/pull/7573",
      "diff_url": "https://github.com/rails/rails/pull/7573.diff"
    },
    "number": 7573,
    "html_url": "https://github.com/rails/rails/issues/7573",
    "updated_at": "2012-09-10T02:30:11Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7573",
    "assignee": null,
    "id": 6731772
  },
  {
    "body": "When investigating for #7564, I found potentially bug. In database.yml, we use not `charset` but `encoding`.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "kennyj",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": null,
    "created_at": "2012-09-08T13:58:55Z",
    "comments": 4,
    "title": "Use configuration['encoding'], because database configuration use not charset but encoding.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7572.patch",
      "html_url": "https://github.com/rails/rails/pull/7572",
      "diff_url": "https://github.com/rails/rails/pull/7572.diff"
    },
    "number": 7572,
    "html_url": "https://github.com/rails/rails/issues/7572",
    "updated_at": "2012-09-10T16:54:02Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7572",
    "assignee": null,
    "id": 6731422
  },
  {
    "body": "force_ssl can accept options for redirect_to. like status for the http code to use for redirect",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "cabe9e695419a4936d1635756272953b",
      "avatar_url": "https://secure.gravatar.com/avatar/cabe9e695419a4936d1635756272953b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "deepak",
      "url": "https://api.github.com/users/deepak",
      "id": 9192
    },
    "closed_at": null,
    "created_at": "2012-09-08T03:04:15Z",
    "comments": 4,
    "title": "ActionController::ForceSSL accepts options for redirect_to",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7570.patch",
      "html_url": "https://github.com/rails/rails/pull/7570",
      "diff_url": "https://github.com/rails/rails/pull/7570.diff"
    },
    "number": 7570,
    "html_url": "https://github.com/rails/rails/issues/7570",
    "updated_at": "2012-09-09T04:57:44Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7570",
    "assignee": null,
    "id": 6728537
  },
  {
    "body": "Exception message was misleading, as it is possible to have a\npolymorphic 'has_many :through' join model.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "0871a0fd6f3e1fd24538914ed4ecf332",
      "avatar_url": "https://secure.gravatar.com/avatar/0871a0fd6f3e1fd24538914ed4ecf332?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "skorfmann",
      "url": "https://api.github.com/users/skorfmann",
      "id": 136789
    },
    "closed_at": null,
    "created_at": "2012-09-07T23:14:07Z",
    "comments": 5,
    "title": "Improve exception message for HasManyThroughAssociationPolymorphicSource...",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7569.patch",
      "html_url": "https://github.com/rails/rails/pull/7569",
      "diff_url": "https://github.com/rails/rails/pull/7569.diff"
    },
    "number": 7569,
    "html_url": "https://github.com/rails/rails/issues/7569",
    "updated_at": "2012-09-09T13:56:05Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7569",
    "assignee": null,
    "id": 6726743
  },
  {
    "body": "```ruby\nclass Report < ActiveRecord::Base\n  belongs_to :user\n  belongs_to :sale, touch: true\nend\n\nclass Sale < ActiveRecord::Base\n  after_touch :print_to_screen\n  def print_to_screen\n    print \"teste\"\n  end\nend\n```\nirb> allan = User.find(1)\nirb> sale = Sale.first\nirb> allan.report! sale\n\n*here I'm creating a new record on Report class, the after_touch is not being called, but if I...*\n\nirb> sale.touch\n\nSQL (1.2ms)  UPDATE \"sales\" SET \"updated_at\" = '2012-09-07 19:28:49.777407' WHERE \"sales\".\"id\" = 1\nteste => true\n\n*the output from my after_touch method is called.*\n\n*the after_touch shouldn't be called from belongs_to association on Sale class?*\n\nUsing stable 3.2.8 Rails.\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "a05cd2d5dac30594cb768d79b032307a",
      "avatar_url": "https://secure.gravatar.com/avatar/a05cd2d5dac30594cb768d79b032307a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "allangarcia",
      "url": "https://api.github.com/users/allangarcia",
      "id": 855106
    },
    "closed_at": null,
    "created_at": "2012-09-07T19:40:06Z",
    "comments": 1,
    "title": "belongs_to touch:true not calling after_touch callback",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7567,
    "html_url": "https://github.com/rails/rails/issues/7567",
    "updated_at": "2012-09-08T19:51:36Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7567",
    "assignee": null,
    "id": 6722528
  },
  {
    "body": "This PR is related to #7525 , #6648 and #5547.\nWe should use mysqldump native command when dumping db structure.\n\ncc/  @rafaelfranca @seamusabshere",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "kennyj",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": null,
    "created_at": "2012-09-07T16:49:44Z",
    "comments": 2,
    "title": "Use mysqldump native commands when rake db:structure:dump.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7564.patch",
      "html_url": "https://github.com/rails/rails/pull/7564",
      "diff_url": "https://github.com/rails/rails/pull/7564.diff"
    },
    "number": 7564,
    "html_url": "https://github.com/rails/rails/issues/7564",
    "updated_at": "2012-09-08T12:59:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7564",
    "assignee": null,
    "id": 6718793
  },
  {
    "body": "I have covered pg_connection.distinct with tests and refactored it. I would also like to rebase this against 3-2-stable because master branch contains fix for #5868, I just cleaned up and made sure it works.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "607564f1a15f1899c71b4a9fdfc33ac2",
      "avatar_url": "https://secure.gravatar.com/avatar/607564f1a15f1899c71b4a9fdfc33ac2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "semaperepelitsa",
      "url": "https://api.github.com/users/semaperepelitsa",
      "id": 347921
    },
    "closed_at": null,
    "created_at": "2012-09-07T16:36:50Z",
    "comments": 3,
    "title": "pg_connection.distinct refactoring",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7562.patch",
      "html_url": "https://github.com/rails/rails/pull/7562",
      "diff_url": "https://github.com/rails/rails/pull/7562.diff"
    },
    "number": 7562,
    "html_url": "https://github.com/rails/rails/issues/7562",
    "updated_at": "2012-09-07T17:30:03Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7562",
    "assignee": null,
    "id": 6718487
  },
  {
    "body": "See #7559",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "144314100b686db946ff68c7ae1065d1",
      "avatar_url": "https://secure.gravatar.com/avatar/144314100b686db946ff68c7ae1065d1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "NARKOZ",
      "url": "https://api.github.com/users/NARKOZ",
      "id": 253398
    },
    "closed_at": null,
    "created_at": "2012-09-07T12:42:22Z",
    "comments": 1,
    "title": "image_path should return blank string if empty source is passed",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7561.patch",
      "html_url": "https://github.com/rails/rails/pull/7561",
      "diff_url": "https://github.com/rails/rails/pull/7561.diff"
    },
    "number": 7561,
    "html_url": "https://github.com/rails/rails/issues/7561",
    "updated_at": "2012-09-07T14:14:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7561",
    "assignee": null,
    "id": 6713116
  },
  {
    "body": "Greetings!\n\nIn an attempt to send a POST request with JSON data with HTTP header \"Transfer-Encoding: Chunked\" from a client to the server I encountered that the Parameters hash always evaluates to empty.\n\nLooking where the request is handled in the middleware, the reason for this becomes quickly clear:\n\nIn file [params_parser.rb](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/middleware/params_parser.rb):\n\n```Ruby\n      def parse_formatted_parameters(env)\n        request = Request.new(env)\n\n        return false if request.content_length.zero?\n        ...\n```\n\nIf the request is send with header \"Transfer-Encoding: Chunked\" there is no header \"Content-Length\". Nonetheless, there is a io stream which possibly contains data.\n\nIs there a compelling reason for parsing the body data that requires that there is a content length?  \n\n(I've looked into the sources for the JSON parsers, and it doesn't seem so.)\n\nOn my local system to test a possible fix I changed the line \n```Ruby\n        return false if request.content_length.zero?\n```\nto\n```Ruby\n        return false if request.content_length.zero? && !(request.headers[\"Transfer-Encoding\"].downcase.include? == \"chunked\")\n```\n\nand it worked for my limited tests sending a POST request with JSON data and header \"Transfer-Encoding: Chunked\" from a client. \n\nNote: I'm not a Rails developer, and does not have a development environment yet. The workaround above has probably a better solution.\n\nI'm using Rails primarily for testing clients, currently using WEBrick for development.\n      \n\nI would appreciate it if someone could comment this! :)\n\nThanks in advance!\n\nAndreas",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "77d853f4baf08e8fea1bcf5d406a656e",
      "avatar_url": "https://secure.gravatar.com/avatar/77d853f4baf08e8fea1bcf5d406a656e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "couchdeveloper",
      "url": "https://api.github.com/users/couchdeveloper",
      "id": 1564701
    },
    "closed_at": null,
    "created_at": "2012-09-07T10:13:13Z",
    "comments": 2,
    "title": "POST Request Body Ignored For Chunked Transfer-Encoding",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7556,
    "html_url": "https://github.com/rails/rails/issues/7556",
    "updated_at": "2012-09-08T15:59:14Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7556",
    "assignee": null,
    "id": 6710676
  },
  {
    "body": "Currently I can suppress generating routing helpers for a route using like this:\n\n```ruby\nmatch \"foo\" => 'foo#bar', :as => nil\n```\n\nBut it doesn't work if I move the `as` option to a scope:\n\n```ruby\nscope :as => nil do\n  match \"foo\" => 'foo#bar'\nend\n```\nIt's not a huge deal but it would be nice to get it fixed for completeness and consistency.\n\nI'm using Rails 3.2.8.",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "0f54ef970075176c916a04dfbe45a31c",
      "avatar_url": "https://secure.gravatar.com/avatar/0f54ef970075176c916a04dfbe45a31c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "jacob-carlborg",
      "url": "https://api.github.com/users/jacob-carlborg",
      "id": 306980
    },
    "closed_at": null,
    "created_at": "2012-09-07T08:57:08Z",
    "comments": 0,
    "title": "Suppress generating routing helpers with scope",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7555,
    "html_url": "https://github.com/rails/rails/issues/7555",
    "updated_at": "2012-09-07T08:57:08Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7555",
    "assignee": null,
    "id": 6709378
  },
  {
    "body": "If I have a route that looks like this:\n\n````ruby\nscope \"/:locale\" do\n  match \"foo/bar\"\nend\n```\n\nAnd run `rake routes`, this is the output:\n\n    foo_bar  /:locale/foo/bar(.:format) :locale/foo#bar\n\nI would expect the following output:\n\n    foo_bar  /:locale/foo/bar(.:format) foo#bar\n\nIt prepends the scope to the controller. When I test to access the route I get the following error:\n\n    wrong constant name :locale\n\nI'm using Rails 3.2.8",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "0f54ef970075176c916a04dfbe45a31c",
      "avatar_url": "https://secure.gravatar.com/avatar/0f54ef970075176c916a04dfbe45a31c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "jacob-carlborg",
      "url": "https://api.github.com/users/jacob-carlborg",
      "id": 306980
    },
    "closed_at": null,
    "created_at": "2012-09-07T08:24:18Z",
    "comments": 0,
    "title": "Combining scoped routes and match shorthand doesn't work",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7554,
    "html_url": "https://github.com/rails/rails/issues/7554",
    "updated_at": "2012-09-07T08:24:18Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7554",
    "assignee": null,
    "id": 6708869
  },
  {
    "body": "I'm using Rails 3.2.3 with Postgres 8.4.13. I need two arrays of field values.  So I build a relation that `select`s the two fields I need, then I try to `pluck` each field into an array. Here's an example using two records (note that the ids are uuids):\n\n    Loading development environment (Rails 3.2.3)\n    :001 > ids = [\"6cfb7658-f856-11e1-a200-01399cfcf73f\", \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\"]\n     => [\"6cfb7658-f856-11e1-a200-01399cfcf73f\", \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\"] \n    :002 > messages = Message.select([\"id\",\"sender_message_id\"]).where(:id => ids)\n      Message Load (1.3ms)  SELECT id, sender_message_id FROM \"messages\" WHERE \"messages\".\"id\" \n      IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [#<Message id: \"6cfb7658-f856-11e1-a200-01399cfcf73f\", sender_message_id: \"6cd60ed6-f856-11e1-8cae-01399cfcf64a\">,\n         #<Message id: \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\", sender_message_id: \"8ef25556-f856-11e1-81bf-01399cfdd5d6\">] \n    :003 > messages.pluck(\"id\")\n       (0.7ms)  SELECT id, sender_message_id FROM \"messages\" \n       WHERE \"messages\".\"id\" IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [\"6cfb7658-f856-11e1-a200-01399cfcf73f\", \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\"] \n    :004 > messages.pluck(\"sender_message_id\")\n       (0.6ms)  SELECT id, sender_message_id FROM \"messages\" \n       WHERE \"messages\".\"id\" IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [\"6cfb7658-f856-11e1-a200-01399cfcf73f\", \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\"]\n\nApparently the relation's `select` is taking precedence over `pluck`, so SQL always does `SELECT id, sender_message_id`, even though `pluck` only needs one field. And` pluck` just makes an array of the first column returned, so the second result above is wrong.\n\nIf I leave the `select` clause out of the relation, the `pluck`s provide the `SELECT` column and the correct values are returned: \n\n    :005 > messages = Message.where(:id => ids)\n      Message Load (1.0ms)  SELECT \"messages\".* FROM \"messages\" WHERE \"messages\".\"id\" \n      IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [...full list of attributes for two messages...] \n    :006 > messages.pluck(\"id\")\n       (2.4ms)  SELECT id FROM \"messages\" \n       WHERE \"messages\".\"id\" IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [\"6cfb7658-f856-11e1-a200-01399cfcf73f\", \"8efa2cf4-f856-11e1-9c5d-01399cfdd60a\"] \n    :007 > messages.pluck(\"sender_message_id\")\n       (0.7ms)  SELECT sender_message_id FROM \"messages\" \n       WHERE \"messages\".\"id\" IN ('6cfb7658-f856-11e1-a200-01399cfcf73f', '8efa2cf4-f856-11e1-9c5d-01399cfdd60a')\n     => [\"6cd60ed6-f856-11e1-8cae-01399cfcf64a\", \"8ef25556-f856-11e1-81bf-01399cfdd5d6\"] \n\nI expected `pluck` to return the correct column as long as the `pluck` column is one of the columns in the relation.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "0f292492ebf8c8001971f9922e3070fb",
      "avatar_url": "https://secure.gravatar.com/avatar/0f292492ebf8c8001971f9922e3070fb?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "mcbsys",
      "url": "https://api.github.com/users/mcbsys",
      "id": 865498
    },
    "closed_at": null,
    "created_at": "2012-09-06T22:42:20Z",
    "comments": 2,
    "title": "Pluck may return wrong column if ActiveRecord relation has a select clause",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7551,
    "html_url": "https://github.com/rails/rails/issues/7551",
    "updated_at": "2012-09-06T23:17:48Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7551",
    "assignee": null,
    "id": 6701905
  },
  {
    "body": "PostgreSQL array type support. Any datatype can be used to create an array column, with full migration and schema dumper support.\n\nTo declare an array column, use the following syntax:\n\n```ruby\ncreate_table :table_with_arrays do |t|\n  t.integer :int_array, :array => true\n  # integer[]\n  t.integer :int_array, :array => true, :length => 2\n  # smallint[]\n  t.string :string_array, :array => true, :length => 30\n  # char varying(30)[]\nend \n```\n\nThis respects any other migraion detail (limits, defaults, etc). ActiveRecord will serialize and deserialize the array columns on their way to and from the database.\n\nOne thing to note: PostgreSQL does not enforce any limits on the number of elements, and any array can be multi-dimensional. Any array that is multi-dimensional must be rectangular (each sub array must have the same number of elements as its siblings).\n\nI can squash this commit after review",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "f0ffef353c38dc2ee7e10ef36c3ffa5b",
      "avatar_url": "https://secure.gravatar.com/avatar/f0ffef353c38dc2ee7e10ef36c3ffa5b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "danmcclain",
      "url": "https://api.github.com/users/danmcclain",
      "id": 144138
    },
    "closed_at": null,
    "created_at": "2012-09-06T18:35:47Z",
    "comments": 14,
    "title": "Adds migration and type casting support for PostgreSQL Array datatype",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7547.patch",
      "html_url": "https://github.com/rails/rails/pull/7547",
      "diff_url": "https://github.com/rails/rails/pull/7547.diff"
    },
    "number": 7547,
    "html_url": "https://github.com/rails/rails/issues/7547",
    "updated_at": "2012-09-09T20:33:42Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7547",
    "assignee": null,
    "id": 6695963
  },
  {
    "body": "Only run EXPLAIN for statements that are supported. Really fixes Issue #5430.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "139de3f8c3d6ee008cdb3abd3da23908",
      "avatar_url": "https://secure.gravatar.com/avatar/139de3f8c3d6ee008cdb3abd3da23908?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "dlee",
      "url": "https://api.github.com/users/dlee",
      "id": 7035
    },
    "closed_at": null,
    "created_at": "2012-09-06T15:10:33Z",
    "comments": 4,
    "title": "Don't EXPLAIN the unexplainable in postgresql",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7544.patch",
      "html_url": "https://github.com/rails/rails/pull/7544",
      "diff_url": "https://github.com/rails/rails/pull/7544.diff"
    },
    "number": 7544,
    "html_url": "https://github.com/rails/rails/issues/7544",
    "updated_at": "2012-09-06T18:48:39Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7544",
    "assignee": null,
    "id": 6690483
  },
  {
    "body": "Rails will store the name of a child class in the database to use for re-instantiating the record as the correct class later. By specifying an `inheritance_serializer` and `inheritance_deserializer`, you can customize the stored identifier.\n\nThis is primarily useful for working with legacy data models.\n\n```ruby\nclass Foo < ActiveRecord::Base\n  self.inheritance_serializer = ->(klass) do\n    # Map the class to the appropriate type identifier.\n    # Defaults to `klass.name`.\n    if klass == Child1\n      1\n    elsif klass == Child2\n      2\n    end\n  end\n\n  self.inheritance_deserializer = ->(type_before_cast) do\n    # Map the type identifier back into the appropriate class.\n    # Defaults (approximately) to `type_before_cast.constantize`.\n    case type_before_cast.to_i\n    when 1\n      Child1\n    when 2\n      Child2\n    end\n  end\nend\n\nclass Child1 < Foo; end\nclass Child2 < Foo; end\n```",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b7af2fda045de32a35c281ec2f29b21b",
      "avatar_url": "https://secure.gravatar.com/avatar/b7af2fda045de32a35c281ec2f29b21b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "pivotalcommon",
      "url": "https://api.github.com/users/pivotalcommon",
      "id": 130711
    },
    "closed_at": null,
    "created_at": "2012-09-06T13:55:59Z",
    "comments": 3,
    "title": "Added customizable STI type serialization.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7541.patch",
      "html_url": "https://github.com/rails/rails/pull/7541",
      "diff_url": "https://github.com/rails/rails/pull/7541.diff"
    },
    "number": 7541,
    "html_url": "https://github.com/rails/rails/issues/7541",
    "updated_at": "2012-09-07T21:33:55Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7541",
    "assignee": null,
    "id": 6688433
  },
  {
    "body": "I have an ordinary helper module that has a method, where part of it's implementation calls the #asset_path helper. This works fine. \n\nI have an ActionView::TestCase that tests/calls this helper. This generally works fine, unless it tries to call the helper method that calls asset_path. \n\nI get a:\n\n\n    undefined method `asset_path' for #<BentoSearchHelperTest:0x0000000f9aefc0>\n    .../actionpack-3.2.8/lib/action_dispatch/testing/assertions/routing.rb:176:in `method_missing'\n    ..../actionpack-3.2.8/lib/action_view/test_case.rb:236:in `method_missing'\n\nAs you can see I'm using rails 3.2.8. \n\nI believe this is a bug. But correct me if I'm wrong and I'm doing something wrong or something. ",
    "milestone": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "6a13e655e637138f8d571cec3f9cea76",
      "avatar_url": "https://secure.gravatar.com/avatar/6a13e655e637138f8d571cec3f9cea76?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "jrochkind",
      "url": "https://api.github.com/users/jrochkind",
      "id": 149304
    },
    "closed_at": null,
    "created_at": "2012-09-05T19:50:06Z",
    "comments": 0,
    "title": "ActionView::TestCase, helper that uses asset_path",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7534,
    "html_url": "https://github.com/rails/rails/issues/7534",
    "updated_at": "2012-09-05T19:50:36Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7534",
    "assignee": null,
    "id": 6671205
  },
  {
    "body": "I have a route:\n\n```\nconstraints subdomain: \"images\" do\n  match \"/:id(/:geometry)\" => \"images#show\"\nend\n```\n\nAnd a controller:\n\n```\nclass ImagesController < ActionController::Base\n\n  force_ssl if Rails.env.production?\n\n  def show\n    # ...\n  end\n\nend\n```\n\nIf I go to: http://images.domain.dev/42/300x400?some=params\nI get redirected to: https://images.domain.dev/42?some=params",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "5539fccd965e1b19e6c8b714b41d929e",
      "avatar_url": "https://secure.gravatar.com/avatar/5539fccd965e1b19e6c8b714b41d929e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "brandonweiss",
      "url": "https://api.github.com/users/brandonweiss",
      "id": 4727
    },
    "closed_at": null,
    "created_at": "2012-09-05T05:27:29Z",
    "comments": 3,
    "title": "force_ssl seems to drop optional path segments when redirecting to https",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7528,
    "html_url": "https://github.com/rails/rails/issues/7528",
    "updated_at": "2012-09-08T13:09:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7528",
    "assignee": null,
    "id": 6653037
  },
  {
    "body": "If you have a model with a has_many association and that other model has an association set to a model instance and you update it by setting the foreign key to something else, it will become unset when the original model is saved.\nThis occurs in 3.2.8 and the 3-2-stable branch.\n\nProbably make more sense with an example:\n\n    rails new has_many_bug\n    cd has_many_bug\n    bundle exec rails g model user\n    bundle exec rails g model author\n    bundle exec rails g model book user:references author:references\n    #Edit config/application.rb and comment out following line\n    config.active_record.whitelist_attributes\n\nModels:\n\n    class Author < ActiveRecord::Base\n      has_many :books\n    end\n    class Book < ActiveRecord::Base\n      belongs_to :user\n      belongs_to :author\n    end\n    class User < ActiveRecord::Base\n      has_many :books\n    end\n\ntest.rb:\n\n    a1 = Author.create\n    a2 = Author.create\n    u=User.new\n    b1 = Book.new(:author=>a1)\n    b1.attributes = {:author_id => a2.id}\n    u.books = [b1]\n    puts \"a1.id = #{a1.id}\"\n    puts \"a2.id = #{a2.id}\"\n    puts \"b1.author_id before save = #{b1.author_id}\"\n    #Uncomment the following line and it will work\n    #puts \"b1.author = #{b1.author}\"\n    u.save\n    puts \"b1.author_id after save = #{b1.author_id}\"\n\nResults in:\n\n    irb(main):001:0> load 'test.rb'\n    a1.id = 43\n    a2.id = 44\n    b1.author_id before save = 44\n    b1.author_id after save = 43\n\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      },
      {
        "name": "3-2-stable",
        "url": "https://api.github.com/repos/rails/rails/labels/3-2-stable",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "420291e1b7d022cf4fe73023ab345672",
      "avatar_url": "https://secure.gravatar.com/avatar/420291e1b7d022cf4fe73023ab345672?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "bpardee",
      "url": "https://api.github.com/users/bpardee",
      "id": 308614
    },
    "closed_at": null,
    "created_at": "2012-09-05T02:08:32Z",
    "comments": 0,
    "title": "Association not getting saved correctly",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7526,
    "html_url": "https://github.com/rails/rails/issues/7526",
    "updated_at": "2012-09-05T02:08:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7526",
    "assignee": null,
    "id": 6651074
  },
  {
    "body": "Note: the commits here are split to facilitate discussion. Happy to squash before merging.\n\nThe attached commits fix two bugs in `ActiveRecord::Store` and add a new feature. \n\n* the first commit moves the call to `will_change!` above the actual change to the attribute - otherwise, the attribute is marked as changed but attempts to access the previous value (using `_was` or `_change`) will return the *new* value instead\n\n* the second commit ensures that additional calls to `store_accessor` don't overwrite previously-set values in `stored_attributes`. This functionality is described in the documentation (regarding subclasses) but subsequent calls to `store_accessor` overwrote the list each time.\n\n* the final commit adds a new variant of `store_accessor` that provides type conversion for booleans to simplify (for instance) setting stored attributes with checkboxes. An example:\n\n```ruby\nclass User < ActiveRecord::Base\n  store :flags\n  store_boolean_attribute :flags, :likes_ruby, :likes_python, :likes_clojure\nend\n\nUser.first.likes_ruby? # => returns true or false\n\n@user.update_attributes(:likes_ruby => '0') # => stores false in flags['likes_ruby']\n```\n\nThere is some fairly gross duplication between `store_accessor` and `store_boolean_accessor`; any suggestions for a refactor are welcome - as is a better name than `store_boolean_accessor`.\n\nOne other open question: would it be better to add more \"typed\" variants to handle parsing input (for datetimes, etc)? My application only needed booleans, but there's certainly an argument to be made for extending the same type-casting behavior to `store_accessor` attributes as plain attributes.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "6883e5ef03484d4fcef507d7b4f1d243",
      "avatar_url": "https://secure.gravatar.com/avatar/6883e5ef03484d4fcef507d7b4f1d243?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "al2o3cr",
      "url": "https://api.github.com/users/al2o3cr",
      "id": 1191
    },
    "closed_at": null,
    "created_at": "2012-09-04T22:49:08Z",
    "comments": 16,
    "title": "Add boolean type conversion for AR::Store",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7524.patch",
      "html_url": "https://github.com/rails/rails/pull/7524",
      "diff_url": "https://github.com/rails/rails/pull/7524.diff"
    },
    "number": 7524,
    "html_url": "https://github.com/rails/rails/issues/7524",
    "updated_at": "2012-09-07T23:07:18Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7524",
    "assignee": null,
    "id": 6648377
  },
  {
    "body": "As Aaron Patterson mentioned,  3.2+ should have support for a DATABASE_URL environment variable.  (For background discussion please refer to https://groups.google.com/forum/#!topic/rubyonrails-core/ge1HCeBqz_s)\n\n- added tests to confirm establish_connection uses DATABASE_URL and\n  Rails.env correctly even when no arguments are passed in.\n- updated rake db tasks to support DATABASE_URL, and added tests to\n  confirm correct behavior for these rake tasks.  (Removed\n  establish_connection call from some tasks since in those cases\n  the :environment task already made sure the function would be called)\n- updated Resolver so that when it resolves the database url, it\n  removes hash values with empty strings from the config spec (e.g.\n  to support connection to postgresql when no username is specified).\n\nThis fix can also address issues #6736 and #6833 (as slightly different implementation solution).",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "d308241c047f7d688b21835a0d47b369",
      "avatar_url": "https://secure.gravatar.com/avatar/d308241c047f7d688b21835a0d47b369?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "graceliu",
      "url": "https://api.github.com/users/graceliu",
      "id": 94903
    },
    "closed_at": null,
    "created_at": "2012-09-04T17:26:37Z",
    "comments": 11,
    "title": "Fixed support for DATABASE_URL for rake db tasks",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7521.patch",
      "html_url": "https://github.com/rails/rails/pull/7521",
      "diff_url": "https://github.com/rails/rails/pull/7521.diff"
    },
    "number": 7521,
    "html_url": "https://github.com/rails/rails/issues/7521",
    "updated_at": "2012-09-10T17:05:54Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7521",
    "assignee": null,
    "id": 6640691
  },
  {
    "body": "The current code:\n\n\n      # Returns the sequence name for a table's primary key or some other specified key.\n      def default_sequence_name(table_name, pk = nil) #:nodoc:\n        serial_sequence(table_name, pk || 'id').split('.').last\n      rescue ActiveRecord::StatementInvalid\n        \"#{table_name}_#{pk || 'id'}_seq\"\n      end\n\nrails 4 is slightly different, but still has the \".split('.').last\" -- which is the bug.\n\nThis code seems to want to remove the schema name from the return value of \"serial_sequence\" -- a typical result from serial_sequence\" might look like \"public.foos_id_seq\"  and the \".split('.').last\" would resolve to \"foos_id_seq\".\n\nthe code would then be used by something that fetched from that object -- which works for \"public\" (or anything that is in the schema_search path) but wil fails if you have a table/model for table \"other.foos\" (that is, something not in the schema_search path OR if there is a public.foos and a other.foos -- you'll aways fetch from \"public.foos\").\n\nsince there is no \"next_sequence_value\" function this code probably has never been exercised -- sequence_name doesn't seem to be used anywhere for postgres, by default -- so you'll need the following code to exercise the issue:\n\n * enable prefetching of the primary key\n * add a \"next_sequence_value\" which simply requests the nextval for the value returned by sequence_name\n * and a patch to fix \"default_sequence_name\"\n\n\n\n        module ActiveRecord::ConnectionAdapters\n          class PostgreSQLAdapter < AbstractAdapter\n            def prefetch_primary_key?(table_name = nil)\n              return true\n            end\n\n            def next_sequence_value(sequence_name)\n              return execute(\"select nextval('#{sequence_name}')\").field_values(\"nextval\").first.to_i\n            end\n\n            def default_sequence_name(table_name, pk = nil) #:nodoc:\n              serial_sequence(table_name, pk || 'id')\n            rescue ActiveRecord::StatementInvalid\n              \"#{table_name}_#{pk || 'id'}_seq\"\n            end\n\n          end\n        end\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "f23c30d03f27dac9a573ada974726cc4",
      "avatar_url": "https://secure.gravatar.com/avatar/f23c30d03f27dac9a573ada974726cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "keithgabryelski",
      "url": "https://api.github.com/users/keithgabryelski",
      "id": 884378
    },
    "closed_at": null,
    "created_at": "2012-09-03T19:50:14Z",
    "comments": 0,
    "title": "postgresql_adapter.rb:default_sequence_name is broken for non-public schemas",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7516,
    "html_url": "https://github.com/rails/rails/issues/7516",
    "updated_at": "2012-09-03T19:50:14Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7516",
    "assignee": null,
    "id": 6621611
  },
  {
    "body": "The goal is to show a the user simple AJAX example that they can get up and running quickly.",
    "milestone": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "66c680f88e8c379fe408d32299dfb4e6",
      "avatar_url": "https://secure.gravatar.com/avatar/66c680f88e8c379fe408d32299dfb4e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "aantix",
      "url": "https://api.github.com/users/aantix",
      "id": 4600
    },
    "closed_at": null,
    "created_at": "2012-09-03T08:55:08Z",
    "comments": 2,
    "title": "Added a simple example demonstrating an ajax/remote form, it's correspon...",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7512.patch",
      "html_url": "https://github.com/rails/rails/pull/7512",
      "diff_url": "https://github.com/rails/rails/pull/7512.diff"
    },
    "number": 7512,
    "html_url": "https://github.com/rails/rails/issues/7512",
    "updated_at": "2012-09-03T15:03:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7512",
    "assignee": null,
    "id": 6611331
  },
  {
    "body": "I did a poll on Twitter to see what parts of Rails needed documentation the most, and one glaring thing that was pointed out was how out of date the AJAX guide was.\n\nCurrently, this request is not ready to be merged, but I wanted to get some feedback on what I plan to do before I bother to write the entire thing.\n\nBasically, I built a new outline, and threw a quick paragraph or two together for a bunch of the parts.\n\nCurrent guide (NOT the one I'm working on) is [here](http://edgeguides.rubyonrails.org/ajax_on_rails.html), for reference.\n\n## Questions\n\nSome specific feedback I'd like addressed before I flesh this out more:\n\n### Intro to AJAX\n\nWhen this guide was written, AJAX was a bit newer of a technique. The original guide had an explanation of what AJAX is. Now that everybody knows what's up, do we still need this?\n\n### library coverage\n\nI plan on (and have in the outline) linking to a bunch of different projects that are used for testing JS, for example. Is the 'give a bunch of them a paragraph and a link' something we want here?\n\n### SPAs?\n\nI wrote up a little section mentioning Ember, Backbone, and Throne of JS. Obviously, \"How to write a heavy JS app\" is out of the scope of this guide, but I felt that mentioning tools that people can transition to once they get a lot of JS going would make sense. Is this useful?\n\n/cc @fxn @radar @wycats @dhh",
    "milestone": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "233c279c012ebac792aaa805f966cbc7",
      "avatar_url": "https://secure.gravatar.com/avatar/233c279c012ebac792aaa805f966cbc7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "steveklabnik",
      "url": "https://api.github.com/users/steveklabnik",
      "id": 27786
    },
    "closed_at": null,
    "created_at": "2012-08-31T03:25:21Z",
    "comments": 20,
    "title": "Re-writing the AJAX Guide",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7493.patch",
      "html_url": "https://github.com/rails/rails/pull/7493",
      "diff_url": "https://github.com/rails/rails/pull/7493.diff"
    },
    "number": 7493,
    "html_url": "https://github.com/rails/rails/issues/7493",
    "updated_at": "2012-09-03T15:04:23Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7493",
    "assignee": null,
    "id": 6570384
  },
  {
    "body": "Rails 3.2.8\n\nAs an example:\n```ruby\nclass Thing < ActiveRecord::Base\n  has_many :foos\n  has_many :bars\n\n  scope :with_foos, preload(:foos)\n  scope :with_bars, preload(:bars)\nend\n\nThing.with_foos.with_bars.preload_values #=> [:bars], instead of the expected [:foos, :bars]\n```\n\nAll other `*_values` seem to work as expected (group, includes, joins, etc).",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "f2b145e732ca71c9fdfe56ed040d7490",
      "avatar_url": "https://secure.gravatar.com/avatar/f2b145e732ca71c9fdfe56ed040d7490?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "contentfree",
      "url": "https://api.github.com/users/contentfree",
      "id": 10958
    },
    "closed_at": null,
    "created_at": "2012-08-30T22:29:22Z",
    "comments": 5,
    "title": "Chaining multiple scopes that use preload() results in only the last preload() being applied",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7490,
    "html_url": "https://github.com/rails/rails/issues/7490",
    "updated_at": "2012-08-31T00:10:48Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7490",
    "assignee": null,
    "id": 6566835
  },
  {
    "body": "Currently, using mysql one can specify sslca in database.yml to say that one should connect to the database using SSL.\n\nHowever, rails dbconsole does not honor this setting. The enclosed patch fixes this.\n\n-Lars and Jim\n",
    "milestone": null,
    "labels": [
      {
        "name": "railties",
        "url": "https://api.github.com/repos/rails/rails/labels/railties",
        "color": "8BE06E"
      }
    ],
    "user": {
      "gravatar_id": "28549512f89c6fa064bc5c9c5eb0baed",
      "avatar_url": "https://secure.gravatar.com/avatar/28549512f89c6fa064bc5c9c5eb0baed?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "needfeed",
      "url": "https://api.github.com/users/needfeed",
      "id": 708949
    },
    "closed_at": null,
    "created_at": "2012-08-30T17:44:38Z",
    "comments": 4,
    "title": "Have rails dbconsole pass sslca to the mysql command line client.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7488.patch",
      "html_url": "https://github.com/rails/rails/pull/7488",
      "diff_url": "https://github.com/rails/rails/pull/7488.diff"
    },
    "number": 7488,
    "html_url": "https://github.com/rails/rails/issues/7488",
    "updated_at": "2012-09-08T00:45:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7488",
    "assignee": null,
    "id": 6559993
  },
  {
    "body": "Originally reported under ernie/squeel#161 but it's happening with vanilla rails 3.2.8 too:\n\n```ruby\nclass A < ActiveRecord::Base\n  has_many :a_b_mappings, :inverse_of => :a\n  has_many :b, :through => :a_b_mappings, :source => :b, :conditions => {:context => \"foo\"}\nend\n\nclass B < ActiveRecord::Base\n  has_many :a_b_mappings, :inverse_of => :b\nend\n\nclass ABMapping < ActiveRecord::Base\n  self.table_name = :a_b_mappings\n  belongs_to :a, :inverse_of => :a_b_mappings\n  belongs_to :b, :inverse_of => :a_b_mappings\nend\n\n\nputs A.first.b.create.tap{|b| puts b.inspect}.a_b_mappings.inspect\n# #<B id: 3, context: nil> \n# [#<ABMapping id: 2, a_id: 1, b_id: 2>]\n```\n\nIt creates the through-association but does not set the conditions on table `B`. I.e. `context` is expected to be \"foo\", not nil.\n\n\nThe `Associations::ClassMethods` documentation states the following:\n\n>**conditions**\n> Specify the conditions that the associated objects must meet in order to be included as a WHERE SQL fragment, such as price > 5 AND name LIKE 'B%'. Record creations from the association are scoped if a hash is used. has_many :posts, :conditions => {:published => true} will create published posts with @blog.posts.create or @blog.posts.build.\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "97aa8c37ffa60c4262955aefae56e605",
      "avatar_url": "https://secure.gravatar.com/avatar/97aa8c37ffa60c4262955aefae56e605?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "the8472",
      "url": "https://api.github.com/users/the8472",
      "id": 1065730
    },
    "closed_at": null,
    "created_at": "2012-08-30T15:43:05Z",
    "comments": 1,
    "title": "Building a has_many :through with :conditions",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7486,
    "html_url": "https://github.com/rails/rails/issues/7486",
    "updated_at": "2012-08-30T17:34:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7486",
    "assignee": null,
    "id": 6556782
  },
  {
    "body": "For now tests are a bit outdated and we're using sprockets-rails from rubygems, I think to use it from github sounds more reasonable.\n\n/cc @guilleiguaran\n\nBTW: We should add changelog entry about removing manifest option, I think.",
    "milestone": null,
    "labels": [
      {
        "name": "asset pipeline",
        "url": "https://api.github.com/repos/rails/rails/labels/asset+pipeline",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "route",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": null,
    "created_at": "2012-08-30T09:16:54Z",
    "comments": 8,
    "title": "Use last version of sprockets-rails and sync tests for assets.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7482.patch",
      "html_url": "https://github.com/rails/rails/pull/7482",
      "diff_url": "https://github.com/rails/rails/pull/7482.diff"
    },
    "number": 7482,
    "html_url": "https://github.com/rails/rails/issues/7482",
    "updated_at": "2012-09-09T21:36:44Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7482",
    "assignee": null,
    "id": 6548706
  },
  {
    "body": "I initially reported this bug against Rails 2.3.10 on February 10, 2011, see my report at https://rails.lighthouseapp.com/projects/8994-ruby-on-rails/tickets/6406-activerecordxmlserializer-fails-with-has_one-types.\n\nThis bug remains unfixed in Rails 3.2.8. To see the problem, run the following code:\n\n```ruby\nclass Container < ActiveRecord::Base\n  has_many :sti_outer_objs\n\n  def dump\n    to_xml({:include=>{:sti_outer_objs=>{:include=>{:sti_inner_obj=>{}}}}})\n  end\nend\n\nclass StiOuterObj < ActiveRecord::Base\n  belongs_to :container\n  has_one :sti_inner_obj\nend\n\nclass StiOuterDerivedObj < StiOuterObj\nend\n\nclass StiInnerObj < ActiveRecord::Base\n  belongs_to :sti_outer_obj\nend\n\nclass StiInnerDerivedObj < StiInnerObj\nend\n\nclass Setup < ActiveRecord::Migration\n  def self.up\n    create_table :containers do |t|\n    end\n    create_table :sti_outer_objs do |t|\n      t.string :type\n      t.belongs_to :container\n    end\n    create_table :sti_inner_objs do |t|\n      t.string :type\n      t.belongs_to :sti_outer_obj\n    end\n    container = Container.create!\n    sti_outer_derived = StiOuterDerivedObj.create!(:container => container)\n    sti_inner_derived = StiInnerDerivedObj.create!(:sti_outer_obj => sti_outer_derived)\n    container = Container.find(container.id)\n    puts container.dump\n  end\n\n  def self.down\n    drop_table :containers\n    drop_table :sti_outer_objs\n    drop_table :sti_inner_objs\n  end\nend\n```\n\nExpected output:\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<container>\n  <id type=\"integer\">1</id>\n  <sti-outer-objs type=\"array\">\n    <sti-outer-obj type=\"StiOuterDerivedObj\">\n      <id type=\"integer\">1</id>\n      <container-id type=\"integer\">1</container-id>\n      <sti-inner-obj type=\"StiInnerDerivedObj\">\n        <id type=\"integer\">1</id>\n        <sti-outer-obj-id type=\"integer\">1</sti-outer-obj-id>\n      </sti-inner-obj>\n    </sti-outer-obj>\n  </sti-outer-objs>\n</container>\n```\n\nActual output:\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<container>\n  <id type=\"integer\">1</id>\n  <sti-outer-objs type=\"array\">\n    <sti-outer-obj type=\"StiOuterDerivedObj\">\n      <id type=\"integer\">1</id>\n      <container-id type=\"integer\">1</container-id>\n      <sti-inner-obj>\n        <id type=\"integer\">1</id>\n        <sti-outer-obj-id type=\"integer\">1</sti-outer-obj-id>\n      </sti-inner-obj>\n    </sti-outer-obj>\n  </sti-outer-objs>\n</container>\n```\n\nNote that the inner object is incorrectly claimed to be of type sti_inner_obj when in fact it is sti_inner_derived_obj. That is, its true type is not being determined by the serializer code and instead, just by the association. This makes it **impossible to unserialize correctly**.",
    "milestone": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      }
    ],
    "user": {
      "gravatar_id": "75bf0b37c5c32e5d869476f18c2faea8",
      "avatar_url": "https://secure.gravatar.com/avatar/75bf0b37c5c32e5d869476f18c2faea8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "cliochris",
      "url": "https://api.github.com/users/cliochris",
      "id": 472580
    },
    "closed_at": null,
    "created_at": "2012-08-28T17:53:41Z",
    "comments": 6,
    "title": "Rails 3.2.8 ActiveModel::Serializers::Xml::Serializer ignores has_one sti",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7471,
    "html_url": "https://github.com/rails/rails/issues/7471",
    "updated_at": "2012-09-05T17:31:04Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7471",
    "assignee": null,
    "id": 6505637
  },
  {
    "body": "I just tracked a strange problem I was having with my view specs to ActionController::TemplateAssertions. It is using instance variables @partials, @templates, and @layouts on the test itself. I was populating the @templates variable, which is what my view expects to receive. Since TemplateAssertions doesn't expect this, it fails with a \"can't convert\" error.\n\nTemplateAssertion's internal variables should not be mixed into the test itself. Agree/disagree?",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "c20e5f68a1a046448f77ecaf39b7801d",
      "avatar_url": "https://secure.gravatar.com/avatar/c20e5f68a1a046448f77ecaf39b7801d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "rehevkor5",
      "url": "https://api.github.com/users/rehevkor5",
      "id": 16899
    },
    "closed_at": null,
    "created_at": "2012-08-27T19:37:41Z",
    "comments": 1,
    "title": "ActionController::TemplateAssertions pollutes @partials, @templates, and @layouts",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7459,
    "html_url": "https://github.com/rails/rails/issues/7459",
    "updated_at": "2012-08-27T21:24:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7459",
    "assignee": null,
    "id": 6482510
  },
  {
    "body": "Rails 3.2.8.\n\nI've got a .js.erb file where I need to use both manifest and a magic comment, and I would assume that this should work:\n\n    <%# encoding: utf-8 %>\n    //= require some_stuff\n\nor at least this should work:\n\n    <%# encoding: utf-8 %>//= require some_stuff\n\nas erb processing has to be done before js processing resulting in js getting simple\n\n    //= require some_stuff\n\nBut for some strange reason manifest directives don't work and are just included as text. Putting manifest definitions the first and encoding the second enables manifest but disables encoding.",
    "milestone": null,
    "labels": [
      {
        "name": "asset pipeline",
        "url": "https://api.github.com/repos/rails/rails/labels/asset+pipeline",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "87767d2bcb721f784f4ae0b61819510a",
      "avatar_url": "https://secure.gravatar.com/avatar/87767d2bcb721f784f4ae0b61819510a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "Exoth",
      "url": "https://api.github.com/users/Exoth",
      "id": 238863
    },
    "closed_at": null,
    "created_at": "2012-08-27T12:25:04Z",
    "comments": 9,
    "title": "Simultaenous use of manifest and a magic comment",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7455,
    "html_url": "https://github.com/rails/rails/issues/7455",
    "updated_at": "2012-08-31T19:31:18Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7455",
    "assignee": null,
    "id": 6472286
  },
  {
    "body": "@tenderlove this PR is based on our discussion in #7424\n\nWhen `ActionDispatch::ParamsParser#parse_formatted_parameters` raises an exception, it's re-raised as `ActionDispatch::ParamsParser::ParseError` instead of the original exception - we're assuming that the only thing that can raise an exception there is a parser. This way it's much easier to catch parsing error that originated in `ParamsParser` (skipping parsing errors raised later down the chain e.g. in actions) and return a custom response e.g. 400.\n\nBTW. There's a funky thing going on with request body in `ParamsParser#parse_formatted_parameters` ([link](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/middleware/params_parser.rb#L37-58)). Proc and Yaml strategies use `request.raw_post` (which reads request body and then rewinds it before being parsed), but JSON and XML ones read and rewind request body on their own e.g.:\n\n```ruby\nwhen :json\n  data = ActiveSupport::JSON.decode(request.body)\n  request.body.rewind if request.body.respond_to?(:rewind)\n  ...\n```\n\nThe issue is that if JSON.decode raises an exception, request body is not rewinded and thus calling `request.raw_post` later inside the error handler returns nil. Is there any reason why not all strategies use `request.raw_post`? This should most likely fix this issue.",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "2b2b07fe8688479d2559704d4bf8a264",
      "avatar_url": "https://secure.gravatar.com/avatar/2b2b07fe8688479d2559704d4bf8a264?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "szimek",
      "url": "https://api.github.com/users/szimek",
      "id": 9873
    },
    "closed_at": null,
    "created_at": "2012-08-24T19:26:11Z",
    "comments": 2,
    "title": "Raise generic ParseError exception when ParamsParser fails parsing request params",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7444.patch",
      "html_url": "https://github.com/rails/rails/pull/7444",
      "diff_url": "https://github.com/rails/rails/pull/7444.diff"
    },
    "number": 7444,
    "html_url": "https://github.com/rails/rails/issues/7444",
    "updated_at": "2012-08-27T22:15:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7444",
    "assignee": null,
    "id": 6442147
  },
  {
    "body": "In Rails 3.2.6 (need to see if is problem in latest), we have models similar to:\n\n    class Library < ActiveRecord::Base\n      attr_accessible :name, :address, :phone_number\n      has_many :books\n    end\n    \n    class LibraryRef < Library\n      self.table_name = :libraries\n      \n      # redefine accessible_attributes (messy way to set- it should have a better way to redefine)\n      self._accessible_attributes[:default] = [:name]\n    end\n    \n    class Book < ActiveRecord::Base\n      attr_accessible :title, :isbn, :checked_out\n      belongs_to :library, primary_key: :library_id, class_name: 'LibraryRef'\n    end\n\nAnd when referring to Library before querying on Book, :name, :address, :phone_number were mass assignable.\n\nAfter querying on Book which returned LibraryRef, if we query on Library again, it acts as if it were a LibraryRef because its mass assigned attributes have been redefined.\n\nThis is confusing because the whole point to class_attribute (like self._accessible_attributes in this case) was that it supported subclassing, I thought.\n\nI've not had time to check this out outside of our app, so it might not be an issue, and it may have been fixed or in another ticket already- I looked but didn't see it.\n\nLet me know if this looks familiar or you can easily reproduce. Otherwise, I'll try to confirm it outside of our application as soon as I have time.\n\nIn the meantime, this is the workaround:\n\n    module LibraryShared\n      extend ActiveSupport::Concern\n      \n      included do\n        attr_accessible :name, :address, :phone_number\n        has_many :books\n      end\n\n      module ClassMethods\n      end\n    end\n\n    class Library < ActiveRecord::Base\n      include LibraryShared\n    end\n    \n    class LibraryRef < Library\n      include LibraryShared\n      \n      self.table_name = :libraries\n      \n      # redefine accessible_attributes (messy way to set- it should have a better way to redefine)\n      self._accessible_attributes[:default] = [:name]\n    end\n    \n    class Book < ActiveRecord::Base\n      attr_accessible :title, :isbn, :checked_out\n      belongs_to :library, primary_key: :library_id, class_name: 'LibraryRef'\n    end\n\nThanks!",
    "milestone": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      },
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "8838005371ab9c0b1d40f0504bf8832a",
      "avatar_url": "https://secure.gravatar.com/avatar/8838005371ab9c0b1d40f0504bf8832a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "garysweaver",
      "url": "https://api.github.com/users/garysweaver",
      "id": 92330
    },
    "closed_at": null,
    "created_at": "2012-08-24T18:49:13Z",
    "comments": 0,
    "title": "Mass assignment attributes change when backwards association uses subclass that sets self._accessible_attributes[:default]",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7442,
    "html_url": "https://github.com/rails/rails/issues/7442",
    "updated_at": "2012-08-24T18:53:04Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7442",
    "assignee": null,
    "id": 6441357
  },
  {
    "body": "```\nWord.offset(4).last\nSELECT \"words\".* FROM \"words\" OFFSET 4\n```\n\n```\nWord.last :offset => 4\nSELECT \"words\".* FROM \"words\" OFFSET 4\n```\n\nNot as expected. Missed order by id desc and limit 1;\n\n(model is empty, project empty 3.2.8, pg)",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "e320beed5b9b212d0c478d96a0c0131f",
      "avatar_url": "https://secure.gravatar.com/avatar/e320beed5b9b212d0c478d96a0c0131f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "kostya",
      "url": "https://api.github.com/users/kostya",
      "id": 95060
    },
    "closed_at": null,
    "created_at": "2012-08-24T16:05:57Z",
    "comments": 6,
    "title": "offset + last bug",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7441,
    "html_url": "https://github.com/rails/rails/issues/7441",
    "updated_at": "2012-09-01T19:12:34Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7441",
    "assignee": null,
    "id": 6437847
  },
  {
    "body": "The bug:\n\n    Account.where('1 = 2').sum(\"2 * credit_limit\") => '0'\n\nThat is, sum with an expression (not a column name) on a condition or collection that returns no records returns the string \"0\", whereas it should return an integer, 0.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "53d301869ff9f450d180eb40fdcca434",
      "avatar_url": "https://secure.gravatar.com/avatar/53d301869ff9f450d180eb40fdcca434?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "refractalize",
      "url": "https://api.github.com/users/refractalize",
      "id": 123917
    },
    "closed_at": null,
    "created_at": "2012-08-24T09:34:30Z",
    "comments": 5,
    "title": "ActiveRecord: sum expression returns string '0' for no records, fixed",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7439.patch",
      "html_url": "https://github.com/rails/rails/pull/7439",
      "diff_url": "https://github.com/rails/rails/pull/7439.diff"
    },
    "number": 7439,
    "html_url": "https://github.com/rails/rails/issues/7439",
    "updated_at": "2012-09-08T00:42:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7439",
    "assignee": null,
    "id": 6429438
  },
  {
    "body": "With eager_load on, I'm get some AR class load error.\n\nI'm still totally confused, but I tracked it down to `AR::AttributeMethods::PrimaryKey` somehow installing itself before `::Read`. I think it has to do with the fact the `primary_key.rb` is required before `read.rb` (alpha ordering).\n\nhttps://github.com/rails/rails/blob/master/activerecord/lib/active_record.rb#L113-120\nhttps://github.com/rails/rails/blob/master/activerecord/lib/active_record/attribute_methods.rb#L9-18\n\n```\nNoMethodError: super: no superclass method `define_method_attribute' for #<Class:0x007fad82e995d0>\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/dynamic_matchers.rb:22:in `method_missing'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/attribute_methods/primary_key.rb:42:in `define_method_attribute'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:280:in `block in define_attribute_method'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:273:in `each'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:273:in `define_attribute_method'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:240:in `block in define_attribute_methods'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:240:in `each'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activemodel/lib/active_model/attribute_methods.rb:240:in `define_attribute_methods'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/attribute_methods.rb:29:in `block in define_attribute_methods'\n\tfrom <internal:prelude>:10:in `synchronize'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/attribute_methods.rb:26:in `define_attribute_methods'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/attribute_methods.rb:122:in `respond_to?'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activesupport/lib/active_support/callbacks.rb:332:in `__define_callbacks'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activesupport/lib/active_support/callbacks.rb:73:in `run_callbacks'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/core.rb:212:in `init_with'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/inheritance.rb:97:in `instantiate'\n... 12 levels...\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation.rb:188:in `to_a'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation.rb:572:in `exec_queries'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation.rb:450:in `block in load'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/explain.rb:30:in `logging_query_plan'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation.rb:450:in `load'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation.rb:188:in `to_a'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation/finder_methods.rb:329:in `find_last'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/relation/finder_methods.rb:125:in `last'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/activerecord-deprecated_finders-fe150f26f009/lib/active_record/deprecated_finders/relation.rb:147:in `last'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/activerecord/lib/active_record/querying.rb:4:in `last'\n\tfrom (irb):1\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/railties/lib/rails/commands/console.rb:78:in `start'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/railties/lib/rails/commands/console.rb:9:in `start'\n\tfrom APP/vendor/gems/ruby/1.9.1/bundler/gems/rails-79e880f7f4f9/railties/lib/rails/commands.rb:47:in `<top (required)>'\n\tfrom script/rails:18:in `require'\n\tfrom script/rails:18:in `<main>'>> \n```\n\n/cc @tenderlove @carlosantoniodasilva @josevalim",
    "milestone": {
      "due_on": null,
      "description": "Changes that break 3.x API.",
      "created_at": "2011-10-09T02:53:46Z",
      "title": "4.0.0",
      "state": "open",
      "closed_issues": 10,
      "number": 9,
      "open_issues": 3,
      "url": "https://api.github.com/repos/rails/rails/milestones/9",
      "id": 44893,
      "creator": {
        "gravatar_id": "24d2f8804e6bb4b7ea6bd11e0a586470",
        "avatar_url": "https://secure.gravatar.com/avatar/24d2f8804e6bb4b7ea6bd11e0a586470?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "login": "jeremy",
        "url": "https://api.github.com/users/jeremy",
        "id": 199
      }
    },
    "labels": [
      {
        "name": "bug",
        "url": "https://api.github.com/repos/rails/rails/labels/bug",
        "color": "444444"
      },
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      },
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "bbe5dc8dcf248706525ab76f46185520",
      "avatar_url": "https://secure.gravatar.com/avatar/bbe5dc8dcf248706525ab76f46185520?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "josh",
      "url": "https://api.github.com/users/josh",
      "id": 137
    },
    "closed_at": null,
    "created_at": "2012-08-22T22:48:03Z",
    "comments": 0,
    "title": "Can't load AR records with eager_load=true",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7428,
    "html_url": "https://github.com/rails/rails/issues/7428",
    "updated_at": "2012-09-05T20:25:05Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7428",
    "assignee": null,
    "id": 6393105
  },
  {
    "body": "Fixes encoding of large unicode characters (> 0xFFFF) to JSON.  For Javascript / JSON these need to be encoded as a surrogate pair.  Fixes Issue #3727",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "a8d99d9d17ed9fd6c270efecb0c62c5f",
      "avatar_url": "https://secure.gravatar.com/avatar/a8d99d9d17ed9fd6c270efecb0c62c5f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "zbskii",
      "url": "https://api.github.com/users/zbskii",
      "id": 178036
    },
    "closed_at": null,
    "created_at": "2012-08-22T21:17:19Z",
    "comments": 2,
    "title": "Fixes encoding of 4 byte unicode characters to JSON",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7425.patch",
      "html_url": "https://github.com/rails/rails/pull/7425",
      "diff_url": "https://github.com/rails/rails/pull/7425.diff"
    },
    "number": 7425,
    "html_url": "https://github.com/rails/rails/issues/7425",
    "updated_at": "2012-08-26T20:28:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7425",
    "assignee": null,
    "id": 6391033
  },
  {
    "body": "Oracle and PostgreSQL supports \"NULLS first/last\" in order by statement. It\nwill break the reverse_sql_order by concating \" DESC\" to the order by statement.\n\nFor example,\n```ruby\n    User.order(\"name ASC NULLS FIRST\").last\n```",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "83c8cca11558f32207645ca270ae8475",
      "avatar_url": "https://secure.gravatar.com/avatar/83c8cca11558f32207645ca270ae8475?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "sishen",
      "url": "https://api.github.com/users/sishen",
      "id": 11197
    },
    "closed_at": null,
    "created_at": "2012-08-22T18:32:44Z",
    "comments": 6,
    "title": "ORDER BY xx NULLS first/last will break reverse_sql_order",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7423.patch",
      "html_url": "https://github.com/rails/rails/pull/7423",
      "diff_url": "https://github.com/rails/rails/pull/7423.diff"
    },
    "number": 7423,
    "html_url": "https://github.com/rails/rails/issues/7423",
    "updated_at": "2012-09-10T01:09:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7423",
    "assignee": null,
    "id": 6385066
  },
  {
    "body": "We use the `ActiveRecord::FinderMethods#exists?` method on one of our models in an initializer which registers a Warden callback.\n\n```ruby\nWarden::Manager.after_fetch do |user, auth, opts|\n  if MyModel.exists?(:attribute => true)\n    # ...\n  end\nend\n```\n\nThe problem is that it randomly fails with the following exception:  `undefined method 'locked' for #<Class:0x007fdab3025298>`. After the exception occured the first time, no other action can be accessed anymore because the same exception is thrown every time the warden callback is run.\n\nI tried to figure out where the problem occurs and I thinks its [here](https://github.com/rails/rails/blob/v3.2.8/activerecord/lib/active_record/connection_adapters/abstract/query_cache.rb#L83). But that's a bit strange because it checks if the `arel` object in this case responds to `:locked` before calling it.\n\nHere's the full trace of the exception:\n\n```\nactiverecord (3.2.8) lib/active_record/dynamic_matchers.rb:50:in `method_missing'\nactiverecord (3.2.8) lib/active_record/relation/delegation.rb:14:in `block in locked'\nactiverecord (3.2.8) lib/active_record/relation.rb:241:in `block in scoping'\nactiverecord (3.2.8) lib/active_record/scoping.rb:98:in `with_scope'\nactiverecord (3.2.8) lib/active_record/relation.rb:241:in `scoping'\nactiverecord (3.2.8) lib/active_record/relation/delegation.rb:14:in `locked'\nactiverecord (3.2.8) lib/active_record/connection_adapters/abstract/query_cache.rb:83:in `locked?'\nactiverecord (3.2.8) lib/active_record/connection_adapters/abstract/query_cache.rb:59:in `select_all'\nactiverecord (3.2.8) lib/active_record/connection_adapters/abstract/database_statements.rb:24:in `select_one'\nactiverecord (3.2.8) lib/active_record/connection_adapters/abstract/database_statements.rb:30:in `select_value'\nactiverecord (3.2.8) lib/active_record/relation/finder_methods.rb:202:in `exists?'\nactiverecord (3.2.8) lib/active_record/querying.rb:5:in `exists?'\nconfig/initializers/warden_callbacks.rb:21:in `block in <top (required)>'\nwarden (1.2.1) lib/warden/hooks.rb:14:in `call'\nwarden (1.2.1) lib/warden/hooks.rb:14:in `block in _run_callbacks'\nwarden (1.2.1) lib/warden/hooks.rb:9:in `each'\nwarden (1.2.1) lib/warden/hooks.rb:9:in `_run_callbacks'\nwarden (1.2.1) lib/warden/manager.rb:53:in `_run_callbacks'\nwarden (1.2.1) lib/warden/proxy.rb:179:in `set_user'\nwarden (1.2.1) lib/warden/proxy.rb:217:in `user'\nwarden (1.2.1) lib/warden/proxy.rb:318:in `_perform_authentication'\nwarden (1.2.1) lib/warden/proxy.rb:127:in `authenticate!'\ndevise (2.1.2) lib/devise/controllers/helpers.rb:48:in `authenticate_user!'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:441:in `block in _run__1781825415374613391__process_action__672509108191995934__callbacks'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:215:in `block in _conditional_callback_around_5355'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:326:in `around'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:310:in `_callback_around_13'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:214:in `_conditional_callback_around_5355'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:414:in `_run__1781825415374613391__process_action__672509108191995934__callbacks'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:405:in `__run_callback'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:385:in `_run_process_action_callbacks'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:81:in `run_callbacks'\nactionpack (3.2.8) lib/abstract_controller/callbacks.rb:17:in `process_action'\nactionpack (3.2.8) lib/action_controller/metal/rescue.rb:29:in `process_action'\nactionpack (3.2.8) lib/action_controller/metal/instrumentation.rb:30:in `block in process_action'\nactivesupport (3.2.8) lib/active_support/notifications.rb:123:in `block in instrument'\nactivesupport (3.2.8) lib/active_support/notifications/instrumenter.rb:20:in `instrument'\nactivesupport (3.2.8) lib/active_support/notifications.rb:123:in `instrument'\nactionpack (3.2.8) lib/action_controller/metal/instrumentation.rb:29:in `process_action'\nactionpack (3.2.8) lib/action_controller/metal/params_wrapper.rb:207:in `process_action'\nactiverecord (3.2.8) lib/active_record/railties/controller_runtime.rb:18:in `process_action'\nactionpack (3.2.8) lib/abstract_controller/base.rb:121:in `process'\nactionpack (3.2.8) lib/abstract_controller/rendering.rb:45:in `process'\nactionpack (3.2.8) lib/action_controller/metal.rb:203:in `dispatch'\nactionpack (3.2.8) lib/action_controller/metal/rack_delegation.rb:14:in `dispatch'\nactionpack (3.2.8) lib/action_controller/metal.rb:246:in `block in action'\nactionpack (3.2.8) lib/action_dispatch/routing/route_set.rb:73:in `call'\nactionpack (3.2.8) lib/action_dispatch/routing/route_set.rb:73:in `dispatch'\nactionpack (3.2.8) lib/action_dispatch/routing/route_set.rb:36:in `call'\njourney (1.0.4) lib/journey/router.rb:68:in `block in call'\njourney (1.0.4) lib/journey/router.rb:56:in `each'\njourney (1.0.4) lib/journey/router.rb:56:in `call'\nactionpack (3.2.8) lib/action_dispatch/routing/route_set.rb:600:in `call'\nwarden (1.2.1) lib/warden/manager.rb:35:in `block in call'\nwarden (1.2.1) lib/warden/manager.rb:34:in `catch'\nwarden (1.2.1) lib/warden/manager.rb:34:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/best_standards_support.rb:17:in `call'\nrack (1.4.1) lib/rack/etag.rb:23:in `call'\nrack (1.4.1) lib/rack/conditionalget.rb:25:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/head.rb:14:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/params_parser.rb:21:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/flash.rb:242:in `call'\nrack (1.4.1) lib/rack/session/abstract/id.rb:205:in `context'\nrack (1.4.1) lib/rack/session/abstract/id.rb:200:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/cookies.rb:339:in `call'\nactiverecord (3.2.8) lib/active_record/query_cache.rb:64:in `call'\nactiverecord (3.2.8) lib/active_record/connection_adapters/abstract/connection_pool.rb:473:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/callbacks.rb:28:in `block in call'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:405:in `_run__4125333889746358287__call__3170945389804826198__callbacks'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:405:in `__run_callback'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:385:in `_run_call_callbacks'\nactivesupport (3.2.8) lib/active_support/callbacks.rb:81:in `run_callbacks'\nactionpack (3.2.8) lib/action_dispatch/middleware/callbacks.rb:27:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/reloader.rb:65:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/remote_ip.rb:31:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/debug_exceptions.rb:16:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/show_exceptions.rb:56:in `call'\nrailties (3.2.8) lib/rails/rack/logger.rb:26:in `call_app'\nrailties (3.2.8) lib/rails/rack/logger.rb:14:in `block in call'\nactivesupport (3.2.8) lib/active_support/tagged_logging.rb:25:in `tagged'\nrailties (3.2.8) lib/rails/rack/logger.rb:14:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/request_id.rb:22:in `call'\nrack (1.4.1) lib/rack/methodoverride.rb:21:in `call'\nrack (1.4.1) lib/rack/runtime.rb:17:in `call'\nactivesupport (3.2.8) lib/active_support/cache/strategy/local_cache.rb:72:in `call'\nrack (1.4.1) lib/rack/lock.rb:15:in `call'\nactionpack (3.2.8) lib/action_dispatch/middleware/static.rb:62:in `call'\nrailties (3.2.8) lib/rails/engine.rb:479:in `call'\nrailties (3.2.8) lib/rails/application.rb:223:in `call'\nrack (1.4.1) lib/rack/content_length.rb:14:in `call'\nrailties (3.2.8) lib/rails/rack/log_tailer.rb:17:in `call'\nrack (1.4.1) lib/rack/handler/webrick.rb:59:in `service'\n/Users/dvg/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'\n/Users/dvg/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'\n/Users/dvg/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'\n```\nAfter restarting the application the problem disappears.\n\nThe problem occurs in both development and production environments. We're using Rails 3.2.8 with Ruby 1.9.3.",
    "milestone": null,
    "labels": [
      {
        "name": "bug",
        "url": "https://api.github.com/repos/rails/rails/labels/bug",
        "color": "444444"
      },
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "666b6d45bd474eeef66f5a277af58de3",
      "avatar_url": "https://secure.gravatar.com/avatar/666b6d45bd474eeef66f5a277af58de3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "vongruenigen",
      "url": "https://api.github.com/users/vongruenigen",
      "id": 789513
    },
    "closed_at": null,
    "created_at": "2012-08-22T13:09:40Z",
    "comments": 4,
    "title": "undefined method 'locked' for #<Class:...>",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7421,
    "html_url": "https://github.com/rails/rails/issues/7421",
    "updated_at": "2012-08-24T08:50:19Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7421",
    "assignee": null,
    "id": 6376579
  },
  {
    "body": "I need add to id values with 15 digits, it is id from facebook objects and it is not depent on me. First I changed int to string, it works in browser. But in test with capybara it not work, even if I drop, create and migrate test database once more. So next I will change string to integer but with limit 8 (I'm using mysql)\n\nInstead of this, when I tried saved long number in integer I got duplicate entry error from mysql (strange).\n\nBut what is the problem when I changed id from int to string, in test (after load schema.rb file) id field in sql query was still like integer and schema.rb file not have any information about id type (string). And after changed id to integer with limit 8, schema.rb didn't have information about this too. It is very bad, because after migration id is big int but after load schema id is only integer\n\nSumming up:\nschema.rb are able to create primary key only as integer. it would be grate to support other datatype for primary key",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "794f638b6f7f5132d5a13230e61c9db2",
      "avatar_url": "https://secure.gravatar.com/avatar/794f638b6f7f5132d5a13230e61c9db2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "wafcio",
      "url": "https://api.github.com/users/wafcio",
      "id": 945115
    },
    "closed_at": null,
    "created_at": "2012-08-22T12:30:09Z",
    "comments": 0,
    "title": "Duplicate entry '...' for key 'PRIMARY' for long id field",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7420,
    "html_url": "https://github.com/rails/rails/issues/7420",
    "updated_at": "2012-08-22T13:55:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7420",
    "assignee": null,
    "id": 6375788
  },
  {
    "body": "ActiveRecord::Associations::Preloader#records_by_reflection uses symbolized association name to find a reflection. If association was defined using string as it's name, model reflections hash would contain that string as a key — so Preloader fails to find that reflection. I think storing symbolized association names in reflections hash is a good solution.\n\nFailing example:\n```ruby\nclass Post < ActiveRecord::Base\n  belongs_to \"author\"\nend\n\nclass Author < ActiveRecord::Base\n  has_many :posts\nend\n```\n    rails> Post.includes(:author).where(:id => 1)\n    ActiveRecord::ConfigurationError: Association named 'author' was not found; perhaps you misspelled it?",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "38da5c11261e71fba3d6d87036c2d5ab",
      "avatar_url": "https://secure.gravatar.com/avatar/38da5c11261e71fba3d6d87036c2d5ab?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "oruen",
      "url": "https://api.github.com/users/oruen",
      "id": 7712
    },
    "closed_at": null,
    "created_at": "2012-08-22T09:04:23Z",
    "comments": 4,
    "title": "Using strings in association definition methods breaks eager loading",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7418.patch",
      "html_url": "https://github.com/rails/rails/pull/7418",
      "diff_url": "https://github.com/rails/rails/pull/7418.diff"
    },
    "number": 7418,
    "html_url": "https://github.com/rails/rails/issues/7418",
    "updated_at": "2012-09-07T11:13:39Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7418",
    "assignee": null,
    "id": 6372449
  },
  {
    "body": "When we run `rake test:benchmark` for performance tests it raises\nArgumentError that file --benchmark not found. It happens because\ngem 'test-unit' passes remaining options to the tests, whereas mintest\ndoesn't do it.",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      },
      {
        "name": "railties",
        "url": "https://api.github.com/repos/rails/rails/labels/railties",
        "color": "8BE06E"
      }
    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "route",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": null,
    "created_at": "2012-08-22T07:16:15Z",
    "comments": 2,
    "title": "#4938 Fix launching performance tests",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7416.patch",
      "html_url": "https://github.com/rails/rails/pull/7416",
      "diff_url": "https://github.com/rails/rails/pull/7416.diff"
    },
    "number": 7416,
    "html_url": "https://github.com/rails/rails/issues/7416",
    "updated_at": "2012-08-22T16:12:00Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7416",
    "assignee": null,
    "id": 6370745
  },
  {
    "body": "\nIf the host in default_url_options is accidentally set with a protocol such as `:host => \"http://example.com\"` then the generated url will have the protocol twice `http://http://example.com` which is not what the user intended. Likely they wanted to define a host `:host => \"example.com\"` and a `:protocol => \"http://\"` but did not know the convention.\n\nThis is may not the most common problem, but when it happens it can go undetected for a while. I accidentally added `http://` out of habit recently only to find all the links in my emails were broken after deploying a demo site to production. Rather than allow this accident go undetected, we can fix the problem in line by properly setting the protocol and host.\n\n\nI was able to find this related question on stack overflow: http://stackoverflow.com/questions/5878329/rails-3-devise-how-do-i-make-the-email-confirmation-links-use-secure-https-n\n where the answer was highly upvoted. \n\nATP Action Mailer, Actionpack, and Railties",
    "milestone": null,
    "labels": [
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      },
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "db953d125f5cc49756edb6149f1b813e",
      "avatar_url": "https://secure.gravatar.com/avatar/db953d125f5cc49756edb6149f1b813e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "schneems",
      "url": "https://api.github.com/users/schneems",
      "id": 59744
    },
    "closed_at": null,
    "created_at": "2012-08-22T05:28:53Z",
    "comments": 3,
    "title": "Fix improperly configured host",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7415.patch",
      "html_url": "https://github.com/rails/rails/pull/7415",
      "diff_url": "https://github.com/rails/rails/pull/7415.diff"
    },
    "number": 7415,
    "html_url": "https://github.com/rails/rails/issues/7415",
    "updated_at": "2012-08-22T16:03:41Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7415",
    "assignee": null,
    "id": 6369657
  },
  {
    "body": "Here is the scenario:\n\n    class Serving\n      has_many :constituents\n      has_many :nutritions, :through => :constituents\n    end\n\n    class Constituent\n      belongs_to :serving\n      belongs_to :nutrition\n      attr_accessible :qty_in_grams\n    end\n\n    class Nutrition\n      has_many :constituents\n      has_many :servings, :through => constituents\n      attr_accessible :calories_per_gram\n    end\n\nI want to calculate the total calories for the serving, I naturally do the following query:\n\n    Serving.sum { |serving| \n      serving.constituents.sum { |constituent| \n        constituent.qty_in_grams * constituent.nutrition.calories_per_gram \n      } \n    }\n\nThis makes a lot of queries, so I use includes to reduce the number of queries down:\n\n    Serving.includes(:constituents => :nutrition).sum { |serving| \n      serving.constituents.sum { |constituent| \n        constituent.qty_in_grams * constituent.nutrition.calories_per_gram \n      } \n    }\n\nHowever, this doesn't seem to help. Puzzled, and after a lot of fiddling, I make a change that reduces the queries down to 3.\n\n    Serving.includes(:constituents => :nutrition).sum { |serving| \n      serving.constituents.inject(0) { |memo, constituent| \n        memo + (constituent.qty_in_grams * constituent.nutrition.calories_per_gram) \n      } \n    }\n\nI don't know why ActiveSupport::sum appears to act differently to inject in this case. Is this a bug? (I searched the issue tracker and didn't find any likely suspects.)\n\n**Example logs:**\n\nWith includes and 2 sums:\n\n    Serving Load (1.0ms)  SELECT \"servings\".* FROM \"servings\" \n    Constituent Load (3.0ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)\n    Nutrition Load (2.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" IN (1, 2, 8, 6, 7, 5, 4, 3, 9, 10, 11, 12, 17, 18, 13, 14, 15, 16, 19, 20, 23, 22, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34, 33, 35, 36, 37, 38)\n    Constituent Load (0.8ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 1 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 2 LIMIT 1\n    Constituent Load (1.2ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 2\n    Nutrition Load (0.8ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 8 LIMIT 1\n    Nutrition Load (0.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 6 LIMIT 1\n    Nutrition Load (0.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 7 LIMIT 1\n    Nutrition Load (1.1ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 5 LIMIT 1\n    Nutrition Load (0.8ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 4 LIMIT 1\n    Nutrition Load (1.2ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 3 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 1 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 9 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 10 LIMIT 1\n    Nutrition Load (0.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 11 LIMIT 1\n    Constituent Load (0.7ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 3\n    Nutrition Load (1.2ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 12 LIMIT 1\n    Nutrition Load (0.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 17 LIMIT 1\n    Nutrition Load (1.2ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 18 LIMIT 1\n    Constituent Load (1.0ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 4\n    Nutrition Load (0.8ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 13 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 14 LIMIT 1\n    Nutrition Load (4.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 15 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 16 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 11 LIMIT 1\n    Nutrition Load (1.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 7 LIMIT 1\n    Constituent Load (1.1ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 5\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 19 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 6 LIMIT 1\n    Nutrition Load (1.2ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 9 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 7 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 20 LIMIT 1\n    Constituent Load (0.9ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 6\n    Nutrition Load (1.6ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 23 LIMIT 1\n    Nutrition Load (6.5ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 22 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 21 LIMIT 1\n    Nutrition Load (6.5ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 24 LIMIT 1\n    Constituent Load (1.2ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 7\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 25 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 26 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 27 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 28 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 29 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 30 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 31 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 32 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 34 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 33 LIMIT 1\n    Constituent Load (1.2ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 8\n    Nutrition Load (5.7ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 25 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 26 LIMIT 1\n    Nutrition Load (1.4ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 27 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 28 LIMIT 1\n    Nutrition Load (1.1ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 29 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 30 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 31 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 32 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 34 LIMIT 1\n    Nutrition Load (7.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 33 LIMIT 1\n    Constituent Load (1.0ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 9\n    Nutrition Load (1.1ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 23 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 22 LIMIT 1\n    Constituent Load (1.1ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 10\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 25 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 26 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 27 LIMIT 1\n    Nutrition Load (1.1ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 28 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 29 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 30 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 31 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 32 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 33 LIMIT 1\n    Constituent Load (1.0ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 11\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 21 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 35 LIMIT 1\n    Nutrition Load (0.9ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 36 LIMIT 1\n    Nutrition Load (0.8ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 37 LIMIT 1\n    Constituent Load (0.9ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" = 12\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 38 LIMIT 1\n    Nutrition Load (1.0ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" = 17 LIMIT 1  \n\nWith includes, 1 sum, 1 inject:\n\n    Serving Load (1.0ms)  SELECT \"servings\".* FROM \"servings\" \n    Constituent Load (3.7ms)  SELECT \"constituents\".* FROM \"constituents\" WHERE \"constituents\".\"serving_id\" IN (1, 2, 3, 4, 5, 6 , 7, 8, 9, 10, 11, 12)\n    Nutrition Load (3.1ms)  SELECT \"nutritions\".* FROM \"nutritions\" WHERE \"nutritions\".\"id\" IN (1, 2, 8, 6, 7, 5, 4, 3, 9, 10, 11, 12, 17, 18, 13, 14, 15, 16, 19, 20, 23, 22, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34, 33, 35, 36, 37, 38)\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "733212adc953a0d9ebd4038f0cafa4be",
      "avatar_url": "https://secure.gravatar.com/avatar/733212adc953a0d9ebd4038f0cafa4be?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "fierydrake",
      "url": "https://api.github.com/users/fierydrake",
      "id": 30974
    },
    "closed_at": null,
    "created_at": "2012-08-22T00:11:28Z",
    "comments": 1,
    "title": "Rails 3.2.8: Use of ActiveSupport::sum causes extra database queries vs inject",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7411,
    "html_url": "https://github.com/rails/rails/issues/7411",
    "updated_at": "2012-08-22T00:17:05Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7411",
    "assignee": null,
    "id": 6366451
  },
  {
    "body": "It seems like this could eliminate some annoyances for other people as well. `template0` as I understand it is a pristine database template where the default template to use is` template1` which may include some options. In my case using the new rails-dev-box vagrant setup; `template1` default encoding is SQL_ASCII and raises an error because it conflicts with the UTF-8 option passed in.",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b057dbf404843c93d69e719d4e2dea4b",
      "avatar_url": "https://secure.gravatar.com/avatar/b057dbf404843c93d69e719d4e2dea4b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "bobbyw",
      "url": "https://api.github.com/users/bobbyw",
      "id": 4330
    },
    "closed_at": null,
    "created_at": "2012-08-20T02:11:46Z",
    "comments": 1,
    "title": "Use template0 option for creating activerecord test databases in build_database task with postgres",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7394.patch",
      "html_url": "https://github.com/rails/rails/pull/7394",
      "diff_url": "https://github.com/rails/rails/pull/7394.diff"
    },
    "number": 7394,
    "html_url": "https://github.com/rails/rails/issues/7394",
    "updated_at": "2012-08-20T02:14:55Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7394",
    "assignee": null,
    "id": 6317111
  },
  {
    "body": "rails 3.2.8 / ActiveRecord 3.2.8\nfirst_or_create method is applying given conditions by where to xxx_all methods in model's callbacks. It may be bug?\n\nexample:\n\n    class Comment < ActiveRecord::Base\n      attr_accessible :enabled, :title\n      before_save :diabled_old\n      def diabled_old\n        self.class.update_all enabled: false\n      end\n    end\n\n    > Comment.where( title: \"x\" ).first_or_create\n    SQL (0.1ms)  UPDATE \"comments\" SET \"enabled\" = 'f' WHERE \"comments\".\"title\" = 'x'\n    SQL (0.2ms)  INSERT INTO \"comments\" ...\n\n    > Comment.where( title: \"x2\" ).first_or_initialize.save\n    SQL (0.1ms)  UPDATE \"comments\" SET \"enabled\" = 'f'\n    SQL (0.2ms)  INSERT INTO \"comments\" ...\n\n    > Comment.find_or_create_by_title \"x3\"\n    SQL (0.1ms)  UPDATE \"comments\" SET \"enabled\" = 'f'\n    SQL (0.2ms)  INSERT INTO \"comments\" ...\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      },
      {
        "name": "3-2-stable",
        "url": "https://api.github.com/repos/rails/rails/labels/3-2-stable",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "e6c4fa0f699bd230ff6ba15a35ac3947",
      "avatar_url": "https://secure.gravatar.com/avatar/e6c4fa0f699bd230ff6ba15a35ac3947?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "beyond",
      "url": "https://api.github.com/users/beyond",
      "id": 68230
    },
    "closed_at": null,
    "created_at": "2012-08-19T02:25:27Z",
    "comments": 3,
    "title": "first_or_create is applying scope to callbacks.",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7391,
    "html_url": "https://github.com/rails/rails/issues/7391",
    "updated_at": "2012-08-21T23:30:38Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7391",
    "assignee": null,
    "id": 6309666
  },
  {
    "body": "\nsee\n\n  http://stackoverflow.com/questions/8539207/activerecord-loads-binary-field-incorrectly-on-heroku-fine-on-osx\n\n  https://gist.github.com/3382094\n\n  https://devcenter.heroku.com/articles/heroku-postgresql#troubleshooting\n\nto try to understand the issue this works around.\n\nessentially, under certain conditions, PGconn.unescape_bytea is returning bunk/different data.  this feature detects the situation and corrects it on the fly.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "1bac2e65d64faf472cf2ebc94f0f5ee0",
      "avatar_url": "https://secure.gravatar.com/avatar/1bac2e65d64faf472cf2ebc94f0f5ee0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "ahoward",
      "url": "https://api.github.com/users/ahoward",
      "id": 6094
    },
    "closed_at": null,
    "created_at": "2012-08-17T22:23:21Z",
    "comments": 0,
    "title": "handle freaky (heroku) bytea configurations",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7383.patch",
      "html_url": "https://github.com/rails/rails/pull/7383",
      "diff_url": "https://github.com/rails/rails/pull/7383.diff"
    },
    "number": 7383,
    "html_url": "https://github.com/rails/rails/issues/7383",
    "updated_at": "2012-08-17T22:23:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7383",
    "assignee": null,
    "id": 6300418
  },
  {
    "body": "When you add one callack in two separate `set_callback` calls - it is only called once.\n\nWhen you do it in one `set_callback` call - it is called twice.\n\nThis violates the principle of least astonishment for me. Duplicating callback is usually an error. There is a correct and obvious way to do anything without this \"feature\".\n\nIf you want to do:\n\n```ruby\nbefore_save :clear_balance, :calculate_tax, :clear_balance\n```\n\nor whatever, you should better do:\n\n```ruby\nbefore_save :carefully_calculate_tax\n\ndef carefully_calculate_tax\n  clear_balance\n  calculate_tax\n  clear_balance\nend\n```\n\nAnd this even opens gates for some advanced refactorings, unlike the first approach.\n\nMy assumptions are:\n\n- Principle of least astonishment is violated, when callbacks are either prevented from duplication, or not.\n- Duplicating callbacks is usually an error. When it is intentional -  it's a smell of a bad design and can be approached without abusing this \"feature\".\n\nMy suggestion is: do not allow duplicating callbacks in one callback call, like it is not allowed in separate callbacks call.\n\nP.S. It's currently one test on railties failing in __master__ and so in this branch __also__. It's not me!\n\n```\n 1) Failure:\ntest_0006_reload constants on development(LoadingTest) [test/application/loading_test.rb:135]:\nExpected: \"2\"\n  Actual: \"1\"\n```",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "c4486876726bcef5b87268564fc29e6c",
      "avatar_url": "https://secure.gravatar.com/avatar/c4486876726bcef5b87268564fc29e6c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "dmitriy-kiriyenko",
      "url": "https://api.github.com/users/dmitriy-kiriyenko",
      "id": 124430
    },
    "closed_at": null,
    "created_at": "2012-08-17T12:41:21Z",
    "comments": 0,
    "title": "Prevent callback from being set twice.",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7376.patch",
      "html_url": "https://github.com/rails/rails/pull/7376",
      "diff_url": "https://github.com/rails/rails/pull/7376.diff"
    },
    "number": 7376,
    "html_url": "https://github.com/rails/rails/issues/7376",
    "updated_at": "2012-08-17T12:41:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7376",
    "assignee": null,
    "id": 6288318
  },
  {
    "body": "I have the following in development.rb:\n\n```ruby\nconfig.cache_store = :null_store\n```\n\nand the following in a User class:\n\n```ruby\ndef cached_profile\n  Rails.cache.fetch(\"user_#{self.id}_profile\") { self.profile }\nend\n```\n\nWhenever the code reaches this point, I get the following error:\n\n```ruby\nno _dump_data is defined for class Proc\n```\n\nThe error goes away if I'm starting a memcached server and I change the cache_store. Why is this appearing on a dev environment? Shouldn't a cache miss be performed all the time if we specify that we're using a null_store?",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "20571f32acd27d2cf5f1b1f42ea1a75b",
      "avatar_url": "https://secure.gravatar.com/avatar/20571f32acd27d2cf5f1b1f42ea1a75b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "International",
      "url": "https://api.github.com/users/International",
      "id": 1022918
    },
    "closed_at": null,
    "created_at": "2012-08-17T10:58:38Z",
    "comments": 9,
    "title": "no _dump_data is defined for class Proc",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7375,
    "html_url": "https://github.com/rails/rails/issues/7375",
    "updated_at": "2012-09-10T03:31:46Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7375",
    "assignee": null,
    "id": 6286886
  },
  {
    "body": "Rack::Session::Cookie accepts a :secret option in its initializer. The initializer stores that secret in an instance variable and uses it in the `#set_session` method to HMAC sign the data.\n\nRack HEAD added security warnings for when the Rack::Session::Cookie middleware is initialized without a secret. \n\nThis is causing the warning to show up because of the way Rails uses Rack::Session::Cookie:\n\nRails uses a subclass of Rack::Session::Cookie called ActionDispatch::Session::CookieStore that overwrites `#set_session` and `#set_cookie` to do its own signed cookie implementation using ActionDispatch::Cookies::SignedCookieJar (using Rack env `\"action_dispatch.secret_token\"` instead of the `@secret` instance variable). Since Rails doesn't need the `@secret` instance variable, it initializes ActionDispatch::Session::CookieStore without providing a :secret option.\n\nTo avoid the warning, we should just not use Rack::Session::Cookie. We're overriding a lot of the functionality for Rack::Session::Cookie anyway, to the point that its most important functionality (cookie signing) is not being used at all.",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "139de3f8c3d6ee008cdb3abd3da23908",
      "avatar_url": "https://secure.gravatar.com/avatar/139de3f8c3d6ee008cdb3abd3da23908?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "dlee",
      "url": "https://api.github.com/users/dlee",
      "id": 7035
    },
    "closed_at": null,
    "created_at": "2012-08-16T23:24:58Z",
    "comments": 0,
    "title": "Using Rack HEAD causes CookieStore security warnings",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7372,
    "html_url": "https://github.com/rails/rails/issues/7372",
    "updated_at": "2012-08-16T23:24:58Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7372",
    "assignee": null,
    "id": 6278190
  },
  {
    "body": "Call super to nullify the reference to the original errors object in the dup'ed object (call ActiveModel::Validations#initialize_dup)",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "2b4e5507d94dc84a187d35c2884c0f3d",
      "avatar_url": "https://secure.gravatar.com/avatar/2b4e5507d94dc84a187d35c2884c0f3d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "csmuc",
      "url": "https://api.github.com/users/csmuc",
      "id": 16403
    },
    "closed_at": null,
    "created_at": "2012-08-16T21:25:35Z",
    "comments": 3,
    "title": "Dup'ed ActiveRecord objects may not share the errors object ",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7371.patch",
      "html_url": "https://github.com/rails/rails/pull/7371",
      "diff_url": "https://github.com/rails/rails/pull/7371.diff"
    },
    "number": 7371,
    "html_url": "https://github.com/rails/rails/issues/7371",
    "updated_at": "2012-08-17T20:47:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7371",
    "assignee": null,
    "id": 6275778
  },
  {
    "body": "First place lookup is now: errors.formats.attributes.#{attribute}\n\nExample use case:\n\n    errors:\n      attributes:\n        last_name:\n          blank: you must provide your full name\n      formats:\n        attributes:\n          last_name: \"%{message}\"\n\n(same fallbacks as before)",
    "milestone": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      }
    ],
    "user": {
      "gravatar_id": "d6566c8ab911742cfe124b96c44503fe",
      "avatar_url": "https://secure.gravatar.com/avatar/d6566c8ab911742cfe124b96c44503fe?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "ey-pairing",
      "url": "https://api.github.com/users/ey-pairing",
      "id": 296012
    },
    "closed_at": null,
    "created_at": "2012-08-16T18:14:39Z",
    "comments": 5,
    "title": "i18n error messages: custom formats by attribute",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7369.patch",
      "html_url": "https://github.com/rails/rails/pull/7369",
      "diff_url": "https://github.com/rails/rails/pull/7369.diff"
    },
    "number": 7369,
    "html_url": "https://github.com/rails/rails/issues/7369",
    "updated_at": "2012-08-16T18:52:10Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7369",
    "assignee": null,
    "id": 6271177
  },
  {
    "body": "This change fixes issue #3512\n\nAny suggestion on how to improve the detail definition?\n\nAlso, the test is changing global state (because it's including the Fallback module), I can change it to stub the `.fallbacks` method if you think that's better (or any other change also).\n\nThanks!",
    "milestone": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "0202412b1521743707add51b2ad34a10",
      "avatar_url": "https://secure.gravatar.com/avatar/0202412b1521743707add51b2ad34a10?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "jbarreneche",
      "url": "https://api.github.com/users/jbarreneche",
      "id": 98871
    },
    "closed_at": null,
    "created_at": "2012-08-16T18:13:19Z",
    "comments": 4,
    "title": "i18n locale fallback for localized views",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7368.patch",
      "html_url": "https://github.com/rails/rails/pull/7368",
      "diff_url": "https://github.com/rails/rails/pull/7368.diff"
    },
    "number": 7368,
    "html_url": "https://github.com/rails/rails/issues/7368",
    "updated_at": "2012-08-17T20:57:23Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7368",
    "assignee": null,
    "id": 6271144
  },
  {
    "body": "I have a relationship where a user has_many sites, i have a counter_cache on this relationship.\n\nTesting in the console with the following:\n\nuser = User.find 1\nputs user.sites.size\nputs user.sites.count\n\nWhen calling .size on the collection, it will not trigger any SQL and correctly use the users.sites_count column. However, calling collection.count does trigger a select count(*) when it is not really needed.\n\nThis may be intended I guess due to the nature of the active record query interface where all methods like order/uniq/where etc will trigger sql. Perhaps I missed some documentation somewhere, but it does seem odd to me. I had to whip through all my code making sure I'm calling .size() instead of .count() in the correct places.\n\nIn fact I may as well just always call .size() since if there is no counter_cache then it will figure it out. The only time you can't is when you are chaining an active record query together.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "4c4c3a1dea0b9b33f9c09cab404ba486",
      "avatar_url": "https://secure.gravatar.com/avatar/4c4c3a1dea0b9b33f9c09cab404ba486?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "tigris",
      "url": "https://api.github.com/users/tigris",
      "id": 26856
    },
    "closed_at": null,
    "created_at": "2012-08-16T17:36:45Z",
    "comments": 2,
    "title": "Collection.count not using counter_cache",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7367,
    "html_url": "https://github.com/rails/rails/issues/7367",
    "updated_at": "2012-08-17T16:51:15Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7367",
    "assignee": null,
    "id": 6270318
  },
  {
    "body": "This issue exists since 3.0 (a backport would be nice if it gets fixed)\n\n```Ruby\nclass Car < ActiveRecord::Base\n  scope :good, where(:id => 1)\n  scope :bad, where(:id => 2)\nend\n\n# using scopes\nCar.good.bad\nSELECT \"cars\".* FROM \"cars\" WHERE \"cars\".\"id\" = 2\n\n# using wheres\nCar.where(:id => 1).where(:id => 2)\nSELECT \"cars\".* FROM \"cars\" WHERE \"cars\".\"id\" = 1 AND \"cars\".\"id\" = 2\n```\nDoes the same for different attributes, especially annoying when you do logic like `id => [1,2,3] + id => [2,3,4]` and expect only 2 to get returned\n\n\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "59436ecd4fe6ad7c34f67654d839f05f",
      "avatar_url": "https://secure.gravatar.com/avatar/59436ecd4fe6ad7c34f67654d839f05f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "grosser",
      "url": "https://api.github.com/users/grosser",
      "id": 11367
    },
    "closed_at": null,
    "created_at": "2012-08-16T17:01:00Z",
    "comments": 1,
    "title": "scopes combine conditions on same attribute incorrectly ",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7365,
    "html_url": "https://github.com/rails/rails/issues/7365",
    "updated_at": "2012-08-26T21:55:17Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7365",
    "assignee": null,
    "id": 6269582
  },
  {
    "body": "Posted this on SO: http://stackoverflow.com/questions/11889922/rails-append-not-adding-object-to-has-many-through\n\nI'm getting weird behavior when trying to add objects via a has_many :through relationship.\n\nMy models:\n  \n    Class Player < ActiveRecord::Base\n      has_many :player_to_team_histories\n      has_many :team_histories, through: :player_to_team_histories\n    end\n    Class TeamHistory < ActiveRecord::Base\n      has_many :player_to_team_histories\n      has_many :players, through: :player_to_team_histories\n    end\n\nThe code:\n\n    >>p = Player.first\n    >>p.team_histories.count\n    0\n    >>p.team_histories.append TeamHistory.create\n    >>p.team_histories.count\n    0\n    >>p.team_histories.push TeamHistory.create\n    >>p.team_histories.count\n    1\n    >>p.team_histories << TeamHistory.create\n    >>p.team_histories.count\n    2\n\nWhy does `append` not add the newly created `TeamHistory` to the `team_histories` array?\n\nI'm using Ruby 1.9.2.\n\nThere is no documentation about the `append` method for `ActiveRecord`.  Was `append` intentionally left out?\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "1fda4e5d37f665b1b15951b91b10878f",
      "avatar_url": "https://secure.gravatar.com/avatar/1fda4e5d37f665b1b15951b91b10878f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "workmaster2n",
      "url": "https://api.github.com/users/workmaster2n",
      "id": 1417309
    },
    "closed_at": null,
    "created_at": "2012-08-16T16:56:31Z",
    "comments": 2,
    "title": "Rails append not adding object to has_many :through",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7364,
    "html_url": "https://github.com/rails/rails/issues/7364",
    "updated_at": "2012-08-19T20:31:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7364",
    "assignee": null,
    "id": 6269498
  },
  {
    "body": "Rails 3.2.8, ruby 1.9.3-p194\nLinux somename 3.2.0-29-generic #46-Ubuntu SMP Fri Jul 27 17:03:23 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux\n\n    1.9.3 (main):0 > time = Time.now\n    => 2012-08-16 12:24:01 +0400\n    1.9.3 (main):0 > time.utc.in_time_zone(ActiveSupport::TimeZone[0])\n    => Thu, 16 Aug 2012 09:24:01 WEST +01:00\n    1.9.3 (main):0 > Time.utc(time.to_i).in_time_zone(ActiveSupport::TimeZone[0])\n    => Fri, 01 Jan 1345105441 00:00:00 WET +00:00\n\n    1.9.3 (main):0 > time = Time.now\n    => 2012-08-16 12:26:39 +0400\n    1.9.3 (main):0 > zone = ::Time.find_zone!(ActiveSupport::TimeZone[0])\n    => (GMT+00:00) Casablanca\n    1.9.3 (main):0 > ActiveSupport::TimeWithZone.new(time, zone)\n    => Thu, 16 Aug 2012 13:26:39 WEST +01:00\n    1.9.3 (main):0 > ActiveSupport::TimeWithZone.new(time, zone).period\n    => #<TZInfo::TimezonePeriod: #<TZInfo::TimezoneTransitionInfo: #<TZInfo::TimeOrDateTime: 1335664800>,#<TZInfo::TimezoneOffsetInfo: 0,3600,WEST>>,#<TZInfo::TimezoneTransitionInfo: #<TZInfo::TimeOrDateTime: 1348970400>,#<TZInfo::TimezoneOffsetInfo: 0,0,WET>>>\n    1.9.3 (main):0 > zone.period_for_utc(nil)\n    => #<TZInfo::TimezonePeriod: #<TZInfo::TimezoneTransitionInfo: #<TZInfo::TimeOrDateTime: Sat, 30 Sep 1967 23:00:00 +0000>,#<TZInfo::TimezoneOffsetInfo: 0,0,WET>>,#<TZInfo::TimezoneTransitionInfo: #<TZInfo::TimeOrDateTime: 141264000>,#<TZInfo::TimezoneOffsetInfo: 0,3600,WEST>>>\n\nInpropriate order seems suspicious. The only thing working correctly for DateTime object or ActiveSupport::TimeWithZone object is:\n\n    seconds = 14400\n    not_time = Somemodel.last.measured_at\n    => Thu, 16 Aug 2012 10:10:00 UTC +00:00\n    not_time.to_time.getlocal(seconds)\n    => 2012-08-16 14:10:00 +0400\n\n",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "66bb6f8eee55156c9afbc62d178eb342",
      "avatar_url": "https://secure.gravatar.com/avatar/66bb6f8eee55156c9afbc62d178eb342?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "Antiarchitect",
      "url": "https://api.github.com/users/Antiarchitect",
      "id": 50209
    },
    "closed_at": null,
    "created_at": "2012-08-16T08:28:52Z",
    "comments": 2,
    "title": "ActiveSupport::TimeWithZone.new works incorrect.",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7361,
    "html_url": "https://github.com/rails/rails/issues/7361",
    "updated_at": "2012-08-16T10:29:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7361",
    "assignee": null,
    "id": 6259217
  },
  {
    "body": "This will omit the first divider in grouped_options_for_select (I would\nexpect a divider to go between things only).\n\nCurrently, the grouped options divider will make a select like so:\n<pre>\nPlease Select:\n-----\nUSA\nCanada\n-----\nDenmark\nUnited Kingdom\n-----\nChina\nIndia\n</pre>\nIt is more symmetric and more typical to only seperate the groups:\n<pre>\nPlease Select:\n\nUSA\nCanada\n-----\nDenmark\nUnited Kingdom\n-----\nChina\nIndia\n</pre>",
    "milestone": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "bb4976df206152ce93aad43f1eb8faa0",
      "avatar_url": "https://secure.gravatar.com/avatar/bb4976df206152ce93aad43f1eb8faa0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "evanfarrar",
      "url": "https://api.github.com/users/evanfarrar",
      "id": 7092
    },
    "closed_at": null,
    "created_at": "2012-08-16T00:37:15Z",
    "comments": 3,
    "title": "Remove leading divider from grouped_options_for_select when divider option is passed",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7360.patch",
      "html_url": "https://github.com/rails/rails/pull/7360",
      "diff_url": "https://github.com/rails/rails/pull/7360.diff"
    },
    "number": 7360,
    "html_url": "https://github.com/rails/rails/issues/7360",
    "updated_at": "2012-08-16T00:58:20Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7360",
    "assignee": null,
    "id": 6254701
  },
  {
    "body": "Date, DateTime, Time and TimeWithZone can now be compared to infinity,\n  so it's now possible to create ranges with one infinite bound and\n  date/time object as another bound.\n\n  Ex.: @range = Range.new(Date.today, Float::INFINITY)\n\nAlso it's possible to check inclusion of date/time in range with\n  conversion.\n\n  Ex.: @range.include?(Time.now + 1.year) # => true\n         @range.include?(DateTime.now + 1.year) # => true\n\nAbility to create date/time ranges with infinite bound is required\n  for handling postgresql range types.\n\nAlso it gives ability to create ranges from Time.now to Date.today + 10.years",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "ce5d1a4d26241d16575889a6f1ed4487",
      "avatar_url": "https://secure.gravatar.com/avatar/ce5d1a4d26241d16575889a6f1ed4487?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "slbug",
      "url": "https://api.github.com/users/slbug",
      "id": 108694
    },
    "closed_at": null,
    "created_at": "2012-08-14T18:34:39Z",
    "comments": 4,
    "title": "Added ability to compare date/time with infinity",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7350.patch",
      "html_url": "https://github.com/rails/rails/pull/7350",
      "diff_url": "https://github.com/rails/rails/pull/7350.diff"
    },
    "number": 7350,
    "html_url": "https://github.com/rails/rails/issues/7350",
    "updated_at": "2012-08-21T21:11:45Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7350",
    "assignee": null,
    "id": 6223527
  },
  {
    "body": "It seems logical to treat incompatibly marshaled data the same way as unsigned. This would fix issues like #2509 when class signature changes or serializer gets replaced. Motivation for changing session secret hash should not be connected to changes in implementation details of flash or session serialization.",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "8cf18195d36be3f774344820b1302c62",
      "avatar_url": "https://secure.gravatar.com/avatar/8cf18195d36be3f774344820b1302c62?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "bgipsy",
      "url": "https://api.github.com/users/bgipsy",
      "id": 90239
    },
    "closed_at": null,
    "created_at": "2012-08-14T12:03:05Z",
    "comments": 6,
    "title": "Format errors should not crash MessageVerifier",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7348.patch",
      "html_url": "https://github.com/rails/rails/pull/7348",
      "diff_url": "https://github.com/rails/rails/pull/7348.diff"
    },
    "number": 7348,
    "html_url": "https://github.com/rails/rails/issues/7348",
    "updated_at": "2012-09-04T16:19:54Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7348",
    "assignee": null,
    "id": 6214247
  },
  {
    "body": "In my app, I rely on mark_for_destruction removing records before adding new ones due to a unique index on the table. Starting with 3.2.7, the order of execution is not honored.\n\nThis commit looks to be the culprit: https://github.com/rails/rails/commit/b1e509ad7a8c8264544f10f4666705cd806b5408?w=0\n\n```ruby\n#replace fees\nreservation.reservation_fees.each(&:mark_for_destruction)\nrate[:fees].each { |fee| reservation.reservation_fees.build(fee) }\n```\n\n3.2.6\n```\n  SQL (0.5ms)  DELETE FROM \"reservation_fees\" WHERE \"reservation_fees\".\"id\" = $1  [[\"id\", 49944]]\n  SQL (0.1ms)  DELETE FROM \"reservation_fees\" WHERE \"reservation_fees\".\"id\" = $1  [[\"id\", 49943]]\n  SQL (0.1ms)  DELETE FROM \"reservation_fees\" WHERE \"reservation_fees\".\"id\" = $1  [[\"id\", 49942]]\n  SQL (0.1ms)  DELETE FROM \"reservation_fees\" WHERE \"reservation_fees\".\"id\" = $1  [[\"id\", 49941]]\n  SQL (0.1ms)  DELETE FROM \"reservation_fees\" WHERE \"reservation_fees\".\"id\" = $1  [[\"id\", 49940]]\n  SQL (1.8ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7fbc440cd480,'0.1E1',9(18)>], [\"code\", \"SHTLFE\"], [\"created_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00], [\"name\", \"Airport Shuttle Permit Fee 1.00 FLAT\"], [\"pricing\", \"flat\"], [\"quantity\", 1], [\"rate\", #<BigDecimal:7fbc440cd570,'0.1E1',9(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00]]\n  SQL (1.1ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7fbc440e3820,'0.41E1',18(18)>], [\"code\", \"STCHG\"], [\"created_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00], [\"name\", \"State Surcharge 2.05 PER DAY\"], [\"pricing\", \"per day\"], [\"quantity\", 2], [\"rate\", #<BigDecimal:7fbc440e38c0,'0.205E1',18(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00]]\n  SQL (1.1ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7fbc440ef558,'0.25E1',18(18)>], [\"code\", \"RCVR\"], [\"created_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00], [\"name\", \"License Recovery Fee 1.25 PER DAY\"], [\"pricing\", \"per day\"], [\"quantity\", 2], [\"rate\", #<BigDecimal:7fbc440ef620,'0.125E1',18(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00]]\n  SQL (1.0ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7fbc448c90a8,'0.328E1',18(18)>], [\"code\", \"APTFEE\"], [\"created_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00], [\"name\", \"Airport Access/Imposed Fee 9.29%\"], [\"pricing\", \"percent\"], [\"quantity\", 1], [\"rate\", #<BigDecimal:7fbc448c91c0,'0.929E1',18(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00]]\n  SQL (1.0ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7fbc448dd238,'0.299E1',18(18)>], [\"code\", \"STETAX\"], [\"created_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00], [\"name\", \"State Sales Tax 7.00%\"], [\"pricing\", \"percent\"], [\"quantity\", 1], [\"rate\", #<BigDecimal:7fbc448dd2d8,'0.7E1',9(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:36:33 EDT -04:00]]\n   (1.9ms)  COMMIT\n```\n3.2.7 & 3.2.8\n```\n  SQL (3.1ms)  INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"  [[\"amount\", #<BigDecimal:7f90d1a11ad0,'0.1E1',9(18)>], [\"code\", \"SHTLFE\"], [\"created_at\", Mon, 13 Aug 2012 17:26:10 EDT -04:00], [\"name\", \"Airport Shuttle Permit Fee 1.00 FLAT\"], [\"pricing\", \"flat\"], [\"quantity\", 1], [\"rate\", #<BigDecimal:7f90d1a14410,'0.1E1',9(18)>], [\"reservation_id\", 11000010], [\"updated_at\", Mon, 13 Aug 2012 17:26:10 EDT -04:00]]\nPG::Error: ERROR:  duplicate key value violates unique constraint \"index_reservation_fees_on_reservation_id_and_code\"\nDETAIL:  Key (reservation_id, code)=(11000010, SHTLFE) already exists.\n: INSERT INTO \"reservation_fees\" (\"amount\", \"code\", \"created_at\", \"name\", \"pricing\", \"quantity\", \"rate\", \"reservation_id\", \"updated_at\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING \"id\"\n   (0.1ms)  ROLLBACK\n```\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "2a9d7f2c31d4a7a011b2d24cad9e3d4f",
      "avatar_url": "https://secure.gravatar.com/avatar/2a9d7f2c31d4a7a011b2d24cad9e3d4f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "luckyruby",
      "url": "https://api.github.com/users/luckyruby",
      "id": 1135026
    },
    "closed_at": null,
    "created_at": "2012-08-13T22:26:49Z",
    "comments": 3,
    "title": "mark_for_destruction order of execution not honored",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7347,
    "html_url": "https://github.com/rails/rails/issues/7347",
    "updated_at": "2012-08-21T13:46:11Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7347",
    "assignee": null,
    "id": 6203919
  },
  {
    "body": "Due to https://github.com/rails/rails/blob/3-2-stable/activerecord/lib/active_record/railtie.rb#L80 active record will \"info\" log every time it connects to the database. This of course happens upon a rails boot. This makes it quite hard to execute a rails task with no output, since the script/task would normally boot rails then alter the log level, however due to the above line of code, there has already been \"info\" level output before we can alter it to \"warn\".\n\nThe only way I can see to do this is to create a whole separate environment for scripts to use that is still \"production\", except it has a different log level. This means a lot of duplication in configs etc, and is probably not the best idea for an environment that is not \"production\" to connect to the production database.\n\nI could just turn log_level to \"warn\" for the entire production environment, but I still want it in my web logs, just not for script output.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "4c4c3a1dea0b9b33f9c09cab404ba486",
      "avatar_url": "https://secure.gravatar.com/avatar/4c4c3a1dea0b9b33f9c09cab404ba486?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "tigris",
      "url": "https://api.github.com/users/tigris",
      "id": 26856
    },
    "closed_at": null,
    "created_at": "2012-08-13T11:24:35Z",
    "comments": 0,
    "title": "Allow booting rails under different log_level",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7346,
    "html_url": "https://github.com/rails/rails/issues/7346",
    "updated_at": "2012-08-13T11:24:35Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7346",
    "assignee": null,
    "id": 6187942
  },
  {
    "body": "@tenderlove will add rest range to this pull request later. But for now you can check and tell if i missed something :) or may be if some improvements can be done.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "ce5d1a4d26241d16575889a6f1ed4487",
      "avatar_url": "https://secure.gravatar.com/avatar/ce5d1a4d26241d16575889a6f1ed4487?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "slbug",
      "url": "https://api.github.com/users/slbug",
      "id": 108694
    },
    "closed_at": null,
    "created_at": "2012-08-13T10:57:13Z",
    "comments": 3,
    "title": "Postgresql range support",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7345.patch",
      "html_url": "https://github.com/rails/rails/pull/7345",
      "diff_url": "https://github.com/rails/rails/pull/7345.diff"
    },
    "number": 7345,
    "html_url": "https://github.com/rails/rails/issues/7345",
    "updated_at": "2012-08-16T11:56:47Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7345",
    "assignee": null,
    "id": 6187481
  },
  {
    "body": "Tested rails master branch with Oracle enhanced adapter rails4, two inverse associations test got failed as follows.\n\n```ruby\n$ ARCONN=oracle ruby -Itest test/cases/associations/inverse_associations_test.rb \nUsing oracle\nRun options: --seed 25611\n\n# Running tests:\n\n.......................FF............\n\nFinished tests in 1.242921s, 29.7686 tests/s, 117.4652 assertions/s.\n\n  1) Failure:\ntest_parent_instance_should_be_shared_with_newly_created_child(InverseHasOneTests) [test/cases/associations/inverse_associations_test.rb:133]:\nName of man should be the same after changes to parent instance.\nExpected: \"Bongo\"\n  Actual: \"Steve\"\n\n  2) Failure:\ntest_parent_instance_should_be_shared_with_newly_created_child_via_bang_method(InverseHasOneTests) [test/cases/associations/inverse_associations_test.rb:144]:\nName of man should be the same after changes to parent instance.\nExpected: \"Bongo\"\n  Actual: \"Steve\"\n\n37 tests, 146 assertions, 2 failures, 0 errors, 0 skips\n$ \n```\n\nAccording to the `git bisect` output, 42dd5d9f2976677a4bf22347f2dde1a8135dfbb4 made in #7191 is the first commit which cause these failures.\n",
    "milestone": {
      "due_on": null,
      "description": "Changes that break 3.x API.",
      "created_at": "2011-10-09T02:53:46Z",
      "title": "4.0.0",
      "state": "open",
      "closed_issues": 10,
      "number": 9,
      "open_issues": 3,
      "url": "https://api.github.com/repos/rails/rails/milestones/9",
      "id": 44893,
      "creator": {
        "gravatar_id": "24d2f8804e6bb4b7ea6bd11e0a586470",
        "avatar_url": "https://secure.gravatar.com/avatar/24d2f8804e6bb4b7ea6bd11e0a586470?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "login": "jeremy",
        "url": "https://api.github.com/users/jeremy",
        "id": 199
      }
    },
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "e2cb998e15d8e8fdef4f11a1f510fe74",
      "avatar_url": "https://secure.gravatar.com/avatar/e2cb998e15d8e8fdef4f11a1f510fe74?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "yahonda",
      "url": "https://api.github.com/users/yahonda",
      "id": 73684
    },
    "closed_at": null,
    "created_at": "2012-08-12T00:22:03Z",
    "comments": 16,
    "title": "two inverse associations test got failed with Oracle enhanced adapter",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7334,
    "html_url": "https://github.com/rails/rails/issues/7334",
    "updated_at": "2012-08-23T01:50:36Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7334",
    "assignee": null,
    "id": 6173924
  },
  {
    "body": "Given Post class:\n```\nclass Post < ActiveRecord::Base\n  has_many :comments\n\n  after_find do\n    # Any associations usage. For example:\n    self.comments.to_a\n  end\nend\n```\nCalling ```Post.includes(:comments).to_a``` will execute more then two queries (if more then one Post exist). Comments for posts will be loaded separately.\nThe reason is that ```after_initialize``` and ```after_find``` called before ([exec_queries](https://github.com/rails/rails/blob/1d46163c6d392752e2c1ac56893317d0a7d01242/activerecord/lib/active_record/relation.rb#L556), [find_by_sql](https://github.com/rails/rails/blob/1d46163c6d392752e2c1ac56893317d0a7d01242/activerecord/lib/active_record/querying.rb#L46), [instantiate](https://github.com/rails/rails/blob/1d46163c6d392752e2c1ac56893317d0a7d01242/activerecord/lib/active_record/inheritance.rb#L96) and at the end [init_with](https://github.com/rails/rails/blob/1d46163c6d392752e2c1ac56893317d0a7d01242/activerecord/lib/active_record/core.rb#L209-210)) loading associations ([lines 558 - 562](https://github.com/rails/rails/blob/1d46163c6d392752e2c1ac56893317d0a7d01242/activerecord/lib/active_record/relation.rb#L558-562)).",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "e4faab5b78bd2754387013bf8ebab06e",
      "avatar_url": "https://secure.gravatar.com/avatar/e4faab5b78bd2754387013bf8ebab06e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "roshats",
      "url": "https://api.github.com/users/roshats",
      "id": 434466
    },
    "closed_at": null,
    "created_at": "2012-08-11T18:22:49Z",
    "comments": 0,
    "title": "Using association in after_initialize and after_find breaks includes and joins",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7332,
    "html_url": "https://github.com/rails/rails/issues/7332",
    "updated_at": "2012-08-11T18:22:49Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7332",
    "assignee": null,
    "id": 6171910
  },
  {
    "body": "@tenderlove https://twitter.com/tenderlove/statuses/231807764907819008\n\nToday I looked into adding support for the postgresql geo types. Everything went well but I didn't manage to get AR to type cast pg's string representation into an array. (See the failing `base_test.rb`)\n\nGot a pointer for me?",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "64afebe5db598b0b043f35560bf940df",
      "avatar_url": "https://secure.gravatar.com/avatar/64afebe5db598b0b043f35560bf940df?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "MSch",
      "url": "https://api.github.com/users/MSch",
      "id": 7475
    },
    "closed_at": null,
    "created_at": "2012-08-10T16:01:46Z",
    "comments": 0,
    "title": "Add support for pg geometric datatypes point and box",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7324.patch",
      "html_url": "https://github.com/rails/rails/pull/7324",
      "diff_url": "https://github.com/rails/rails/pull/7324.diff"
    },
    "number": 7324,
    "html_url": "https://github.com/rails/rails/issues/7324",
    "updated_at": "2012-08-10T21:20:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7324",
    "assignee": {
      "gravatar_id": "f29327647a9cff5c69618bae420792ea",
      "avatar_url": "https://secure.gravatar.com/avatar/f29327647a9cff5c69618bae420792ea?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "tenderlove",
      "url": "https://api.github.com/users/tenderlove",
      "id": 3124
    },
    "id": 6156000
  },
  {
    "body": "If I send an email with Rails 3.2.7 this sample text will come out okay:\n\nThis isn't the only thing that doesn't work.\n\nHowever after upgrading to 3.2.8, the email comes out like this:\n\nThis isn&#x27;t the only thing that doesn&#x27;t work.\n\n",
    "milestone": {
      "due_on": null,
      "description": null,
      "created_at": "2012-08-12T00:25:49Z",
      "title": "3.2.9",
      "state": "open",
      "closed_issues": 2,
      "number": 20,
      "open_issues": 1,
      "url": "https://api.github.com/repos/rails/rails/milestones/20",
      "id": 159647,
      "creator": {
        "gravatar_id": "0525b332aafb83307b32d9747a93de03",
        "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "login": "rafaelfranca",
        "url": "https://api.github.com/users/rafaelfranca",
        "id": 47848
      }
    },
    "labels": [
      {
        "name": "regression",
        "url": "https://api.github.com/repos/rails/rails/labels/regression",
        "color": "e10c02"
      },
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      },
      {
        "name": "3-2-stable",
        "url": "https://api.github.com/repos/rails/rails/labels/3-2-stable",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "7dcd274c0876e1a8f57da36cdf3291a3",
      "avatar_url": "https://secure.gravatar.com/avatar/7dcd274c0876e1a8f57da36cdf3291a3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "allesklar",
      "url": "https://api.github.com/users/allesklar",
      "id": 4579
    },
    "closed_at": null,
    "created_at": "2012-08-10T08:26:21Z",
    "comments": 5,
    "title": "Email text encoding issue upon upgrading to 3.2.8",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7318,
    "html_url": "https://github.com/rails/rails/issues/7318",
    "updated_at": "2012-08-13T10:58:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7318",
    "assignee": null,
    "id": 6145878
  },
  {
    "body": "When you include more tags in the logging, for example:\n\n```ruby\nconfig.log_tags = [:uuid, :remote_ip]\n```\n\nThen the first log line for request looks like this:\n\n```\n[c6cbd2272812fe3417bb48f7a9bab919] [127.0.0.1] \n\nStarted POST \"/products\" for 127.0.0.1 at 2012-07-25 08:49:35 +0200\n[c6cbd2272812fe3417bb48f7a9bab919] [127.0.0.1] Processing by ProductsController#create as JSON\n```\n\nSo when you want to grep through the logs, the line \"Started ...\" does not lineup with the \"metadata\" like request uuid and ip address, because it has \\n\\n newlines in the beginning and grep does not like that.\n\nMy fix removes the two newlines.\n\nThis has also been discussed in issue https://github.com/rails/rails/issues/3697",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "4fdbb8aa3568e47391a8fd6c6760de11",
      "avatar_url": "https://secure.gravatar.com/avatar/4fdbb8aa3568e47391a8fd6c6760de11?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "alhafoudh",
      "url": "https://api.github.com/users/alhafoudh",
      "id": 43397
    },
    "closed_at": null,
    "created_at": "2012-08-10T06:10:13Z",
    "comments": 3,
    "title": "Fix newlines in rack logging",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7317.patch",
      "html_url": "https://github.com/rails/rails/pull/7317",
      "diff_url": "https://github.com/rails/rails/pull/7317.diff"
    },
    "number": 7317,
    "html_url": "https://github.com/rails/rails/issues/7317",
    "updated_at": "2012-08-26T03:58:27Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7317",
    "assignee": null,
    "id": 6144163
  },
  {
    "body": "When database.yml specifies a mysql database for use, and no mysql adapter gem is installed, rake db:create tells the user to install activerecord-mysql2-adapter.  activerecord-mysql2-adapter however is currently problematic with rails.  mysql2 gem should be recommended instead.  ",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "666876db59b0df248e03cd83412f4c26",
      "avatar_url": "https://secure.gravatar.com/avatar/666876db59b0df248e03cd83412f4c26?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "NorrinRadd",
      "url": "https://api.github.com/users/NorrinRadd",
      "id": 971294
    },
    "closed_at": null,
    "created_at": "2012-08-10T04:12:05Z",
    "comments": 7,
    "title": "rails gem recommends installing incompatible mysql adapter",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7313,
    "html_url": "https://github.com/rails/rails/issues/7313",
    "updated_at": "2012-08-12T15:25:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7313",
    "assignee": null,
    "id": 6143263
  },
  {
    "body": "Fixing a problem detailed in #7311. Not ready to pull until that discussion is resolved.",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e1e3a7a63326260b58f82d12f9003e64",
      "avatar_url": "https://secure.gravatar.com/avatar/e1e3a7a63326260b58f82d12f9003e64?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "krainboltgreene",
      "url": "https://api.github.com/users/krainboltgreene",
      "id": 334809
    },
    "closed_at": null,
    "created_at": "2012-08-10T04:11:44Z",
    "comments": 3,
    "title": "Http token parser bug",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7312.patch",
      "html_url": "https://github.com/rails/rails/pull/7312",
      "diff_url": "https://github.com/rails/rails/pull/7312.diff"
    },
    "number": 7312,
    "html_url": "https://github.com/rails/rails/issues/7312",
    "updated_at": "2012-08-14T23:13:27Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7312",
    "assignee": null,
    "id": 6143260
  },
  {
    "body": "So I've been building an API and ran into a rather unique problem: When using a token value for http authentication w/token that has a `=` character I would lose the data after and any `=` characters. This caused a significant confusion and problem.",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e1e3a7a63326260b58f82d12f9003e64",
      "avatar_url": "https://secure.gravatar.com/avatar/e1e3a7a63326260b58f82d12f9003e64?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "krainboltgreene",
      "url": "https://api.github.com/users/krainboltgreene",
      "id": 334809
    },
    "closed_at": null,
    "created_at": "2012-08-10T01:29:39Z",
    "comments": 8,
    "title": "Authentication With Token Problem",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7311,
    "html_url": "https://github.com/rails/rails/issues/7311",
    "updated_at": "2012-08-20T12:56:09Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7311",
    "assignee": null,
    "id": 6141700
  },
  {
    "body": "Hi,\n\nI created a column named `sometime` as `time` on my database.\n\nSetting the value using a string, active record do not apply the timezone, take a look:\n\n``` ruby\nuser = User.find(1)\n\nuser.sometime = '10:00'\n#=> \"10:00\"\n\nuser.sometime\n#=> 2000-01-01 10:00:00 UTC\n```\n\nBut active record do that for date time columns, take a look:\n\n``` ruby\nuser.created_at = '2000-01-01 10:00'\n#=> \"2000-01-01 10:00\"\n\nuser.created_at\n#=> Sat, 01 Jan 2000 10:00:00 BRST -02:00\n```\n\nAnother problem, the time zone is applied when I use the time object but does not de-convert on reloading object from database:\n\n``` ruby\nuser.sometime = Time.current\n#=> Thu, 09 Aug 2012 10:19:09 BRT -03:00\n\nuser.save\n#=> UPDATE \"users\" SET \"sometime\" = '2012-08-09 13:19:09.977383' ...\n\nuser.reload\n\nuser.sometime\n#=> 2000-01-01 13:19:09 UTC\n```\n\nBut, date time columns do that:\n\n``` ruby\nuser.created_at = Time.current\n#=> Thu, 09 Aug 2012 10:20:52 BRT -03:00\n\nuser.save\n#=> UPDATE \"users\" SET \"created_at\" = '2012-08-09 13:20:52.383136' ...\n\nuser.reload\n\nuser.created_at\n#=> Thu, 09 Aug 2012 10:20:52 BRT -03:00\n```\n\nMaybe I'm missing something but since it just works for date time columns, I'm guessing that's a bug.\n\nNote: I'm using active record 3.2.7 with postgresql adapter.",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "c2dc9c02ce7a041285725a4fc9e5f6d2",
      "avatar_url": "https://secure.gravatar.com/avatar/c2dc9c02ce7a041285725a4fc9e5f6d2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "sobrinho",
      "url": "https://api.github.com/users/sobrinho",
      "id": 26460
    },
    "closed_at": null,
    "created_at": "2012-08-09T13:27:35Z",
    "comments": 2,
    "title": "ActiveRecord does not apply timezone in time columns",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7301,
    "html_url": "https://github.com/rails/rails/issues/7301",
    "updated_at": "2012-08-12T04:09:31Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7301",
    "assignee": null,
    "id": 6126690
  },
  {
    "body": "Having an issue with a `ActiveSupport::TimeZone` instance returning an incorrect offset during Daylight Savings Time and I'm not sure if this is the intended behavior.\n\n```ruby\npdt = ActiveSupport::TimeZone.new(\"Pacific Time (US & Canada)\")\n\n# the time is correct\npdt.now   # => Wed, 08 Aug 2012 23:46:57 PDT -07:00\n\n# although the offset is wrong\npdt.formatted_offset  # => \"-08:00\"\npdt.utc_offset        # => 28800 (28800/3600 = 8)\n```\n\nIt looks like internally it's aware of DST but the offset methods are painting a different picture. **This is with Rails 3.2.7.**",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "fb01c0ef13af3e410b207f2aa2375693",
      "avatar_url": "https://secure.gravatar.com/avatar/fb01c0ef13af3e410b207f2aa2375693?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "Axsuul",
      "url": "https://api.github.com/users/Axsuul",
      "id": 187961
    },
    "closed_at": null,
    "created_at": "2012-08-09T07:09:13Z",
    "comments": 1,
    "title": "ActiveSupport::TimeZone gives incorrect offset during Daylight Savings Time",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7297,
    "html_url": "https://github.com/rails/rails/issues/7297",
    "updated_at": "2012-08-12T21:15:09Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7297",
    "assignee": null,
    "id": 6120796
  },
  {
    "body": "ActiveRecord::Timestamp#initialize_dup does not call super. This results in initialize_copy not being called because the call does not bubble up to Object.\n\nThis means that a user who wants special behavior when duping and ActiveRecord::Base object has to override initialize_dup and make sure to call super before doing anything.\n\nIf ActiveRecord::Timestamp called super then the common initialize_copy would be called.\n\nHaving gone through this and seeing what happens when you clone an ActiveRecord::Base object I'm not sure if this is a bug or a feature.\n\nIf it's a bug - the fix is trivial - but I think it deserves some discussion [I did some testing which is documented here: http://wp.me/p2Ddsm-11 ]",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "21b9bc8f270c2c19e3738f988c93f3c4",
      "avatar_url": "https://secure.gravatar.com/avatar/21b9bc8f270c2c19e3738f988c93f3c4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "mikehoward",
      "url": "https://api.github.com/users/mikehoward",
      "id": 639851
    },
    "closed_at": null,
    "created_at": "2012-08-08T19:31:45Z",
    "comments": 2,
    "title": "ActiveRecord::Timestamp#initialize_dup does not call super",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7291,
    "html_url": "https://github.com/rails/rails/issues/7291",
    "updated_at": "2012-08-08T23:38:51Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7291",
    "assignee": null,
    "id": 6111343
  },
  {
    "body": "In most cases, when you benchmarking something you are interested not only in average metric value, but in total metric value.\n\nThis change adds total value, along with average. \n\nBy the way: atm, nothing in rails docs saying that you will get average metric value instead of total.\n\nAlso, it will be nice to have this change in stable branch too.",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "325aaa07b35482f40220e5ec893b767c",
      "avatar_url": "https://secure.gravatar.com/avatar/325aaa07b35482f40220e5ec893b767c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "y8",
      "url": "https://api.github.com/users/y8",
      "id": 80930
    },
    "closed_at": null,
    "created_at": "2012-08-08T18:34:18Z",
    "comments": 3,
    "title": "Performance testing: add total value of metric",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7290.patch",
      "html_url": "https://github.com/rails/rails/pull/7290",
      "diff_url": "https://github.com/rails/rails/pull/7290.diff"
    },
    "number": 7290,
    "html_url": "https://github.com/rails/rails/issues/7290",
    "updated_at": "2012-08-22T21:19:18Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7290",
    "assignee": null,
    "id": 6109949
  },
  {
    "body": "While upgrading a Rails 3.0 app to 3.2, I had the following deprecation warning appear in my console during test runs:\n`DEPRECATION WARNING: Passing the format in the template name is deprecated. Please pass render with :formats => [:html] instead. (called from realtime at /Users/edward/.rbenv/versions/1.9.3-p125-perf/lib/ruby/1.9.1/benchmark.rb:295`\n\nUnfortunately, this doesn’t help me find where in my app the deprecated code is so that I can fix it.\n\nIs there a way to provide the file and line number in the deprecation notification?",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "83a4ac21377f0939f0ccc3b6db7a9bd1",
      "avatar_url": "https://secure.gravatar.com/avatar/83a4ac21377f0939f0ccc3b6db7a9bd1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "edward",
      "url": "https://api.github.com/users/edward",
      "id": 325
    },
    "closed_at": null,
    "created_at": "2012-08-08T15:39:25Z",
    "comments": 8,
    "title": "Deprecation warning provides no context",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7288,
    "html_url": "https://github.com/rails/rails/issues/7288",
    "updated_at": "2012-08-12T20:47:57Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7288",
    "assignee": null,
    "id": 6105803
  },
  {
    "body": "When nil or empty string are not allowed, they are not valid.",
    "milestone": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      }
    ],
    "user": {
      "gravatar_id": "891bcc82e560d7918fe68611dc72f3dd",
      "avatar_url": "https://secure.gravatar.com/avatar/891bcc82e560d7918fe68611dc72f3dd?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "xHire",
      "url": "https://api.github.com/users/xHire",
      "id": 24714
    },
    "closed_at": null,
    "created_at": "2012-08-07T11:55:35Z",
    "comments": 0,
    "title": "Length validation handles correctly nil. Fix #7180",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7282.patch",
      "html_url": "https://github.com/rails/rails/pull/7282",
      "diff_url": "https://github.com/rails/rails/pull/7282.diff"
    },
    "number": 7282,
    "html_url": "https://github.com/rails/rails/issues/7282",
    "updated_at": "2012-08-07T11:55:35Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7282",
    "assignee": null,
    "id": 6074272
  },
  {
    "body": "Reversible migrations are very cool.\n\nSome commands are not reversible, for example the removal of a table or a column.\n\nAlso, one downside is that it is now more difficult to write the reverse of a migration if `change` is used. When `up` and `down` were used, one could simply swap the code around.\n\nThese commits introduce `Migration#revert` that makes it trivial to revert a past migration, in part or in whole, or do a reversible removal of a table/column.\n\nNote that `revert` can even be called from legacy migrations using `up` & `down` and that it can revert legacy-style migrations too. For anyone changing their mind every second day, `revert` is fully nestable.\n\nTo have complete revertible capability, I would like to introduce a modified syntax for `change_column` that would allow it to be revertible; pull request upcoming when I get a chance...\n\nHere's what the rdoc looks like:\n\n---\n\nReverses the migration commands for the given block and the given migrations.\n\nThe following migration will remove the table 'horses' and create the table 'apples' on the way up, and the reverse on the way down.\n\n    class FixTLMigration < ActiveRecord::Migration\n      def change\n        revert do\n          create_table(:horses) do |t|\n            t.text :content\n            t.datetime :remind_at\n          end\n        end\n        create_table(:apples) do |t|\n          t.string :variety\n        end\n      end\n    end\n\nOr equivalently, if `TenderloveMigration` is defined as in the\ndocumentation for Migration:\n\n    class FixupTLMigration < ActiveRecord::Migration\n      def change\n        revert TenderloveMigration\n\n        create_table(:apples) do |t|\n          t.string :variety\n        end\n      end\n    end\n\nThis command can be nested.\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b06d8e26b92456b228d3c77b66397534",
      "avatar_url": "https://secure.gravatar.com/avatar/b06d8e26b92456b228d3c77b66397534?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "marcandre",
      "url": "https://api.github.com/users/marcandre",
      "id": 33770
    },
    "closed_at": null,
    "created_at": "2012-08-07T05:14:21Z",
    "comments": 11,
    "title": "Migration revert",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7280.patch",
      "html_url": "https://github.com/rails/rails/pull/7280",
      "diff_url": "https://github.com/rails/rails/pull/7280.diff"
    },
    "number": 7280,
    "html_url": "https://github.com/rails/rails/issues/7280",
    "updated_at": "2012-08-15T20:53:40Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7280",
    "assignee": null,
    "id": 6068566
  },
  {
    "body": "This allows you to specify the model in a `belongs_to` relationship instead of the foreign key when querying. It does this by looking up the correct foreign key on the association, and changing the column to use that key when appropriate. It came out of a discussion in issue #1736 that seemed to have some interest.\n\nThe following queries are now equivalent:\n\n```ruby\nPost.where(:author_id => Author.first)\nPost.where(:author => Author.first)\n```\n\nI also think it makes it more consistent with `has_many` queries where the relationship and query key are both plural:\n\n```ruby\nposts = Post.containing_the_letter_a.limit(5)\nAuthor.where(:posts => posts)\n```",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "45b75f9f866d240362c0d7fa125025ba",
      "avatar_url": "https://secure.gravatar.com/avatar/45b75f9f866d240362c0d7fa125025ba?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "beerlington",
      "url": "https://api.github.com/users/beerlington",
      "id": 77580
    },
    "closed_at": null,
    "created_at": "2012-08-06T01:01:39Z",
    "comments": 16,
    "title": "Convert model name to foreign key in queries",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7273.patch",
      "html_url": "https://github.com/rails/rails/pull/7273",
      "diff_url": "https://github.com/rails/rails/pull/7273.diff"
    },
    "number": 7273,
    "html_url": "https://github.com/rails/rails/issues/7273",
    "updated_at": "2012-09-09T14:23:41Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7273",
    "assignee": null,
    "id": 6041238
  },
  {
    "body": "I don't know if this is related to #7174, #7175 or #7227 however with 3.2.8.rc2 I still have problems with it setting environment when it comes to rake spec.  I can do `RAILS_ENV=test rake db:migrate` just fine which shows that my database is accessible, I can run rspec just fine, I can also use guard w/spork and it still work just fine, however with rake spec it fails no matter what, even if I do `ENV['RAILS_ENV']= 'test'` in my spec_helper.rb, even if I do `RAILS_ENV=test rake spec` or anything... it fails.\n\n    #~ RAILS_ENV=test rake db:migrate\n    ==  CreateEnvygeeks: migrating ================================================\n    # Migration info goes here, removed for no reason other then not needed.\n\n    #~ RAILS_ENV=test rails c\n    Loading test environment (Rails 3.2.8.rc2)\n    [1] pry(main)> User.all\n    #=> User Load (73.8ms)  SELECT \"users\".* FROM \"users\" \n    #=> []\n\n    [1] pry(main)> ActiveRecord::Base.connection.current_database\n    #=> (132.7ms)  select current_database()\n    #=> \"f72e\"\n\n    [2] pry(main)> ENV['WESTAMZ_ENVYGEEKS7_POSTGRES_DATABASE']\n    #=> \"f72e\"\n\n    #~ cat config/database.yml\n    test:\n      adapter: postgresql\n      encoding: unicode\n      pool: 5\n      database: <%= ENV['WESTAMZ_ENVYGEEKS7_POSTGRES_DATABASE'] %>\n      username: <%= ENV['WESTAMZ_ENVYGEEKS7_POSTGRES_USERNAME'] %>\n      password: <%= ENV['WESTAMZ_ENVYGEEKS7_POSTGRES_PASSWORD'] %>\n      host: <%= ENV['WESTAMZ_ENVYGEEKS7_POSTGRES_HOSTNAME'] %>\n      port: 5432\n\n    #~ rake spec\n    ** Invoke spec (first_time)\n    ** Invoke db:test:prepare (first_time)\n    ** Invoke db:abort_if_pending_migrations (first_time) \n    ** Invoke environment (first_time)\n    ** Execute environment\n    ** Invoke db:load_config (first_time)\n    ** Execute db:load_config\n    ** Execute db:abort_if_pending_migrations\n    ** Execute db:test:prepare\n    ** Invoke db:test:load (first_time)\n    ** Invoke db:test:purge (first_time)\n    ** Invoke environment\n    ** Invoke db:load_config\n    ** Execute db:test:purge\n    rake aborted!\n    FATAL:  permission denied for database \"postgres\"\n    DETAIL:  User does not have CONNECT privilege.\n    /home/jordon/.rvm/gems/ruby-1.9.3-p194@envygeeks/gems/activerecord-3.2.8.rc2/lib/active_record/connection_adapters/postgresql_adapter.rb:1213:in `initialize'",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "37bf689f37c69732158e782020db84f9",
      "avatar_url": "https://secure.gravatar.com/avatar/37bf689f37c69732158e782020db84f9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "envygeeks",
      "url": "https://api.github.com/users/envygeeks",
      "id": 99763
    },
    "closed_at": null,
    "created_at": "2012-08-05T16:08:52Z",
    "comments": 8,
    "title": "Rails env = test possibly still not being set properly in 3.2.8.rc2?",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7271,
    "html_url": "https://github.com/rails/rails/issues/7271",
    "updated_at": "2012-08-07T14:06:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7271",
    "assignee": null,
    "id": 6038031
  },
  {
    "body": "Hi.\nI have found a bug that has_many dependant destroy don't destroy all child records.\n\n```ruby\nclass Post < ActiveRecord::Base\n  has_many :comments, :dependent => :destroy\nend\n\nclass Comment < ActiveRecord::Base\n  belongs_to :post\n  before_destroy do\n    false\n  end\nend\n\npost = Post.create(title: \"new post\")\npost.comments << Comment.create(body: \"hello\")\npost.destroy\np Post.all #=> []\np Comment.all #=> [#<Comment id: 980190963, body: \"hello\", post_id: 980190963, created_at: \"2012-08-05 10:31:37\", updated_at: \"2012-08-05 10:31:37\">]\n```\n\nI add a judge all records is deleted into has_many dependent callback.\n\nThanks.\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "aa452bc2667982dabd920ce1af0d8710",
      "avatar_url": "https://secure.gravatar.com/avatar/aa452bc2667982dabd920ce1af0d8710?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "yalab",
      "url": "https://api.github.com/users/yalab",
      "id": 64558
    },
    "closed_at": null,
    "created_at": "2012-08-05T10:48:10Z",
    "comments": 7,
    "title": "Fix a bug that has_many dependent: destroy not delete child records ",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7267.patch",
      "html_url": "https://github.com/rails/rails/pull/7267",
      "diff_url": "https://github.com/rails/rails/pull/7267.diff"
    },
    "number": 7267,
    "html_url": "https://github.com/rails/rails/issues/7267",
    "updated_at": "2012-08-27T15:16:31Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7267",
    "assignee": null,
    "id": 6036098
  },
  {
    "body": "According to documentation you should be able to pass something like this as a collection:\n\n```ruby\n  options_for_select([ \"Denmark\", [\"USA\", {:class => 'bold'}], \"Sweden\" ], [\"USA\", \"Sweden\"])\n````\n\nand get this HTML\n\n```html\n    <option value=\"Denmark\">Denmark</option>\n    <option value=\"USA\" class=\"bold\" selected=\"selected\">USA</option>\n    <option value=\"Sweden\" selected=\"selected\">Sweden</option>\n```\n\n> copy from actionpack/lib/action_view/helpers/form_options_helper.rb line 308\n\nbut when you do it from collection_select the :value_method by default is :last\nthis commit fix it and re-enable the html option for option tag\n\ncoauthored by [fedesoria](https://github.com/fedesoria) - [ovargas27](https://github.com/ovargas27)",
    "milestone": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "433031df4018635dfb177f4066c37a3b",
      "avatar_url": "https://secure.gravatar.com/avatar/433031df4018635dfb177f4066c37a3b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "ovargas27",
      "url": "https://api.github.com/users/ovargas27",
      "id": 128294
    },
    "closed_at": null,
    "created_at": "2012-08-04T20:51:19Z",
    "comments": 1,
    "title": "Allow html options on option tag",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7264.patch",
      "html_url": "https://github.com/rails/rails/pull/7264",
      "diff_url": "https://github.com/rails/rails/pull/7264.diff"
    },
    "number": 7264,
    "html_url": "https://github.com/rails/rails/issues/7264",
    "updated_at": "2012-08-04T20:59:54Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7264",
    "assignee": null,
    "id": 6032744
  },
  {
    "body": "Using jruby 1.7, Windows 7, Rails 3.2.6\n\nWhen using   config.reload_classes_only_on_change = true the checking of whether to reload a class takes a long time. This is likely as much a windows Issue as it is a Rails Issues, however it may be feasible to work around the issue. \n\nThe Issue:\n\nOn each request, including simple image requests, the file structure is scanned to see if any files have been added or updated. This scan is very slow on Windows. It is fine on the Mac and Linux. \n\nThe following line takes about 1/2 second per call with only about 10 folders in the list. \n\nhttps://github.com/rails/rails/blob/3-2-stable/activesupport/lib/active_support/file_update_checker.rb#L99\n\n```\n    def updated_at #:nodoc:\n      @updated_at || begin\n        all = []\n        all.concat @files.select { |f| File.exists?(f) }\n        all.concat Dir[@glob] if @glob     #THIS LINE IS VERY SLOW\n        all.map { |path| File.mtime(path) }.max || Time.at(0)\n      end\n    end\n```\n\nA possible solution is to cache the folders and only update them to include new files after a few seconds have elapsed. This code is possibly not thread safe, I am just providing it for an example. A single request that loads 20 images will now take a second or two to load instead of 10 seconds. \n\n```\n    def initialize(files, dirs={}, &block)\n      @files = files\n      @glob  = compile_glob(dirs)\n      @block = block\n      @updated_at = nil\n      @last_update_at = updated_at\n      @check_new_at = Time.now + 5.seconds\n      @dir_cache = Dir[@glob] if @glob\n    end\n\n    def updated_at #:nodoc:\n      @updated_at || begin\n        all = []\n        all.concat @files.select { |f| File.exists?(f) }\n        if !@check_new_at.nil? && Time.now > @check_new_at\n          @dir_cache = Dir[@glob] if @glob\n          @check_new_at = Time.now + 5.seconds\n        end\n        all.concat @dir_cache if @dir_cache\n        finish = Time.now\n        all.map { |path| File.mtime(path) }.max || Time.at(0)\n      end     \n    end\n\n```\nOnce you have the file list (with only 113 file in it on my project) then it is very fast to actually check the file timestamps for changes. \n\nOther comments:\n\nThis is about 4 times worse on JRUBY 1.7 than JRUBY 1.6 for me. It is probably related to bug: \nhttp://jira.codehaus.org/browse/JRUBY-6803?page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel\n\nIf you precompile your assets the problem goes away, but then you have to recompile them when doing development in the view all the time. \n\nOn the mac this code is being executed for every image too, it is just that the problem is less severe as it is about 10 times faster. By using this fix the speed is still considerably improved. \n\nAnother possibility for my project is to reduce the number of assets by using image strips/sprite sheets. I'll look into this too.\n\n\n\n",
    "milestone": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "cf68437477bc7ff6b62db027b65745a8",
      "avatar_url": "https://secure.gravatar.com/avatar/cf68437477bc7ff6b62db027b65745a8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "simonjsmithuk",
      "url": "https://api.github.com/users/simonjsmithuk",
      "id": 1372168
    },
    "closed_at": null,
    "created_at": "2012-08-03T17:22:44Z",
    "comments": 0,
    "title": "Rails 3.2.6 caching is inefficient on Windows ",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7254,
    "html_url": "https://github.com/rails/rails/issues/7254",
    "updated_at": "2012-08-03T17:22:44Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7254",
    "assignee": null,
    "id": 6019428
  },
  {
    "body": "This integrate strong_parameters plugin in Rails core and remove attr_accessible/attr_protected.",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      },
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      },
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "73d57855a3bfe5c534596197a895ab6e",
      "avatar_url": "https://secure.gravatar.com/avatar/73d57855a3bfe5c534596197a895ab6e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "guilleiguaran",
      "url": "https://api.github.com/users/guilleiguaran",
      "id": 160941
    },
    "closed_at": null,
    "created_at": "2012-08-03T14:12:03Z",
    "comments": 14,
    "title": "Integrate strong_parameters in Rails 4",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7251.patch",
      "html_url": "https://github.com/rails/rails/pull/7251",
      "diff_url": "https://github.com/rails/rails/pull/7251.diff"
    },
    "number": 7251,
    "html_url": "https://github.com/rails/rails/issues/7251",
    "updated_at": "2012-09-10T07:29:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7251",
    "assignee": null,
    "id": 6015551
  },
  {
    "body": "please see workaround https://github.com/svenfuchs/routing-filter/pull/40\nthe above pull request escapes the weird values in Mime::EXTENSION_LOOKUP when reading the contents of Mime::EXTENSION_LOOKUP. Ideally they should not be present at all, or at least values should be escaped when added to the EXTENSION_LOOKUP Hash in actionpack-2.3.14/lib/action_controller/mime_type.rb:85\n \nInterested to hear your thoughts.",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "8a3b6bb059d74617e891873bd4f0517c",
      "avatar_url": "https://secure.gravatar.com/avatar/8a3b6bb059d74617e891873bd4f0517c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "debreczeni",
      "url": "https://api.github.com/users/debreczeni",
      "id": 586785
    },
    "closed_at": null,
    "created_at": "2012-08-03T12:00:38Z",
    "comments": 2,
    "title": "Weird unescaped values in Mime type lookup",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7248,
    "html_url": "https://github.com/rails/rails/issues/7248",
    "updated_at": "2012-08-05T08:12:37Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7248",
    "assignee": null,
    "id": 6013267
  },
  {
    "body": "This is a reopen of #618 (import of https://rails.lighthouseapp.com/projects/8994/tickets/2646)\n\nI am just upgrading my rails app to rails 3.2 and I have just discovered that the workaround suggested by Matt Jones:\n```ruby\n    if value.reject { |v| v.marked_for_destruction? }.size < 1\n```\nIs still needed...\n\nThere are patches (for tests) that demonstrates the problem...",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "968fba3ba6e5df2df68a458218be7104",
      "avatar_url": "https://secure.gravatar.com/avatar/968fba3ba6e5df2df68a458218be7104?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "jarl-dk",
      "url": "https://api.github.com/users/jarl-dk",
      "id": 191521
    },
    "closed_at": null,
    "created_at": "2012-08-03T08:45:34Z",
    "comments": 13,
    "title": "validations not called when model updating using nested attributes",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7247,
    "html_url": "https://github.com/rails/rails/issues/7247",
    "updated_at": "2012-09-02T14:43:37Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7247",
    "assignee": null,
    "id": 6010383
  },
  {
    "body": "Due to caching, `ActiveSupport::TimeZone.all` returns different results if a non-ActiveSupport-supported zone was looked up first. \n\n````\nActiveSupport::TimeZone.all\n# not in ActiveSupport::TimeZone::MAPPING, but still a valid zone\nchicago = ActiveSupport::TimeZone['America/Chicago']\nActiveSupport::TimeZone.all.include?(chicago)\n=> false\n````\n\n````\nchicago = ActiveSupport::TimeZone['America/Chicago']\nActiveSupport::TimeZone.all.include?(chicago)\n=> true\n````\n\nThis affects `time_zone_options_for_select`, in that the `selected` arg of that function is a string matched to the names of zones in `ActiveSupport::TimeZone.all`. If your app stores timezones in TZInfo format, the helper may not generate an option tag for a recognized zone.\n\nI see two ways around this:\n1. Change the helper to recognize TZInfo identifiers\n2. Update the zones cache when lazy-loading time zones.\n\nChanging the helper might unintentionally change your data (\"America/Chicago\" would get converted to \"Central Time\"). It seems like Rails is opinionated about what zones it wants to use, so that might not be a big deal. The second approach avoids that problem, but still requires you to look up the alternate zone before it shows up in the list.\n\nThoughts?",
    "milestone": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "07b2f492576e74e01dbe801cec562074",
      "avatar_url": "https://secure.gravatar.com/avatar/07b2f492576e74e01dbe801cec562074?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "wonnage",
      "url": "https://api.github.com/users/wonnage",
      "id": 125177
    },
    "closed_at": null,
    "created_at": "2012-08-03T01:20:57Z",
    "comments": 1,
    "title": "Inconsistent output from ActiveSupport::TimeZone.all",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7245,
    "html_url": "https://github.com/rails/rails/issues/7245",
    "updated_at": "2012-08-26T20:14:47Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7245",
    "assignee": null,
    "id": 6006282
  },
  {
    "body": "Given an ActiveRecord model like:\n\n    class Topic < ActiveRecord::Base\n      def empty?\n         true # actual implementation may be on stories in topic or similar\n      end\n    end\n\nCalling a method like find_by_name(\"A topic\") will successfully return the topic, whereas the bang version, find_by_name!(\"A topic\"), will raise a RecordNotFound exception. This is due to find_by_attributes checking result.blank? instead of result.nil?",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "11364e09c2ea04444314e94eead06e98",
      "avatar_url": "https://secure.gravatar.com/avatar/11364e09c2ea04444314e94eead06e98?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "knaveofdiamonds",
      "url": "https://api.github.com/users/knaveofdiamonds",
      "id": 11308
    },
    "closed_at": null,
    "created_at": "2012-08-02T15:46:38Z",
    "comments": 2,
    "title": "find_by_ bang methods break if the model has an empty? method on Rails 3-2-x",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7238,
    "html_url": "https://github.com/rails/rails/issues/7238",
    "updated_at": "2012-08-02T15:59:09Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7238",
    "assignee": null,
    "id": 5995271
  },
  {
    "body": "was crashing under puma, needed to ensure we always get an ip even if we are being served over a unix sock where remote_addr is empty",
    "milestone": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "3dcae8378d46c244172a115c28ca49ce",
      "avatar_url": "https://secure.gravatar.com/avatar/3dcae8378d46c244172a115c28ca49ce?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "SamSaffron",
      "url": "https://api.github.com/users/SamSaffron",
      "id": 5213
    },
    "closed_at": null,
    "created_at": "2012-08-02T08:43:55Z",
    "comments": 1,
    "title": "remote_ip was failing under unix socks (puma)",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7234.patch",
      "html_url": "https://github.com/rails/rails/pull/7234",
      "diff_url": "https://github.com/rails/rails/pull/7234.diff"
    },
    "number": 7234,
    "html_url": "https://github.com/rails/rails/issues/7234",
    "updated_at": "2012-08-02T11:36:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7234",
    "assignee": null,
    "id": 5987396
  },
  {
    "body": "I have 2 models like the following\n\n\n    Class Post  \n      has_many :comments, :dependent => :destroy \n    end  \n\n    Class Comment  \n      validates_presence_of :post\n      validates_presence_of :comment\n      belongs_to :post  \n    end  \n  \nIn Comments controller,\n\n    def create\n      comment = @post.comments.new(params[:comment])\n      if comment.save\n        // some code\n      else\n        // some code\n      end\n    end\n\n\nroutes.rb\n\n    resources :posts\n\n    resources :posts do\n        resources :comments\n    end\n    \n    resources :comments\n\n\n\nWhen the comment is invalid as per the validation, the comment is not saved. But when the @post object is accessed in the view, it contains a comment object with nil id. This did not happen in Rails 2.3.11. We are upgraded to Rails 3.1 and then now to Rails 3.2. This comment object with nil id disappears when I do @post.reload. \n\nI tried to interchange build and new methods. It had the same result as build. Is it the expected behavior or is any of my gems or plugins creating this issue?",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "5e146b951812217810e32cc5468399e8",
      "avatar_url": "https://secure.gravatar.com/avatar/5e146b951812217810e32cc5468399e8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "arunn",
      "url": "https://api.github.com/users/arunn",
      "id": 389262
    },
    "closed_at": null,
    "created_at": "2012-08-01T18:28:52Z",
    "comments": 0,
    "title": "build_association method does not rollback parent correctly if child fails to save",
    "state": "open",
    "pull_request": {
      "patch_url": null,
      "html_url": null,
      "diff_url": null
    },
    "number": 7229,
    "html_url": "https://github.com/rails/rails/issues/7229",
    "updated_at": "2012-08-01T18:28:52Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7229",
    "assignee": null,
    "id": 5974887
  },
  {
    "body": "All klass.connection and @klass.connection are now just connection, which is delegated to klass. Tests are passing. find_by_sql and count_by_sql are AR::Relation methods.\n\nThis should fully fix #6331.\n\nThis patch will also give an opportunity to implement something like:\n\nPost.connection(external_database).all\n\n\n",
    "milestone": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "2a3e5e19a0d90edfd4eb094385f6617a",
      "avatar_url": "https://secure.gravatar.com/avatar/2a3e5e19a0d90edfd4eb094385f6617a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "login": "kot-begemot",
      "url": "https://api.github.com/users/kot-begemot",
      "id": 780077
    },
    "closed_at": null,
    "created_at": "2012-08-01T11:09:17Z",
    "comments": 2,
    "title": "ActiveRecord::Relation select problem",
    "state": "open",
    "pull_request": {
      "patch_url": "https://github.com/rails/rails/pull/7221.patch",
      "html_url": "https://github.com/rails/rails/pull/7221",
      "diff_url": "https://github.com/rails/rails/pull/7221.diff"
    },
    "number": 7221,
    "html_url": "https://github.com/rails/rails/issues/7221",
    "updated_at": "2012-08-01T16:31:08Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7221",
    "assignee": null,
    "id": 5965522
  }
]
}
