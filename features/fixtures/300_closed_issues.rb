#encoding: utf-8

CLOSED_ISSUES_PAGE_1 = %q{
[
  {
    "body": "```\nHey. Where is a suicide booth?\n```\nfrom 3012 with love\n\nYou should check it ... #5228 :trollface:",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2881b5d4c082996a62f23055b61956d",
      "login": "homakov",
      "avatar_url": "https://secure.gravatar.com/avatar/d2881b5d4c082996a62f23055b61956d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/homakov",
      "id": 174693
    },
    "closed_at": "2012-03-02T11:49:16Z",
    "created_at": "3012-03-02T14:10:15Z",
    "comments": 39,
    "title": "I'm Bender from Future.",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 5239,
    "updated_at": "2012-06-24T03:34:28Z",
    "html_url": "https://github.com/rails/rails/issues/5239",
    "url": "https://api.github.com/repos/rails/rails/issues/5239",
    "id": 3472593
  },
  {
    "body": "When generating a vanilla rails application (disabling javascript, sprockets, test-unit and active-record), `rails new` fails to generate a working application:\n\n1) running `rails new vanilla_app --skip-active-record --skip-sprockets --skip-javascript --skip-test-unit --edge --skip-bundle` generates the project in https://github.com/jarl-dk/vanilla_app/tree/ea6e30a072d61cc1a01d04b77469010d229d57af\n\n`cd`ing into `vanilla_app`, then `bundle install` pukes with\n\n    Bundler could not find compatible versions for gem \"journey\":\n      In Gemfile:\n        rails (>= 0) ruby depends on\n          journey (~> 1.0.4) ruby\n\n        journey (2.0.0.20120723141804)\n\n2) After [fixing that](https://github.com/jarl-dk/vanilla_app/commit/0a68a4452ebf4d647925182facdf4a9f1007969e) I have this project https://github.com/jarl-dk/vanilla_app/tree/0a68a4452ebf4d647925182facdf4a9f1007969e\n\nWhen running `bundle exec ./script/rails server` and visit http://localhost:3000/ The console pukes with\n\n    ActionController::RoutingError (No route matches [GET] \"/assets/rails.png\"):\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "968fba3ba6e5df2df68a458218be7104",
      "login": "jarl-dk",
      "avatar_url": "https://secure.gravatar.com/avatar/968fba3ba6e5df2df68a458218be7104?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jarl-dk",
      "id": 191521
    },
    "closed_at": "2012-09-11T07:03:25Z",
    "created_at": "2012-09-11T06:58:34Z",
    "comments": 1,
    "title": "`rails new` (Rails 3.2.8) fails to generate a working application",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7596,
    "updated_at": "2012-09-11T07:03:25Z",
    "html_url": "https://github.com/rails/rails/issues/7596",
    "url": "https://api.github.com/repos/rails/rails/issues/7596",
    "id": 6782622
  },
  {
    "body": "This handler simply allows arbitrary Ruby code as a template",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "73d57855a3bfe5c534596197a895ab6e",
      "login": "guilleiguaran",
      "avatar_url": "https://secure.gravatar.com/avatar/73d57855a3bfe5c534596197a895ab6e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guilleiguaran",
      "id": 160941
    },
    "closed_at": "2012-09-11T06:20:13Z",
    "created_at": "2012-09-11T06:18:37Z",
    "comments": 0,
    "title": "Add .rb template handler",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7594.diff",
      "patch_url": "https://github.com/rails/rails/pull/7594.patch",
      "html_url": "https://github.com/rails/rails/pull/7594"
    },
    "number": 7594,
    "updated_at": "2012-09-11T06:20:13Z",
    "html_url": "https://github.com/rails/rails/issues/7594",
    "url": "https://api.github.com/repos/rails/rails/issues/7594",
    "id": 6782108
  },
  {
    "body": "This reverts commit ca80067bbe4662c60b933188ad3769605742e812.\nEntry already added in 895233",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-09-10T19:03:33Z",
    "created_at": "2012-09-10T18:59:52Z",
    "comments": 3,
    "title": "Revert \"Changelog entry for PR #7560\"",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7592.diff",
      "patch_url": "https://github.com/rails/rails/pull/7592.patch",
      "html_url": "https://github.com/rails/rails/pull/7592"
    },
    "number": 7592,
    "updated_at": "2012-09-10T19:03:42Z",
    "html_url": "https://github.com/rails/rails/issues/7592",
    "url": "https://api.github.com/repos/rails/rails/issues/7592",
    "id": 6770859
  },
  {
    "body": "cc @josevalim",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-09-10T18:42:08Z",
    "created_at": "2012-09-10T18:39:31Z",
    "comments": 1,
    "title": "Changelog entry for PR #7560",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7591.diff",
      "patch_url": "https://github.com/rails/rails/pull/7591.patch",
      "html_url": "https://github.com/rails/rails/pull/7591"
    },
    "number": 7591,
    "updated_at": "2012-09-10T18:45:01Z",
    "html_url": "https://github.com/rails/rails/issues/7591",
    "url": "https://api.github.com/repos/rails/rails/issues/7591",
    "id": 6770172
  },
  {
    "body": "Current realization refactored because there's no sense to capture output in quiet block.\n\nI added commented block in code with my thoughts about this. Since rake task should be always invoked successfully we can check exit status and show to user original error instead of showing \"Probably you didn't install JavaScript runtime\". I'd like to use capture(:stderr) but it's not impossible because it doesn't reopen $std{out,err} and just reassigns it, that does impossible to capture subprocesses.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "login": "route",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": "2012-09-10T21:15:09Z",
    "created_at": "2012-09-10T13:42:51Z",
    "comments": 4,
    "title": "Rake assets:precompile shouldn't fail quietly.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7586.diff",
      "patch_url": "https://github.com/rails/rails/pull/7586.patch",
      "html_url": "https://github.com/rails/rails/pull/7586"
    },
    "number": 7586,
    "updated_at": "2012-09-10T21:15:09Z",
    "html_url": "https://github.com/rails/rails/issues/7586",
    "url": "https://api.github.com/repos/rails/rails/issues/7586",
    "id": 6762185
  },
  {
    "body": "I am getting different SQL queries depending on whether I am returning the format via HTML or JS. The normal HTML rails query works fine:\n@objects = Object.select(\"objects.*, MAX(votes.updated_at) AS mv\").joins(:votes).group(\"objects.id\").order(\"mv DESC\").includes(:categories)\n\nThe translated sql is: \nSELECT objects.*, MAX(votes.updated_at) AS mv FROM \"objects\" INNER JOIN \"votes\" ON \"votes\".\"object_id\" = \"objects\".\"id\" GROUP BY objects.id ORDER BY mv DESC\n\nHowever, when I update this call via ajax and have the controller return with JS instead of HTML. The exact same rails SQL query:\n@objects = Object.select(\"objects.*, MAX(votes.updated_at) AS mv\").joins(:votes).group(\"objects.id\").order(\"mv DESC\").includes(:categories)\n\nNow the translated sql is:\nSELECT COUNT(*) AS count_all, objects.id AS objects_id FROM \"objects\" INNER JOIN \"votes\" ON \"votes\".\"object_id\" = \"objects\".\"id\" GROUP BY objects.id ORDER BY mv DESC\n\nEssentially it ignores everything in the SELECT() rails command and replaces it with:\nCOUNT(*) AS count_all, objects.id AS objects_id\n\nWhen I change:\n    respond_to do |format|\n      #format.html\n      format.js\n    end\n\nto\n    respond_to do |format|\n      format.html\n      format.js\n    end\n\nit again calls it correctly when not accessed through JS pathway. Rails 3.2.0 . Any ideas?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "44cac601f767238041653873c2eeda40",
      "login": "mtobias",
      "avatar_url": "https://secure.gravatar.com/avatar/44cac601f767238041653873c2eeda40?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/mtobias",
      "id": 543786
    },
    "closed_at": "2012-09-10T15:16:23Z",
    "created_at": "2012-09-09T20:06:12Z",
    "comments": 5,
    "title": "ignoring js postgres database call with select()",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7583,
    "updated_at": "2012-09-10T19:09:12Z",
    "html_url": "https://github.com/rails/rails/issues/7583",
    "url": "https://api.github.com/repos/rails/rails/issues/7583",
    "id": 6749389
  },
  {
    "body": "This pull request is the squashed version of #7509.",
    "milestone": null,
    "assignee": null,
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
      "gravatar_id": "c802b68aaf738f3caa5488f964f1d560",
      "login": "tchandy",
      "avatar_url": "https://secure.gravatar.com/avatar/c802b68aaf738f3caa5488f964f1d560?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/tchandy",
      "id": 6090
    },
    "closed_at": "2012-09-09T20:19:39Z",
    "created_at": "2012-09-09T19:31:53Z",
    "comments": 3,
    "title": "type_cast_code should always convert values to integer calling #to_i",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7582.diff",
      "patch_url": "https://github.com/rails/rails/pull/7582.patch",
      "html_url": "https://github.com/rails/rails/pull/7582"
    },
    "number": 7582,
    "updated_at": "2012-09-09T22:51:24Z",
    "html_url": "https://github.com/rails/rails/issues/7582",
    "url": "https://api.github.com/repos/rails/rails/issues/7582",
    "id": 6749080
  },
  {
    "body": "Using the canonical blog example, given an isolated/mounted engine within a module `Blog`, the current behaviour of the mounted URL helpers is to create a method `blog` which sets an instance variable `@blog`.\n\nThis effectively prevents the instance variable `@blog` from being usable anywhere else within the application where we also want to refer to the blog engine's routes. For example the home page controller action will raise an error if we assign the `@blog` ivar and then try to refer to `blog.post_path(@blog)`.\n\nThe straight-forward fix for this is to name the instance variable for the mounted helpers using internal naming conventions, in this case `@_blog`.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "43da0307752bf635c44c33dcdd962a2e",
      "login": "spohlenz",
      "avatar_url": "https://secure.gravatar.com/avatar/43da0307752bf635c44c33dcdd962a2e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/spohlenz",
      "id": 7600
    },
    "closed_at": "2012-09-09T07:52:51Z",
    "created_at": "2012-09-09T07:08:49Z",
    "comments": 5,
    "title": "Use internal instance variable naming scheme for mounted URL helpers",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7580.diff",
      "patch_url": "https://github.com/rails/rails/pull/7580.patch",
      "html_url": "https://github.com/rails/rails/pull/7580"
    },
    "number": 7580,
    "updated_at": "2012-09-09T12:52:24Z",
    "html_url": "https://github.com/rails/rails/issues/7580",
    "url": "https://api.github.com/repos/rails/rails/issues/7580",
    "id": 6740679
  },
  {
    "body": "This method return @attribute[name].serialized  or read_attribute().\nThis patch allows to return @attributes[name] if it is already typecasted.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "0cd98f4e263d306bc455ca750c31443f",
      "login": "acapilleri",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd98f4e263d306bc455ca750c31443f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acapilleri",
      "id": 46208
    },
    "closed_at": "2012-09-10T22:14:22Z",
    "created_at": "2012-09-08T22:23:45Z",
    "comments": 5,
    "title": "typecastes_attribute_value could return @attributes[name]",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7579.diff",
      "patch_url": "https://github.com/rails/rails/pull/7579.patch",
      "html_url": "https://github.com/rails/rails/pull/7579"
    },
    "number": 7579,
    "updated_at": "2012-09-11T05:30:34Z",
    "html_url": "https://github.com/rails/rails/issues/7579",
    "url": "https://api.github.com/repos/rails/rails/issues/7579",
    "id": 6738280
  },
  {
    "body": "1.9.2p290 :018 > Time.zone = 'Brasilia'\n => \"Brasilia\" \n\n1.9.2p290 :020 >  Time.zone.now\n => Fri, 17 Aug 2012 13:08:06 BRT -03:00 \n\n1.9.2p290 :021 > Event.last.start_time\n => 2000-01-01 03:45:00 UTC \n\n1.9.2p290 :022 > Time.zone.at(event.start_time)\n => Sat, 01 Jan 2000 01:45:00 BRST -02:00 \n\nWhy is this happening? Is it a bug?\nIt was an issue in Ruby core project but they say it is a third party issue.\n(ref. http://bugs.ruby-lang.org/issues/6887)\n\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      },
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      }
    ],
    "user": {
      "gravatar_id": "82f00ca49f45efdfb63a465c88cbc7dd",
      "login": "toptierlabs",
      "avatar_url": "https://secure.gravatar.com/avatar/82f00ca49f45efdfb63a465c88cbc7dd?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/toptierlabs",
      "id": 1096859
    },
    "closed_at": "2012-09-10T15:06:48Z",
    "created_at": "2012-09-08T21:27:16Z",
    "comments": 6,
    "title": "Time.zone.now returning different timezone that Time.zone.at",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7578,
    "updated_at": "2012-09-10T15:06:48Z",
    "html_url": "https://github.com/rails/rails/issues/7578",
    "url": "https://api.github.com/repos/rails/rails/issues/7578",
    "id": 6737854
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-09-08T20:00:47Z",
    "created_at": "2012-09-08T19:52:03Z",
    "comments": 0,
    "title": "set default_headers to nil after use it to avoid order dependent tests",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7577.diff",
      "patch_url": "https://github.com/rails/rails/pull/7577.patch",
      "html_url": "https://github.com/rails/rails/pull/7577"
    },
    "number": 7577,
    "updated_at": "2012-09-08T20:00:47Z",
    "html_url": "https://github.com/rails/rails/issues/7577",
    "url": "https://api.github.com/repos/rails/rails/issues/7577",
    "id": 6737208
  },
  {
    "body": "Missing require caused fail of guide generation (in\naction_dispatch/http/mime_type, line 295, undefined method `ends_with`\nfor \"to_ary\":String)\nWith this fix guides were normally generated",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "fe1c0797f345249625590d25a51efd0a",
      "login": "prijutme4ty",
      "avatar_url": "https://secure.gravatar.com/avatar/fe1c0797f345249625590d25a51efd0a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/prijutme4ty",
      "id": 814984
    },
    "closed_at": "2012-09-08T19:07:44Z",
    "created_at": "2012-09-08T19:00:41Z",
    "comments": 0,
    "title": "Fixed missing require",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7576.diff",
      "patch_url": "https://github.com/rails/rails/pull/7576.patch",
      "html_url": "https://github.com/rails/rails/pull/7576"
    },
    "number": 7576,
    "updated_at": "2012-09-08T19:07:44Z",
    "html_url": "https://github.com/rails/rails/issues/7576",
    "url": "https://api.github.com/repos/rails/rails/issues/7576",
    "id": 6736737
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-09-08T16:39:43Z",
    "created_at": "2012-09-08T16:35:37Z",
    "comments": 3,
    "title": "improve AR CHANGELOG [ci skip]",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7574.diff",
      "patch_url": "https://github.com/rails/rails/pull/7574.patch",
      "html_url": "https://github.com/rails/rails/pull/7574"
    },
    "number": 7574,
    "updated_at": "2012-09-08T16:54:28Z",
    "html_url": "https://github.com/rails/rails/issues/7574",
    "url": "https://api.github.com/repos/rails/rails/issues/7574",
    "id": 6732982
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ee85853909657f47c8a68e8a9bc7d992",
      "login": "arunagw",
      "avatar_url": "https://secure.gravatar.com/avatar/ee85853909657f47c8a68e8a9bc7d992?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/arunagw",
      "id": 3948
    },
    "closed_at": "2012-09-09T07:03:55Z",
    "created_at": "2012-09-08T07:14:03Z",
    "comments": 2,
    "title": "removed warning: shadowing outer local variable",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7571.diff",
      "patch_url": "https://github.com/rails/rails/pull/7571.patch",
      "html_url": "https://github.com/rails/rails/pull/7571"
    },
    "number": 7571,
    "updated_at": "2012-09-09T12:53:57Z",
    "html_url": "https://github.com/rails/rails/issues/7571",
    "url": "https://api.github.com/repos/rails/rails/issues/7571",
    "id": 6729594
  },
  {
    "body": "These tests are some quick additions to increase coverage for actiondispatch/request/session.rb and actionpack/test/dispatch/session/cookie_store_test.rb .",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "b176bf0efe5230289d8e4a08dac7cfb7",
      "login": "alup",
      "avatar_url": "https://secure.gravatar.com/avatar/b176bf0efe5230289d8e4a08dac7cfb7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/alup",
      "id": 150174
    },
    "closed_at": "2012-09-08T11:13:57Z",
    "created_at": "2012-09-07T22:09:03Z",
    "comments": 1,
    "title": "Tests for session handling",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7568.diff",
      "patch_url": "https://github.com/rails/rails/pull/7568.patch",
      "html_url": "https://github.com/rails/rails/pull/7568"
    },
    "number": 7568,
    "updated_at": "2012-09-08T15:31:33Z",
    "html_url": "https://github.com/rails/rails/issues/7568",
    "url": "https://api.github.com/repos/rails/rails/issues/7568",
    "id": 6725596
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b85d2c78cae9885b7f1ad2b5f808a450",
      "login": "etehtsea",
      "avatar_url": "https://secure.gravatar.com/avatar/b85d2c78cae9885b7f1ad2b5f808a450?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/etehtsea",
      "id": 100999
    },
    "closed_at": "2012-09-08T11:16:58Z",
    "created_at": "2012-09-07T18:29:44Z",
    "comments": 16,
    "title": "Dump schema using new style hash",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7566.diff",
      "patch_url": "https://github.com/rails/rails/pull/7566.patch",
      "html_url": "https://github.com/rails/rails/pull/7566"
    },
    "number": 7566,
    "updated_at": "2012-09-08T11:16:58Z",
    "html_url": "https://github.com/rails/rails/issues/7566",
    "url": "https://api.github.com/repos/rails/rails/issues/7566",
    "id": 6720985
  },
  {
    "body": "rack/session/dalli is included in dalli gem, no in rack like the old memcache-client session store, then I think is a good idea point to the people to install dalli gem if the file can't be loaded",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "73d57855a3bfe5c534596197a895ab6e",
      "login": "guilleiguaran",
      "avatar_url": "https://secure.gravatar.com/avatar/73d57855a3bfe5c534596197a895ab6e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guilleiguaran",
      "id": 160941
    },
    "closed_at": "2012-09-07T17:30:24Z",
    "created_at": "2012-09-07T17:16:29Z",
    "comments": 0,
    "title": "Improve error message for memcache session store when dalli isn't loaded",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7565.diff",
      "patch_url": "https://github.com/rails/rails/pull/7565.patch",
      "html_url": "https://github.com/rails/rails/pull/7565"
    },
    "number": 7565,
    "updated_at": "2012-09-07T17:30:24Z",
    "html_url": "https://github.com/rails/rails/issues/7565",
    "url": "https://api.github.com/repos/rails/rails/issues/7565",
    "id": 6719389
  },
  {
    "body": "Hi,\n\nNewbie here. Saw 2 failing tests on AR on travis and locally -\n\n 5) Failure:\n144test_should_serialize_string(NilXmlSerializationTest) [/home/vagrant/builds/rails/rails/activerecord/test/cases/xml_serialization_test.rb:188]:\n145Expected /<name nil=\"true\"><\\/name>/ to match \"<?xml version=\\\"1.0\\\" encoding=\\\"UTF-8\\\"?>\\n<xml-contact>\\n  <name nil=\\\"true\\\"/>\\n  <age type=\\\"integer\\\" nil=\\\"true\\\"/>\\n  <avatar type=\\\"binary\\\" nil=\\\"true\\\" encoding=\\\"base64\\\"/>\\n  <created-at type=\\\"dateTime\\\" nil=\\\"true\\\"/>\\n  <awesome type=\\\"boolean\\\" nil=\\\"true\\\"/>\\n  <preferences nil=\\\"true\\\"/>\\n  <alternative-id type=\\\"integer\\\" nil=\\\"true\\\"/>\\n  <id type=\\\"NilClass\\\" nil=\\\"true\\\"/>\\n</xml-contact>\\n\".\n146\n147  6) Failure:\n148test_should_serialize_yaml(NilXmlSerializationTest) [/home/vagrant/builds/rails/rails/activerecord/test/cases/xml_serialization_test.rb:221]:\n149Expected /<preferences nil=\\\"true\\\"><\\/preferences>/ to match \"<?xml version=\\\"1.0\\\" encoding=\\\"UTF-8\\\"?>\\n<xml-contact>\\n  <name nil=\\\"true\\\"/>\\n  <age type=\\\"integer\\\" nil=\\\"true\\\"/>\\n  <avatar type=\\\"binary\\\" nil=\\\"true\\\" encoding=\\\"base64\\\"/>\\n  <created-at type=\\\"dateTime\\\" nil=\\\"true\\\"/>\\n  <awesome type=\\\"boolean\\\" nil=\\\"true\\\"/>\\n  <preferences nil=\\\"true\\\"/>\\n  <alternative-id type=\\\"integer\\\" nil=\\\"true\\\"/>\\n  <id type=\\\"NilClass\\\" nil=\\\"true\\\"/>\\n</xml-contact>\\n\".\n\nThis is the fix for them.\n\nThanks.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2a647b68e3ff3335e06f78d05fa657e3",
      "login": "rocky-jaiswal",
      "avatar_url": "https://secure.gravatar.com/avatar/2a647b68e3ff3335e06f78d05fa657e3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rocky-jaiswal",
      "id": 412883
    },
    "closed_at": "2012-09-07T16:49:58Z",
    "created_at": "2012-09-07T16:41:44Z",
    "comments": 1,
    "title": "Fix for 2 broken ar-mysql2 tests",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7563.diff",
      "patch_url": "https://github.com/rails/rails/pull/7563.patch",
      "html_url": "https://github.com/rails/rails/pull/7563"
    },
    "number": 7563,
    "updated_at": "2012-09-07T16:49:58Z",
    "html_url": "https://github.com/rails/rails/issues/7563",
    "url": "https://api.github.com/repos/rails/rails/issues/7563",
    "id": 6718605
  },
  {
    "body": "Deprecate yet another on the fly monkey patch of objects in AS::Callbacks.\nThis one is probably related to before_filters:\n\n``` ruby\nbefore_filter MyFilter.new\n\nclass MyFilter\n  def filter(controller)\n  end\nend\n```\n\nis now deprecated with recommendation to use:\n\n``` ruby\nbefore_filter MyFilter.new\n\nclass MyFilter\n  def before(controller)\n  end\nend\n```\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-09-07T12:13:43Z",
    "created_at": "2012-09-07T11:45:37Z",
    "comments": 0,
    "title": "AS::Callbacks: deprecate monkey patch of object callbacks",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7560.diff",
      "patch_url": "https://github.com/rails/rails/pull/7560.patch",
      "html_url": "https://github.com/rails/rails/pull/7560"
    },
    "number": 7560,
    "updated_at": "2012-09-07T12:13:43Z",
    "html_url": "https://github.com/rails/rails/issues/7560",
    "url": "https://api.github.com/repos/rails/rails/issues/7560",
    "id": 6712090
  },
  {
    "body": "According to [this test](https://github.com/rails/rails/blob/v3.2.8/actionpack/test/template/asset_tag_helper_test.rb#L169) shouldn't `image_tag(\"\")` return `<img src=\"\" />`?\n\nFor me it returns:\n\n```\n<img alt=\"Assets\" src=\"/assets/\" />\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "144314100b686db946ff68c7ae1065d1",
      "login": "NARKOZ",
      "avatar_url": "https://secure.gravatar.com/avatar/144314100b686db946ff68c7ae1065d1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/NARKOZ",
      "id": 253398
    },
    "closed_at": "2012-09-07T12:43:31Z",
    "created_at": "2012-09-07T11:27:24Z",
    "comments": 0,
    "title": "image_tag with empty source",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7559,
    "updated_at": "2012-09-07T12:43:31Z",
    "html_url": "https://github.com/rails/rails/issues/7559",
    "url": "https://api.github.com/repos/rails/rails/issues/7559",
    "id": 6711806
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e302c3320cd14b02cbe237b479d7f884",
      "login": "makaroni4",
      "avatar_url": "https://secure.gravatar.com/avatar/e302c3320cd14b02cbe237b479d7f884?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/makaroni4",
      "id": 768070
    },
    "closed_at": "2012-09-07T14:17:08Z",
    "created_at": "2012-09-07T11:15:34Z",
    "comments": 3,
    "title": "Added forgotten :message option to ActiveModel validates documentation",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7558.diff",
      "patch_url": "https://github.com/rails/rails/pull/7558.patch",
      "html_url": "https://github.com/rails/rails/pull/7558"
    },
    "number": 7558,
    "updated_at": "2012-09-07T17:29:25Z",
    "html_url": "https://github.com/rails/rails/issues/7558",
    "url": "https://api.github.com/repos/rails/rails/issues/7558",
    "id": 6711640
  },
  {
    "body": "Hi,\n\nI'm currently having the situation where I have to implement a polymorphic has_and_belongs_to_many by introducing an in between model that handles all the \"has_many :as\" and \"belongs_to :polymorphic\" association implementations... and is not doing anything else. Thing I don't like it here is, I am unnecessarily loading AR instances only to execute SQL that leads me to whatever data I want to fetch. I would then gladly remove the models, keep the DB tables, and have is all work with some kind of has_and_belongs_to_many polymorphic magic. Something like:\n\n```ruby\nclass Song < ActiveRecord::Base\n  has_and_belongs_to_many :genres, :as => :taggable\nend\n\nclass Genre < ActiveRecord::Base\n  has_and_belongs_to_many :taggables, :polymorphic => true\nend\n```\n\nor similar, I haven't put much thought into that. I would like to hear some opinion of more experienced Rails developers to know if this would be a valuable feature. ",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "92db31ff036a0b365b88536674cb9352",
      "login": "TiagoCardoso1983",
      "avatar_url": "https://secure.gravatar.com/avatar/92db31ff036a0b365b88536674cb9352?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/TiagoCardoso1983",
      "id": 215707
    },
    "closed_at": "2012-09-07T17:11:00Z",
    "created_at": "2012-09-07T10:45:13Z",
    "comments": 2,
    "title": "Polymorphic has_and_belongs_to_many association: when?",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7557,
    "updated_at": "2012-09-07T17:11:00Z",
    "html_url": "https://github.com/rails/rails/issues/7557",
    "url": "https://api.github.com/repos/rails/rails/issues/7557",
    "id": 6711189
  },
  {
    "body": "I have a case in which I need a strict order of html tag attributes (yandex.ru requires `name` before `content` attr in meta tags).\n\nI'm using meta-tags gem which employs Rails' `#tag` helper, which in turn makes use of `#tag_options`. However, because the hash passed to it is, apparently, not ordered, the `name` attr appears after `content` attr. Should this behavior be fixed?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "6d5c54e0ad7c352fcaf7a6ac83f6877d",
      "login": "snitko",
      "avatar_url": "https://secure.gravatar.com/avatar/6d5c54e0ad7c352fcaf7a6ac83f6877d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/snitko",
      "id": 21143
    },
    "closed_at": "2012-09-07T16:47:16Z",
    "created_at": "2012-09-07T05:22:03Z",
    "comments": 4,
    "title": "Forcing Rails #tag_options helper to respect the order of an html tag attributes",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7553,
    "updated_at": "2012-09-07T17:24:18Z",
    "html_url": "https://github.com/rails/rails/issues/7553",
    "url": "https://api.github.com/repos/rails/rails/issues/7553",
    "id": 6706635
  },
  {
    "body": "Dalli 2.2.x was released, so this is safe for merge now\n\n/cc @arunagw @rafaelfranca",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "73d57855a3bfe5c534596197a895ab6e",
      "login": "guilleiguaran",
      "avatar_url": "https://secure.gravatar.com/avatar/73d57855a3bfe5c534596197a895ab6e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guilleiguaran",
      "id": 160941
    },
    "closed_at": "2012-09-07T13:52:07Z",
    "created_at": "2012-09-06T22:49:19Z",
    "comments": 2,
    "title": "Use Dalli for memcache session store",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7552.diff",
      "patch_url": "https://github.com/rails/rails/pull/7552.patch",
      "html_url": "https://github.com/rails/rails/pull/7552"
    },
    "number": 7552,
    "updated_at": "2012-09-07T17:33:31Z",
    "html_url": "https://github.com/rails/rails/issues/7552",
    "url": "https://api.github.com/repos/rails/rails/issues/7552",
    "id": 6702033
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f1c4a3bb1606cc4a61711e61e2fe6146",
      "login": "sikachu",
      "avatar_url": "https://secure.gravatar.com/avatar/f1c4a3bb1606cc4a61711e61e2fe6146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sikachu",
      "id": 4912
    },
    "closed_at": "2012-09-06T20:26:02Z",
    "created_at": "2012-09-06T20:23:42Z",
    "comments": 0,
    "title": "Update Active Record CHANGELOG for #7419",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7550.diff",
      "patch_url": "https://github.com/rails/rails/pull/7550.patch",
      "html_url": "https://github.com/rails/rails/pull/7550"
    },
    "number": 7550,
    "updated_at": "2012-09-06T20:26:02Z",
    "html_url": "https://github.com/rails/rails/issues/7550",
    "url": "https://api.github.com/repos/rails/rails/issues/7550",
    "id": 6698543
  },
  {
    "body": "well caught by keen eye reader",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f4ba063457702c78a7fce6a3529aedb0",
      "login": "asanghi",
      "avatar_url": "https://secure.gravatar.com/avatar/f4ba063457702c78a7fce6a3529aedb0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/asanghi",
      "id": 762
    },
    "closed_at": "2012-09-06T20:27:53Z",
    "created_at": "2012-09-06T20:10:35Z",
    "comments": 0,
    "title": "Fix Changelog example",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7549.diff",
      "patch_url": "https://github.com/rails/rails/pull/7549.patch",
      "html_url": "https://github.com/rails/rails/pull/7549"
    },
    "number": 7549,
    "updated_at": "2012-09-06T20:27:53Z",
    "html_url": "https://github.com/rails/rails/issues/7549",
    "url": "https://api.github.com/repos/rails/rails/issues/7549",
    "id": 6698259
  },
  {
    "body": "When calling a query method on an attribute that was not selected by\nan ActiveRecord query, an ActiveModel::MissingAttributeError is not\nraised. Instead, a nil value is returned, which will return false once\ncast to boolean.\n\nThis is undesirable, as we should not give the impression that we know\nthe attribute's boolean value when we haven't loaded the attribute's\n(possibly) non-boolean value from the database.\n\nThis issue is present on versions going back as far as 2.3, at least.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "2274a7476f6d2ac7aedcdec0651d0542",
      "login": "ernie",
      "avatar_url": "https://secure.gravatar.com/avatar/2274a7476f6d2ac7aedcdec0651d0542?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ernie",
      "id": 14947
    },
    "closed_at": "2012-09-08T21:51:56Z",
    "created_at": "2012-09-06T19:46:10Z",
    "comments": 9,
    "title": "Raise MissingAttributeError on query methods",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7548.diff",
      "patch_url": "https://github.com/rails/rails/pull/7548.patch",
      "html_url": "https://github.com/rails/rails/pull/7548"
    },
    "number": 7548,
    "updated_at": "2012-09-08T21:52:13Z",
    "html_url": "https://github.com/rails/rails/issues/7548",
    "url": "https://api.github.com/repos/rails/rails/issues/7548",
    "id": 6697708
  },
  {
    "body": "Since creating table is atomic and is the only statement inside the transaction block we could get rid of the transaction in these test.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "8b3d54cbc4d678ba19de7ee8aea25cb1",
      "login": "guedes",
      "avatar_url": "https://secure.gravatar.com/avatar/8b3d54cbc4d678ba19de7ee8aea25cb1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guedes",
      "id": 124772
    },
    "closed_at": "2012-09-06T18:20:35Z",
    "created_at": "2012-09-06T17:30:23Z",
    "comments": 1,
    "title": "Little code cleanup in hstore_test.rb",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7546.diff",
      "patch_url": "https://github.com/rails/rails/pull/7546.patch",
      "html_url": "https://github.com/rails/rails/pull/7546"
    },
    "number": 7546,
    "updated_at": "2012-09-06T18:23:52Z",
    "html_url": "https://github.com/rails/rails/issues/7546",
    "url": "https://api.github.com/repos/rails/rails/issues/7546",
    "id": 6694277
  },
  {
    "body": "This is a fix for #7518",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "login": "senny",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": "2012-09-07T18:07:10Z",
    "created_at": "2012-09-06T16:07:40Z",
    "comments": 0,
    "title": "postgres, map scaled intervals to string datatype",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7545.diff",
      "patch_url": "https://github.com/rails/rails/pull/7545.patch",
      "html_url": "https://github.com/rails/rails/pull/7545"
    },
    "number": 7545,
    "updated_at": "2012-09-07T18:07:10Z",
    "html_url": "https://github.com/rails/rails/issues/7545",
    "url": "https://api.github.com/repos/rails/rails/issues/7545",
    "id": 6692203
  },
  {
    "body": "Just a suggestion here, but might it be better to store the polymorph type (namespaced model aka giant string) as a lookup table with INTs stored in the polymorph_type column?\n\nObviously keeping the lookup table in sync with the actual model names would require maintenance... but when using polymorph associations with scaled data, that's a giant string to be unnecessarily storing.\n\nFigured I'd just kick off a conversation about it..",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "7b6cdba34fcc1c4596d7637064fe723d",
      "login": "jwg2s",
      "avatar_url": "https://secure.gravatar.com/avatar/7b6cdba34fcc1c4596d7637064fe723d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jwg2s",
      "id": 832769
    },
    "closed_at": "2012-09-06T15:50:49Z",
    "created_at": "2012-09-06T14:31:06Z",
    "comments": 3,
    "title": "Storing Polymorphic Types Database Structure",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7543,
    "updated_at": "2012-09-06T15:50:49Z",
    "html_url": "https://github.com/rails/rails/issues/7543",
    "url": "https://api.github.com/repos/rails/rails/issues/7543",
    "id": 6689357
  },
  {
    "body": "This is a follow up to issue #7535. The existing example of using yield in an around callback lambda throws\na \"no block given (yield)\" error.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3e203104f9e92d287cfab734293ac3ca",
      "login": "aaronrenner",
      "avatar_url": "https://secure.gravatar.com/avatar/3e203104f9e92d287cfab734293ac3ca?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aaronrenner",
      "id": 120878
    },
    "closed_at": "2012-09-06T14:26:39Z",
    "created_at": "2012-09-06T14:23:33Z",
    "comments": 0,
    "title": "Fixed around callback with lambda example",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7542.diff",
      "patch_url": "https://github.com/rails/rails/pull/7542.patch",
      "html_url": "https://github.com/rails/rails/pull/7542"
    },
    "number": 7542,
    "updated_at": "2012-09-06T14:26:39Z",
    "html_url": "https://github.com/rails/rails/issues/7542",
    "url": "https://api.github.com/repos/rails/rails/issues/7542",
    "id": 6689141
  },
  {
    "body": "date_select has option :order which provide array containing :day, :month and :year.\n\nBut datetime_select doesn't allow to provide, for example that: \n```javascript\n:order => [:hour, :minute, :day, :month, :year].\n```\nI think that adding few elements, such as `:hour, :minute` for :order option in datetime_select would be very useful.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "a3790f182f1f615744b24f912ed6b937",
      "login": "Loremaster",
      "avatar_url": "https://secure.gravatar.com/avatar/a3790f182f1f615744b24f912ed6b937?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Loremaster",
      "id": 1028215
    },
    "closed_at": "2012-09-06T12:54:55Z",
    "created_at": "2012-09-06T11:17:44Z",
    "comments": 1,
    "title": "datetime_select - change order of time and date",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7540,
    "updated_at": "2012-09-06T12:54:55Z",
    "html_url": "https://github.com/rails/rails/issues/7540",
    "url": "https://api.github.com/repos/rails/rails/issues/7540",
    "id": 6685362
  },
  {
    "body": "Is it logically correct? In my opinion it is.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "login": "route",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": "2012-09-06T10:35:52Z",
    "created_at": "2012-09-06T10:31:21Z",
    "comments": 2,
    "title": "Remove a bit code duplication in render method",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7539.diff",
      "patch_url": "https://github.com/rails/rails/pull/7539.patch",
      "html_url": "https://github.com/rails/rails/pull/7539"
    },
    "number": 7539,
    "updated_at": "2012-09-06T10:41:12Z",
    "html_url": "https://github.com/rails/rails/issues/7539",
    "url": "https://api.github.com/repos/rails/rails/issues/7539",
    "id": 6684615
  },
  {
    "body": "Hi, getting this error randomly, but always on `<<` for has_many/:through associations. This happens randomly and I can't reproduce this issue by repeating the failed operation.\n\nPlease tell me if I can provide some more information.\n\nBacktrace:\n\n````\n2012-09-05 11:40:22 : NoMethodError: undefined method `reverse' for nil:NilClass\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:10:in `block in to_sql'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/bind_visitor.rb:17:in `call'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/bind_visitor.rb:17:in `visit_Arel_Nodes_BindParam'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/visitor.rb:19:in `visit'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:119:in `block in visit_Arel_Nodes_Values'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:117:in `map'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:117:in `visit_Arel_Nodes_Values'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/visitor.rb:19:in `visit'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:82:in `visit_Arel_Nodes_InsertStatement'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/visitor.rb:19:in `visit'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/visitor.rb:5:in `accept'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:18:in `block in accept'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/connection_pool.rb:185:in `with_connection'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/to_sql.rb:16:in `accept'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/arel-2.2.3/lib/arel/visitors/bind_visitor.rb:11:in `accept'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:9:in `to_sql'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:91:in `insert'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/query_cache.rb:14:in `insert'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/relation.rb:70:in `insert'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/persistence.rb:313:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/timestamp.rb:51:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:268:in `block in create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:417:in `_run_create_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:81:in `run_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:268:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/persistence.rb:294:in `create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:264:in `block in create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:417:in `_run_save_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:81:in `run_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:264:in `create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/persistence.rb:37:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/validations.rb:50:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/attribute_methods/dirty.rb:22:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:241:in `block (2 levels) in save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:295:in `block in with_transaction_returning_status'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:194:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:208:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:493:in `block in transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:242:in `trace_execution_scoped'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:488:in `transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:293:in `with_transaction_returning_status'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:241:in `block in save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:252:in `rollback_active_record_state!'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:240:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/has_many_association.rb:16:in `insert_record'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:436:in `block (2 levels) in create_record'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:344:in `add_to_target'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:434:in `block in create_record'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:147:in `block in transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:194:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:208:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:493:in `block in transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:242:in `trace_execution_scoped'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:488:in `transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:146:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:433:in `create_record'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:111:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_proxy.rb:53:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/acts_as_audited-2.0.0/lib/acts_as_audited/auditor.rb:218:in `write_audit'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/acts_as_audited-2.0.0/lib/acts_as_audited/auditor.rb:200:in `audit_create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:401:in `_run_create_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:81:in `run_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:268:in `create'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/persistence.rb:294:in `create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:264:in `block in create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:426:in `_run_save_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activesupport-3.1.8/lib/active_support/callbacks.rb:81:in `run_callbacks'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/callbacks.rb:264:in `create_or_update'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/persistence.rb:37:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/validations.rb:50:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/attribute_methods/dirty.rb:22:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:241:in `block (2 levels) in save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:295:in `block in with_transaction_returning_status'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:194:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:208:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:493:in `block in transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:242:in `trace_execution_scoped'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:488:in `transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:293:in `with_transaction_returning_status'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:241:in `block in save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:252:in `rollback_active_record_state!'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:240:in `save'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/has_many_association.rb:16:in `insert_record'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:128:in `block (3 levels) in concat'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:344:in `add_to_target'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:127:in `block (2 levels) in concat'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:125:in `each'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:125:in `block in concat'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:147:in `block in transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:194:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:208:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:493:in `block in transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:242:in `trace_execution_scoped'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:488:in `transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:146:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_association.rb:124:in `concat'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/associations/collection_proxy.rb:124:in `<<'\n/var/www/crm.wegohealth.com/releases/20120905103158/app/models/profile.rb:773:in `block in primary_address='\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/connection_adapters/abstract/database_statements.rb:194:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:208:in `transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:493:in `block in transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:242:in `trace_execution_scoped'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/newrelic_rpm-3.4.1/lib/new_relic/agent/method_tracer.rb:488:in `transaction_with_trace_ActiveRecord_self_name_transaction'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/activerecord-3.1.8/lib/active_record/transactions.rb:232:in `transaction'\n/var/www/crm.wegohealth.com/releases/20120905103158/app/models/profile.rb:762:in `primary_address='\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/merging_helpers.rb:150:in `merge_addresses'\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/profiles.rb:16:in `merge_profile'\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/profiles/xls.rb:162:in `block in process'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/spreadsheet-0.6.9/lib/spreadsheet/worksheet.rb:113:in `block in each'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/spreadsheet-0.6.9/lib/spreadsheet/worksheet.rb:112:in `upto'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/spreadsheet-0.6.9/lib/spreadsheet/worksheet.rb:112:in `each'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/gems/spreadsheet-0.6.9/lib/spreadsheet/excel/worksheet.rb:35:in `each'\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/profiles/xls.rb:130:in `process'\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/base.rb:53:in `perform'\n/var/www/crm.wegohealth.com/releases/20120905103158/lib/import/profiles/xls.rb:119:in `perform'\n/var/www/crm.wegohealth.com/releases/20120905103158/app/models/delayed_job.rb:193:in `block (2 levels) in perform'\n/var/www/crm.wegohealth.com/shared/bundle/ruby/1.9.1/bundler/gems/sunspot_index_queue-a2b39e3ce810/lib/sunspot/index_queue.rb:26:in `set_priority'\n/var/www/crm.wegohealth.com/releases/20120905103158/app/models/delayed_job.rb:192:in `block in perform'\n````",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "bug",
        "url": "https://api.github.com/repos/rails/rails/labels/bug",
        "color": "444444"
      },
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      },
      {
        "name": "3-1-stable",
        "url": "https://api.github.com/repos/rails/rails/labels/3-1-stable",
        "color": "e102d8"
      }
    ],
    "user": {
      "gravatar_id": "c04beb97b349cd00daf90f70cd32a1e5",
      "login": "heaven",
      "avatar_url": "https://secure.gravatar.com/avatar/c04beb97b349cd00daf90f70cd32a1e5?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/heaven",
      "id": 126732
    },
    "closed_at": "2012-09-06T16:29:51Z",
    "created_at": "2012-09-06T07:29:27Z",
    "comments": 5,
    "title": "NoMethodError: undefined method `reverse' for nil:NilClass",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7538,
    "updated_at": "2012-09-06T16:30:06Z",
    "html_url": "https://github.com/rails/rails/issues/7538",
    "url": "https://api.github.com/repos/rails/rails/issues/7538",
    "id": 6681188
  },
  {
    "body": "Adding /.idea will allow us to ignore all configuration files when using the Jetbrains RubyMine editor.  There are about ten or so .xml files RubyMine uses for configuration settings which should be ignored.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5527ddcd6dfc9e1df739c2aa0c8daa20",
      "login": "brooksreese",
      "avatar_url": "https://secure.gravatar.com/avatar/5527ddcd6dfc9e1df739c2aa0c8daa20?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/brooksreese",
      "id": 201071
    },
    "closed_at": "2012-09-06T01:14:09Z",
    "created_at": "2012-09-06T00:23:38Z",
    "comments": 1,
    "title": "Ignore RubyMine configuration files",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7537.diff",
      "patch_url": "https://github.com/rails/rails/pull/7537.patch",
      "html_url": "https://github.com/rails/rails/pull/7537"
    },
    "number": 7537,
    "updated_at": "2012-09-06T01:14:09Z",
    "html_url": "https://github.com/rails/rails/issues/7537",
    "url": "https://api.github.com/repos/rails/rails/issues/7537",
    "id": 6676706
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b7af2fda045de32a35c281ec2f29b21b",
      "login": "pivotalcommon",
      "avatar_url": "https://secure.gravatar.com/avatar/b7af2fda045de32a35c281ec2f29b21b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/pivotalcommon",
      "id": 130711
    },
    "closed_at": "2012-09-05T22:30:02Z",
    "created_at": "2012-09-05T22:10:50Z",
    "comments": 1,
    "title": "Fix pluck when columns/tables are reserved words.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7536.diff",
      "patch_url": "https://github.com/rails/rails/pull/7536.patch",
      "html_url": "https://github.com/rails/rails/pull/7536"
    },
    "number": 7536,
    "updated_at": "2012-09-05T22:30:02Z",
    "html_url": "https://github.com/rails/rails/issues/7536",
    "url": "https://api.github.com/repos/rails/rails/issues/7536",
    "id": 6674495
  },
  {
    "body": "The existing example of using yield in an around callback lambda throws\na \"no block given (yield)\" error. After some troubleshooting, I came up\nwith this example that works in a lambda.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3e203104f9e92d287cfab734293ac3ca",
      "login": "aaronrenner",
      "avatar_url": "https://secure.gravatar.com/avatar/3e203104f9e92d287cfab734293ac3ca?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aaronrenner",
      "id": 120878
    },
    "closed_at": "2012-09-06T10:40:15Z",
    "created_at": "2012-09-05T22:07:11Z",
    "comments": 2,
    "title": "Fixed around callback with lambda example",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7535.diff",
      "patch_url": "https://github.com/rails/rails/pull/7535.patch",
      "html_url": "https://github.com/rails/rails/pull/7535"
    },
    "number": 7535,
    "updated_at": "2012-09-06T10:40:15Z",
    "html_url": "https://github.com/rails/rails/issues/7535",
    "url": "https://api.github.com/repos/rails/rails/issues/7535",
    "id": 6674436
  },
  {
    "body": "Hello,\n\nThis is just a little pull request that allows the user to pass `drop_articles` for example in order to create a migration that will drop the articles table. \n\nFor the moment, I update two changelogs, I don't know if I have to and if I don't, please let me know.\n\nHave a nice day.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2d27b53e2eeb6a053552332020628029",
      "login": "robin850",
      "avatar_url": "https://secure.gravatar.com/avatar/2d27b53e2eeb6a053552332020628029?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/robin850",
      "id": 354185
    },
    "closed_at": "2012-09-06T10:38:17Z",
    "created_at": "2012-09-05T17:09:24Z",
    "comments": 6,
    "title": "Add the ability to pass drop_* when generating a new migration",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7533.diff",
      "patch_url": "https://github.com/rails/rails/pull/7533.patch",
      "html_url": "https://github.com/rails/rails/pull/7533"
    },
    "number": 7533,
    "updated_at": "2012-09-06T10:38:17Z",
    "html_url": "https://github.com/rails/rails/issues/7533",
    "url": "https://api.github.com/repos/rails/rails/issues/7533",
    "id": 6667167
  },
  {
    "body": "Split off from #7524 - this is just the bugfixes. \n\n* Call the `_will_change!` method before changing the underlying data. Otherwise, the list of changes is incorrectly populated.\n\n* multiple calls to `store_accessor` should add attributes to `stored_attributes`, not overwrite the ones already present.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "6883e5ef03484d4fcef507d7b4f1d243",
      "login": "al2o3cr",
      "avatar_url": "https://secure.gravatar.com/avatar/6883e5ef03484d4fcef507d7b4f1d243?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/al2o3cr",
      "id": 1191
    },
    "closed_at": "2012-09-05T22:33:49Z",
    "created_at": "2012-09-05T15:05:12Z",
    "comments": 0,
    "title": "correct handling of changes in AR::Store, combine multiple store_accessors",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7532.diff",
      "patch_url": "https://github.com/rails/rails/pull/7532.patch",
      "html_url": "https://github.com/rails/rails/pull/7532"
    },
    "number": 7532,
    "updated_at": "2012-09-05T22:33:49Z",
    "html_url": "https://github.com/rails/rails/issues/7532",
    "url": "https://api.github.com/repos/rails/rails/issues/7532",
    "id": 6663756
  },
  {
    "body": "Hello,\n\nI was testing out Rails 3.2.8 against ruby-head (2.0) and found that sprockets was not working as expected (documented in sstephenson/sprockets#352)\n\nAfter closer inspection, seems like actionpack is locked in sprockets 2.1.3 while sprockets has fixed a lot of issues since then (currently version 2.5.0)\n\nIt will be great if Rails 3.2.8 could bump its dependency at least to sprockets 2.4.x where this issue with ruby-head was solved.\n\nThank you! :heart: :heart: :heart:",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e7cff3cfd41c495e1012227d7dc24202",
      "login": "luislavena",
      "avatar_url": "https://secure.gravatar.com/avatar/e7cff3cfd41c495e1012227d7dc24202?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/luislavena",
      "id": 4182
    },
    "closed_at": "2012-09-05T14:22:50Z",
    "created_at": "2012-09-05T14:16:42Z",
    "comments": 2,
    "title": "Bump sprockets dependency to better work with ruby-head",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7531,
    "updated_at": "2012-09-05T14:30:43Z",
    "html_url": "https://github.com/rails/rails/issues/7531",
    "url": "https://api.github.com/repos/rails/rails/issues/7531",
    "id": 6662195
  },
  {
    "body": "Hello,\n\nSorry to make a useless pull request but I found a typo in the documentation of the `get` method. I didn't add an entry to the CHANGELOG but if I have to, please let me know and I will update the commit.\n\nHave a nice day.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2d27b53e2eeb6a053552332020628029",
      "login": "robin850",
      "avatar_url": "https://secure.gravatar.com/avatar/2d27b53e2eeb6a053552332020628029?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/robin850",
      "id": 354185
    },
    "closed_at": "2012-09-05T09:49:28Z",
    "created_at": "2012-09-05T09:41:07Z",
    "comments": 2,
    "title": "Fix a typo in AD",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7530.diff",
      "patch_url": "https://github.com/rails/rails/pull/7530.patch",
      "html_url": "https://github.com/rails/rails/pull/7530"
    },
    "number": 7530,
    "updated_at": "2012-09-05T10:14:00Z",
    "html_url": "https://github.com/rails/rails/issues/7530",
    "url": "https://api.github.com/repos/rails/rails/issues/7530",
    "id": 6656618
  },
  {
    "body": "When AR(3.1.8) tries to update nested attributes for records that haven't yet been associated with the current record, because it first received associations_attributes, not association_ids, it fails with\n\n    1) Error:\n      test_update_attributes_with_ids_and_attributes_params(HasAndBelongsToManyAssociationsTest):\n      ActiveRecord::RecordNotFound: Couldn't find Project with ID=3 for Developer with ID=12\n\nI think it should first find and add ids and only then try to update attributes, regardless of the order.\nHere's the test code diff: (OrderedHash used to show what could happen if regular Hash gives them in incorrect order)\n\n    diff --git a/activerecord/test/cases/associations/has_and_belongs_to_many_associations_test.rb b/activerecord/test/cases/associations/has_and_belongs_to_many_associations_test.rb\n    index de389fa..9f77dcd 100644\n    --- a/activerecord/test/cases/associations/has_and_belongs_to_many_associations_test.rb\n    +++ b/activerecord/test/cases/associations/has_and_belongs_to_many_associations_test.rb\n    @@ -634,6 +634,23 @@ class HasAndBelongsToManyAssociationsTest < ActiveRecord::TestCase\n        end_sql\n      end\n    \n    +  def test_update_attributes_with_ids_and_attributes_params\n    +    developer = Developer.new(\"name\" => \"Matz\")\n    +    project   = SpecialProject.create(\"name\" => \"The Project\")\n    +\n    +    assert developer.save\n    +    assert project.save\n    +\n    +    params = ActiveSupport::OrderedHash[*{\n    +      :project_ids         => [project.id],\n    +      :projects_attributes => [{:id => project.id, :name => \"Something else\"}]\n    +    }.to_a.sort.reverse.flatten].with_indifferent_access\n    +    developer.update_attributes(params)\n    +\n    +    assert_equal developer.projects.count, 1\n    +    assert_equal developer.projects.first.name, \"Something else\"\n    +  end\n    +\n      def test_updating_attributes_on_non_rich_associations\n        welcome = categories(:technology).posts.first\n        welcome.title = \"Something else\"\n    diff --git a/activerecord/test/models/developer.rb b/activerecord/test/models/developer.rb\n    index 4dc9fff..bdb13ec 100644\n    --- a/activerecord/test/models/developer.rb\n    +++ b/activerecord/test/models/developer.rb\n    @@ -18,6 +18,7 @@ class Developer < ActiveRecord::Base\n          find(:first, :order => \"id DESC\")\n        end\n      end\n    +  accepts_nested_attributes_for :projects\n    \n      has_and_belongs_to_many :projects_extended_by_name,\n          :class_name => \"Project\",",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "22612e8db22366a1edb8ad209cdb8373",
      "login": "siers",
      "avatar_url": "https://secure.gravatar.com/avatar/22612e8db22366a1edb8ad209cdb8373?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/siers",
      "id": 235147
    },
    "closed_at": "2012-09-07T15:26:46Z",
    "created_at": "2012-09-05T08:33:20Z",
    "comments": 3,
    "title": "ActiveRecord::Base#update_attributes fails on incorrect params hash order for HABTM.",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7529,
    "updated_at": "2012-09-07T18:00:39Z",
    "html_url": "https://github.com/rails/rails/issues/7529",
    "url": "https://api.github.com/repos/rails/rails/issues/7529",
    "id": 6655353
  },
  {
    "body": "Hello all!\n\nThe next PostgreSQL version (9.2) will supports a native [JSON type](http://www.postgresql.org/docs/9.2/static/datatype-json.html). Once the 9.2 version will be release soon I think that would be nice if AR supports it too. \n\nBefore started this, I searched for someone that could be working on this already, and tweeted @tenderlove asking if he remembers about someone doing this job, since seems that nobody is working on this I'm sending this pull request and I'd like to know your opinions about this feature and about my implementation. I marked two \"FIXMEs\" that could be a DRY candidate, IMO. Maybe should AR:Store be changed too?\n\nThanks.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "8b3d54cbc4d678ba19de7ee8aea25cb1",
      "login": "guedes",
      "avatar_url": "https://secure.gravatar.com/avatar/8b3d54cbc4d678ba19de7ee8aea25cb1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guedes",
      "id": 124772
    },
    "closed_at": "2012-09-06T01:58:06Z",
    "created_at": "2012-09-05T04:25:15Z",
    "comments": 14,
    "title": "AR supporting new JSON data type on PostgreSQL >= 9.2",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7527.diff",
      "patch_url": "https://github.com/rails/rails/pull/7527.patch",
      "html_url": "https://github.com/rails/rails/pull/7527"
    },
    "number": 7527,
    "updated_at": "2012-09-06T13:05:17Z",
    "html_url": "https://github.com/rails/rails/issues/7527",
    "url": "https://api.github.com/repos/rails/rails/issues/7527",
    "id": 6652475
  },
  {
    "body": "The previous implementation had the strange requirement that db/structure.sql contain only CREATE TABLE sql statements, one per table, separated by double newlines.\n\nSQLite3 and PostgreSQL database tasks, on the other hand, simply spawn 'sqlite3' and 'psql' binaries to load the file directly.\n\nThe new implementation follows this and attempts to respect all current MySQL configuration settings.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b541e45c86f3b6213b6e87af0f537401",
      "login": "seamusabshere",
      "avatar_url": "https://secure.gravatar.com/avatar/b541e45c86f3b6213b6e87af0f537401?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/seamusabshere",
      "id": 15787
    },
    "closed_at": "2012-09-05T21:48:20Z",
    "created_at": "2012-09-04T23:54:39Z",
    "comments": 12,
    "title": "Use the 'mysql' binary for 'rake db:structure:load'",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7525.diff",
      "patch_url": "https://github.com/rails/rails/pull/7525.patch",
      "html_url": "https://github.com/rails/rails/pull/7525"
    },
    "number": 7525,
    "updated_at": "2012-09-07T16:50:36Z",
    "html_url": "https://github.com/rails/rails/issues/7525",
    "url": "https://api.github.com/repos/rails/rails/issues/7525",
    "id": 6649447
  },
  {
    "body": "I've been trying to figure this issue out for a while now and I've created a reproducible situation. \n\nI created a rails repo that features the issue happening: https://github.com/jtmkrueger/namespace_magic\n\nWhen I start the server & navigate to `ns/magic` it raises the exception.\n\nAwesome.\n\nThen I comment out the raise. The app throws a Routing Error `uninitialized constant Ns::Breaker` the first time I refresh, then I refresh again and 'Hello World!' is displayed prominently on the screen as I would expect.\n\nThen It gets weird.\n\nIf I uncomment the raise, I get the same Routing Error again. \n\nONCE.\n\nThen the application ignores the `raise \"HELL\"` and returns 'Hello World!!' on every refresh after that.\n\nChanging the `Ns::Breaker` module to `Nss::Breaker` in both the module itself and in the controller fixes the problem. \n\nTested on OSX 10.7 and RedHat Enterprise 6\n\nBoth are using Ruby 1.9.3",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1b97e22672bc2577ebbb63ef895debd4",
      "login": "jtmkrueger",
      "avatar_url": "https://secure.gravatar.com/avatar/1b97e22672bc2577ebbb63ef895debd4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jtmkrueger",
      "id": 155123
    },
    "closed_at": "2012-09-04T23:41:35Z",
    "created_at": "2012-09-04T22:09:39Z",
    "comments": 5,
    "title": "Namespace exceptions issue",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7523,
    "updated_at": "2012-09-05T21:44:41Z",
    "html_url": "https://github.com/rails/rails/issues/7523",
    "url": "https://api.github.com/repos/rails/rails/issues/7523",
    "id": 6647691
  },
  {
    "body": "`parse` method performance improvements - ~27-33%",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5187030ec0cd68b5026199e9e4054dda",
      "login": "lexmag",
      "avatar_url": "https://secure.gravatar.com/avatar/5187030ec0cd68b5026199e9e4054dda?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/lexmag",
      "id": 248290
    },
    "closed_at": "2012-09-04T22:56:31Z",
    "created_at": "2012-09-04T22:08:43Z",
    "comments": 5,
    "title": "Refactor `Mime::Type`",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7522.diff",
      "patch_url": "https://github.com/rails/rails/pull/7522.patch",
      "html_url": "https://github.com/rails/rails/pull/7522"
    },
    "number": 7522,
    "updated_at": "2012-09-04T22:56:31Z",
    "html_url": "https://github.com/rails/rails/issues/7522",
    "url": "https://api.github.com/repos/rails/rails/issues/7522",
    "id": 6647673
  },
  {
    "body": "The attached code adds a `wrap_with` method to Relation that wraps objects retrieved from the relation in the specified class. A trivial example:\n\n```ruby\nclass UserWrapper < DelegateClass(User)\n  def magic_thing\n    puts 'wat'\n  end\nend\n\nUser.where(:name => 'Bob').wrap_with(UserWrapper).first.magic_thing # => prints 'wat'\n```\n\nA short test is included - suggestions for additional testing (or more meaningful testing) are welcome.\n\nThere are also a number of additional features that could be included here, if they make sense:\n\n* wrapping with additional classes may be useful; currently, chaining another `wrap_with` call overwrites the value set in the first one. This would be a simple change, given the existing plumbing for dealing with multi-valued data on Relation.\n\n* passing additional arguments to the method could be useful; for instance, `some_relation.wrap_with(SomeClass, :foo, :bar, :baz)` would pass the additional arguments on to the constructor, so each record in `some_relation` would be wrapped via `SomeClass.new(record, :foo, :bar, :baz)`. Again, a fairly trivial modification.\n\n* for extreme cases, passing a block may make more sense. For instance:\n```ruby\nsome_relation.wrap_with(SomeClass) { |some_class| some_class.do_something }\n# which wraps as:\nSomeClass.new(record).tap { |some_class| some_class.do_something }\n```\n\n* of course, there's also an argument that a zero-arg block version might make sense:\n```ruby\nsome_relation.wrap_with { |record| SomeClass.new(record) }\n```\nHere, `wrap_with` is just calling the block with the record directly.\n\n* the current code doesn't do anything when building / creating new records; it was extracted from a live app that used `wrap_with` solely for read-only views. I'm not certain what the desirable behavior is here.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "6883e5ef03484d4fcef507d7b4f1d243",
      "login": "al2o3cr",
      "avatar_url": "https://secure.gravatar.com/avatar/6883e5ef03484d4fcef507d7b4f1d243?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/al2o3cr",
      "id": 1191
    },
    "closed_at": "2012-09-08T21:08:05Z",
    "created_at": "2012-09-04T15:25:31Z",
    "comments": 16,
    "title": "Add wrap_with to Relation; simplify decorator / presenter / etc. code",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7520.diff",
      "patch_url": "https://github.com/rails/rails/pull/7520.patch",
      "html_url": "https://github.com/rails/rails/pull/7520"
    },
    "number": 7520,
    "updated_at": "2012-09-08T21:08:05Z",
    "html_url": "https://github.com/rails/rails/issues/7520",
    "url": "https://api.github.com/repos/rails/rails/issues/7520",
    "id": 6637562
  },
  {
    "body": "When a block is passed into `HashWithIndifferentAccess#update` or `#merge`, it will be invoked for each duplicated key with the key in question, the value for the key in the receiver, and the value in the hash being merged. The return value of the block will be used to resolve the conflict:\n\n    hash_1 = ActiveSupport::HashWithIndifferentAccess.new\n    hash_1[:key] = 10\n\n    hash_2 = ActiveSupport::HashWithIndifferentAccess.new\n    hash_2['key'] = 20\n\n    hash_1.merge(hash_2) { |key, old, new| old + new } # => {\"key\"=>30}\n\nThis is consistent with long-standing behaviour of the Standard Library's `Hash` class. Indeed, without this change, it would not be immediately obvious to someone passing a block into `HashWithIndifferentAccess#merge` that its behaviour doesn't reflect `Hash#merge`, as the block will be silently ignored.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "e63b38022956263621de9c55b637ea78",
      "login": "leocassarani",
      "avatar_url": "https://secure.gravatar.com/avatar/e63b38022956263621de9c55b637ea78?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/leocassarani",
      "id": 362164
    },
    "closed_at": "2012-09-05T00:07:17Z",
    "created_at": "2012-09-04T09:36:15Z",
    "comments": 2,
    "title": "Add an optional block to HashWithIndifferentAccess#update and #merge",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7519.diff",
      "patch_url": "https://github.com/rails/rails/pull/7519.patch",
      "html_url": "https://github.com/rails/rails/pull/7519"
    },
    "number": 7519,
    "updated_at": "2012-09-05T00:07:17Z",
    "html_url": "https://github.com/rails/rails/issues/7519",
    "url": "https://api.github.com/repos/rails/rails/issues/7519",
    "id": 6630110
  },
  {
    "body": "The PostgreSQL type \"interval\" can actually happen to have a precision. (See http://www.postgresql.org/docs/9.1/static/datatype-datetime.html )Thus \"interval(6)\" is a type as legal as \"interval\".\n\nHowever, the current ActiveRecord implementation maps \"interval\" to :string (which is correct, as there is no Ruby data type which better matches the postgresql interval data type without data loss), but it maps \"interval(6)\" to :integer.\n\nThere are actually 3 bugs.\n\n1. The first bug is that ActiveRecord::ConnectionAdapters::PostgreSQLColumn#simplified_type does not understand \"interval(6)\", while it should.\n2. The second bug is that [ActiveRecord::ConnectionAdapters::Column#simplified_type](https://github.com/rails/rails/blob/53ca22f2e11cd3050d75385bc31b6bb5055a2738/activerecord/lib/active_record/connection_adapters/column.rb#L269) simply searches for the word \"int\" anywhere in the field type string (instead of checking whether field_type==\"int\").\n3. The third bug is that [ActiveRecord::ConnectionAdapters::Column#simplified_type](https://github.com/rails/rails/blob/53ca22f2e11cd3050d75385bc31b6bb5055a2738/activerecord/lib/active_record/connection_adapters/column.rb#L269) does not raise an Exception if an unknown  field_type string is encountered, while it should, because developers and users would then clearly see where the limits of what the current implementation supports are crossed.\n\n**Update**: changed title to not mess up with Github, old title was:\n\n```ruby\nActiveRecord::ConnectionAdapters::PostgreSQLColumn.new(nil,nil).send(:simplified_type,\"interval(6)\").should == ActiveRecord::ConnectionAdapters::PostgreSQLColumn.new(nil,nil).send(:simplified_type,\"interval\")\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "26768a10b719085717862dcca374c374",
      "login": "xb",
      "avatar_url": "https://secure.gravatar.com/avatar/26768a10b719085717862dcca374c374?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/xb",
      "id": 51794
    },
    "closed_at": "2012-09-07T18:07:58Z",
    "created_at": "2012-09-03T21:38:39Z",
    "comments": 7,
    "title": "PostgreSQL interval type bugs",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7518,
    "updated_at": "2012-09-07T20:21:05Z",
    "html_url": "https://github.com/rails/rails/issues/7518",
    "url": "https://api.github.com/repos/rails/rails/issues/7518",
    "id": 6622797
  },
  {
    "body": "We are using that method for the letting the user to select the timezone to assign to an object.\n\nBut we are having trouble because currently we are on DST period, so in utc -5 but the list is showing utc-6 (the normal offset)\n\nAs per usage suggested in this issue: https://github.com/rails/rails/issues/7297. I think an option should be added to this method to  get the current offset if DST is applied or create a new method with this expected output.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "14c9d883456ac4f989512340ade43990",
      "login": "solojavier",
      "avatar_url": "https://secure.gravatar.com/avatar/14c9d883456ac4f989512340ade43990?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/solojavier",
      "id": 1088010
    },
    "closed_at": "2012-09-03T21:35:23Z",
    "created_at": "2012-09-03T21:12:21Z",
    "comments": 1,
    "title": "time_zone_options_for_select method in ActionView::Helpers is not DST aware",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7517,
    "updated_at": "2012-09-03T21:35:24Z",
    "html_url": "https://github.com/rails/rails/issues/7517",
    "url": "https://api.github.com/repos/rails/rails/issues/7517",
    "id": 6622541
  },
  {
    "body": "I did the following things:\n* previously the tests with and without a custom `inheritance_column` used the same models. Since the model then has both fields this can lead to false positives.\n\n* All tests with a custom inheritance_column use the `Vegtable` model. The field ruby_type on the Company models is no longer needed",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "login": "senny",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": "2012-09-03T19:13:04Z",
    "created_at": "2012-09-03T18:42:59Z",
    "comments": 2,
    "title": "custom inheritance_column test refactoring",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7515.diff",
      "patch_url": "https://github.com/rails/rails/pull/7515.patch",
      "html_url": "https://github.com/rails/rails/pull/7515"
    },
    "number": 7515,
    "updated_at": "2012-09-03T19:13:04Z",
    "html_url": "https://github.com/rails/rails/issues/7515",
    "url": "https://api.github.com/repos/rails/rails/issues/7515",
    "id": 6620898
  },
  {
    "body": "PR for 3-2-stable as described in #7506\n\n* I changed `public_send` to send\n* I added a CHANGELOG.md entry",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "login": "senny",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": "2012-09-03T14:38:48Z",
    "created_at": "2012-09-03T14:38:07Z",
    "comments": 1,
    "title": "set the configured #inheritance_column on #become (#7503)",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7514.diff",
      "patch_url": "https://github.com/rails/rails/pull/7514.patch",
      "html_url": "https://github.com/rails/rails/pull/7514"
    },
    "number": 7514,
    "updated_at": "2012-09-03T14:38:48Z",
    "html_url": "https://github.com/rails/rails/issues/7514",
    "url": "https://api.github.com/repos/rails/rails/issues/7514",
    "id": 6617199
  },
  {
    "body": "&#39 dates back to SGML when &#x27 was introduced in HTML 4.0\n\nReference:\nhttps://github.com/ruby/ruby/commit/bbb6b5e84e53b17c5c08072cae05aed6de6e3abe#commitcomment-1800099",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "8d205ba63324cc4a0a6c83aac4cf8fb0",
      "login": "kalys",
      "avatar_url": "https://secure.gravatar.com/avatar/8d205ba63324cc4a0a6c83aac4cf8fb0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kalys",
      "id": 155511
    },
    "closed_at": "2012-09-09T13:57:29Z",
    "created_at": "2012-09-03T09:53:22Z",
    "comments": 6,
    "title": "Decimal form has better browser support.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7513.diff",
      "patch_url": "https://github.com/rails/rails/pull/7513.patch",
      "html_url": "https://github.com/rails/rails/pull/7513"
    },
    "number": 7513,
    "updated_at": "2012-09-09T13:57:29Z",
    "html_url": "https://github.com/rails/rails/issues/7513",
    "url": "https://api.github.com/repos/rails/rails/issues/7513",
    "id": 6612319
  },
  {
    "body": "I try to build json API using rails. I would love to use model validators but I am not able to retrieve error code/type.\n\nAPI should respond with such structure: \n```javascript\n{\n  email: \n    [\n      {\n         code: \"taken\", \n          message: \"Email is already taken\"\n      }\n    ]\n}\n```\n\nAs I can see from only generate_message method has access to type but afterwords that information gets lost.\n\nIs that in purpose? If yes, what can I do to get expected results (structure above)",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      }
    ],
    "user": {
      "gravatar_id": "688ce6affa811e4ea16d21db8e7e5928",
      "login": "meceo",
      "avatar_url": "https://secure.gravatar.com/avatar/688ce6affa811e4ea16d21db8e7e5928?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/meceo",
      "id": 56053
    },
    "closed_at": "2012-09-03T12:27:35Z",
    "created_at": "2012-09-03T08:41:54Z",
    "comments": 1,
    "title": "Error type, error code in model validation errors",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7511,
    "updated_at": "2012-09-03T12:27:35Z",
    "html_url": "https://github.com/rails/rails/issues/7511",
    "url": "https://api.github.com/repos/rails/rails/issues/7511",
    "id": 6611094
  },
  {
    "body": "I've just converted to boolean value\n\n    request.xhr?\n      => 0`",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9cbae80f1ea00408841fcd67312ba365",
      "login": "vredniy",
      "avatar_url": "https://secure.gravatar.com/avatar/9cbae80f1ea00408841fcd67312ba365?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/vredniy",
      "id": 283295
    },
    "closed_at": "2012-09-03T08:43:15Z",
    "created_at": "2012-09-03T08:27:10Z",
    "comments": 3,
    "title": "request.xhr? should return boolean value instead of Int",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7510.diff",
      "patch_url": "https://github.com/rails/rails/pull/7510.patch",
      "html_url": "https://github.com/rails/rails/pull/7510"
    },
    "number": 7510,
    "updated_at": "2012-09-03T08:44:59Z",
    "html_url": "https://github.com/rails/rails/issues/7510",
    "url": "https://api.github.com/repos/rails/rails/issues/7510",
    "id": 6610814
  },
  {
    "body": "Hi Folks,\n\nI found this weird behavior when I was programming during my day job. This is the scenario:\n\n```` ruby\nclass User\n  has_many :tasks\nend\n````\n\n```` ruby\nclass Task\n  belongs_to :user\nend\n````\n\nso I was building a part of the application, and I made the following mistake, passing a object to the integer field:\n\n```` ruby\nt = Task.new\nt.user_id = user\nt.user_id\n=> 1 \n````\n\nwhenever this code runs, the user_id always became 1, not raising a error or anything. So I took a look in the rails source, and found that this behavior is fixed in rails master, but not in the 3.2 tree. \n\nI think this could be considered a bug, so I did this patch. What you guys think?",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "c802b68aaf738f3caa5488f964f1d560",
      "login": "tchandy",
      "avatar_url": "https://secure.gravatar.com/avatar/c802b68aaf738f3caa5488f964f1d560?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/tchandy",
      "id": 6090
    },
    "closed_at": "2012-09-09T20:20:26Z",
    "created_at": "2012-09-03T03:38:35Z",
    "comments": 12,
    "title": "Remove rescue that is oculting exceptions on integer columns",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7509.diff",
      "patch_url": "https://github.com/rails/rails/pull/7509.patch",
      "html_url": "https://github.com/rails/rails/pull/7509"
    },
    "number": 7509,
    "updated_at": "2012-09-09T20:20:26Z",
    "html_url": "https://github.com/rails/rails/issues/7509",
    "url": "https://api.github.com/repos/rails/rails/issues/7509",
    "id": 6608154
  },
  {
    "body": "My schema:\n\n```ruby\ncreate_table \"people\", :force => true do |t|\n  t.string   \"name\"\n  t.boolean  \"pretty\",     :default => true, :null => false\n  t.datetime \"created_at\",                   :null => false\n  t.datetime \"updated_at\",                   :null => false\nend\n```\n\nMy model:\n\n```ruby\nclass Person < ActiveRecord::Base\n  attr_accessible :name, :pretty\n  validates_presence_of :pretty\nend\n```\n\nMy test:\n\n1.9.3p194 :002 > Person.new(:pretty => false).valid?\n => false\n\nI was expecting true, because pretty is present (even though it has a false value).",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2927ca5ec0a0a4f21bdbc911d88dc146",
      "login": "aflag",
      "avatar_url": "https://secure.gravatar.com/avatar/2927ca5ec0a0a4f21bdbc911d88dc146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aflag",
      "id": 33273
    },
    "closed_at": "2012-09-03T01:24:57Z",
    "created_at": "2012-09-03T01:15:40Z",
    "comments": 2,
    "title": "Boolean presence validation fails if attribute's value is false",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7508,
    "updated_at": "2012-09-03T01:24:57Z",
    "html_url": "https://github.com/rails/rails/issues/7508",
    "url": "https://api.github.com/repos/rails/rails/issues/7508",
    "id": 6607182
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "8c94d965389694bd5adc14679977fd5d",
      "login": "jc00ke",
      "avatar_url": "https://secure.gravatar.com/avatar/8c94d965389694bd5adc14679977fd5d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jc00ke",
      "id": 18191
    },
    "closed_at": "2012-09-07T20:16:00Z",
    "created_at": "2012-09-02T21:10:57Z",
    "comments": 5,
    "title": "Adding MagLev to release list",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7507.diff",
      "patch_url": "https://github.com/rails/rails/pull/7507.patch",
      "html_url": "https://github.com/rails/rails/pull/7507"
    },
    "number": 7507,
    "updated_at": "2012-09-07T20:16:00Z",
    "html_url": "https://github.com/rails/rails/issues/7507",
    "url": "https://api.github.com/repos/rails/rails/issues/7507",
    "id": 6605637
  },
  {
    "body": "This is a patch for #7503\n\nI had to create a new table and a model since the current STI models all relied on `type` and it was important for this issue not to have a field named `type`",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "login": "senny",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": "2012-09-03T14:12:19Z",
    "created_at": "2012-09-02T19:52:15Z",
    "comments": 14,
    "title": "#becomes works with configured inheritance_column",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7506.diff",
      "patch_url": "https://github.com/rails/rails/pull/7506.patch",
      "html_url": "https://github.com/rails/rails/pull/7506"
    },
    "number": 7506,
    "updated_at": "2012-09-03T14:17:53Z",
    "html_url": "https://github.com/rails/rails/issues/7506",
    "url": "https://api.github.com/repos/rails/rails/issues/7506",
    "id": 6605087
  },
  {
    "body": "    $ rails new omglol\n    $ cd omglol\n    $ rails generate scaffold articles title content:text\n    $ bundle exec rake db:migrate\n    $ rails server &\n    $ curl -X POST http://localhost:3000/articles --data \"article[title]=foo\"\n\n```\nStarted POST \"/articles\" for 127.0.0.1 at 2012-09-02 17:00:51 +0200\nProcessing by ArticlesController#create as */*\n  Parameters: {\"article\"=>{\"title\"=>\"foo\"}}\nWARNING: Can't verify CSRF token authenticity\n   (0.1ms)  begin transaction\n  SQL (5.7ms)  INSERT INTO \"articles\" (\"content\", \"created_at\", \"title\", \"updated_at\") VALUES (?, ?, ?, ?)  [[\"content\", nil], [\"created_at\", Sun, 02 Sep 2012 15:00:51 UTC +00:00], [\"title\", \"foo\"], [\"updated_at\", Sun, 02 Sep 2012 15:00:51 UTC +00:00]]\n   (2.7ms)  commit transaction\nRedirected to http://localhost:3000/articles/4\nCompleted 302 Found in 104ms (ActiveRecord: 10.9ms)\n```\n\n    $ curl -X POST http://localhost:3000/articles --data \"article=foo\"\n\n```\nStarted POST \"/articles\" for 127.0.0.1 at 2012-09-02 17:01:00 +0200\nProcessing by ArticlesController#create as */*\n  Parameters: {\"article\"=>\"foo\"}\nWARNING: Can't verify CSRF token authenticity\nCompleted 500 Internal Server Error in 1ms\n\nNoMethodError (undefined method `stringify_keys' for \"foo\":String):\n  app/controllers/articles_controller.rb:43:in `new'\n  app/controllers/articles_controller.rb:43:in `create'\n\n\n  Rendered /Users/cyril/.rbenv/versions/1.9.3-p194/lib/ruby/gems/1.9.1/gems/actionpack-3.2.8/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.7ms)\n  Rendered /Users/cyril/.rbenv/versions/1.9.3-p194/lib/ruby/gems/1.9.1/gems/actionpack-3.2.8/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (1.3ms)\n  Rendered /Users/cyril/.rbenv/versions/1.9.3-p194/lib/ruby/gems/1.9.1/gems/actionpack-3.2.8/lib/action_dispatch/middleware/templates/rescues/diagnostics.erb within rescues/layout (19.6ms)\n```\n\nEven if the request was wrong, it shouldn't cause an internal error.  Maybe a bad request would be appropriate.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "351ab0ddeb5b6d1d3b5ce3b2b32ee871",
      "login": "cyril",
      "avatar_url": "https://secure.gravatar.com/avatar/351ab0ddeb5b6d1d3b5ce3b2b32ee871?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/cyril",
      "id": 20987
    },
    "closed_at": "2012-09-02T16:10:39Z",
    "created_at": "2012-09-02T15:35:03Z",
    "comments": 10,
    "title": "Status: 500 Internal Server Error (undefined method `stringify_keys' for a string)",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7505,
    "updated_at": "2012-09-02T18:54:07Z",
    "html_url": "https://github.com/rails/rails/issues/7505",
    "url": "https://api.github.com/repos/rails/rails/issues/7505",
    "id": 6603400
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "8977eabcedbade28ba0ebe0062e41c68",
      "login": "behrends",
      "avatar_url": "https://secure.gravatar.com/avatar/8977eabcedbade28ba0ebe0062e41c68?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/behrends",
      "id": 50868
    },
    "closed_at": "2012-09-02T14:22:31Z",
    "created_at": "2012-09-02T14:10:18Z",
    "comments": 1,
    "title": "Fix example code: use tasks instead of comments",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7504.diff",
      "patch_url": "https://github.com/rails/rails/pull/7504.patch",
      "html_url": "https://github.com/rails/rails/pull/7504"
    },
    "number": 7504,
    "updated_at": "2012-09-02T14:22:43Z",
    "html_url": "https://github.com/rails/rails/issues/7504",
    "url": "https://api.github.com/repos/rails/rails/issues/7504",
    "id": 6602872
  },
  {
    "body": "becomes() only works if using the default inheritance column for single table inheritance, which is \"type\" \n\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "3ccadd464a537506950f8c3c46584803",
      "login": "daveheitzman",
      "avatar_url": "https://secure.gravatar.com/avatar/3ccadd464a537506950f8c3c46584803?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/daveheitzman",
      "id": 590121
    },
    "closed_at": "2012-09-03T14:13:29Z",
    "created_at": "2012-09-02T13:55:54Z",
    "comments": 2,
    "title": "ActiveRecord::Base.becomes(klass) does not work if using different inheritance column ",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7503,
    "updated_at": "2012-09-03T14:13:29Z",
    "html_url": "https://github.com/rails/rails/issues/7503",
    "url": "https://api.github.com/repos/rails/rails/issues/7503",
    "id": 6602780
  },
  {
    "body": "Hi everybody, I've changed a bit a couple of lines in the Upgrading Ruby on Rails guide:\n\n- Using <ruby> syntax for unicode character routes example instead of\n  `<tt>` since it causes single quotes to be transformed into inverted\n  commas. This makes this required change more eye-catching.\n- Using `<tt>` for the j alias and related helpers as written in the\n  documentation guidelines.\n\nIn particular the second point is the reason for a PR instead of a push in the docrails guide, in the current version of the guide inverted commas are used for code, maybe there was a reason for that (e.g. \"j\" is very short)?\n\nPS: The guide isn't valid because another markup issue that I've already fixed in docrails: https://github.com/lifo/docrails/commit/70d2d2ced44941162e13cb66125482ebf9097ff4",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "7428d2de67276504c39bee5602b6ce99",
      "login": "xoen",
      "avatar_url": "https://secure.gravatar.com/avatar/7428d2de67276504c39bee5602b6ce99?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/xoen",
      "id": 238563
    },
    "closed_at": "2012-09-02T14:30:42Z",
    "created_at": "2012-09-02T13:48:12Z",
    "comments": 6,
    "title": "Fixed markup in Upgrading RoR guide",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7502.diff",
      "patch_url": "https://github.com/rails/rails/pull/7502.patch",
      "html_url": "https://github.com/rails/rails/pull/7502"
    },
    "number": 7502,
    "updated_at": "2012-09-02T18:46:31Z",
    "html_url": "https://github.com/rails/rails/issues/7502",
    "url": "https://api.github.com/repos/rails/rails/issues/7502",
    "id": 6602721
  },
  {
    "body": "EDIT: this is probably a documentation bug.   See second comment for more.\n\nI like to rename the method names for nested resource actions so that I don't have more than one route using the same method.  This is the code I'm trying to do it with:\n\n    resources :users, :as => :owner, :only => [] do\n      resources :projects, :only => [] do\n        collection do\n          get 'index', :action => 'index_for_owner'\n          get 'new', :action => 'new_for_owner'\n          post 'create', :action => 'create_for_owner'\n          get 'foo', :action => 'foo_for_owner'\n        end\n      end\n    end\n\nThe resulting routes:\n\n              owner_projects GET    /users/:owner_id/projects(.:format)          projects#index_for_owner\n                             GET    /users/:owner_id/projects(.:format)          projects#new_for_owner\n          foo_owner_projects GET    /users/:owner_id/projects/foo(.:format)      projects#foo_for_owner\n                             POST   /users/:owner_id/projects(.:format)          projects#create_for_owner\n\nThe new route should be routing similar to the foo action.   Instead, it is routing the same as the index action.\n\ntested against 3-2-stable as of August 31st.   (cabab374bfc6c1bd1d783ecc3c674047f17523c6)",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "5b5b5e62e63d6bc80d4c3262426856ae",
      "login": "bryanlarsen",
      "avatar_url": "https://secure.gravatar.com/avatar/5b5b5e62e63d6bc80d4c3262426856ae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bryanlarsen",
      "id": 32073
    },
    "closed_at": "2012-09-02T15:01:44Z",
    "created_at": "2012-09-02T11:59:36Z",
    "comments": 6,
    "title": "documentation: 'new' section in resources block",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7501,
    "updated_at": "2012-09-02T16:06:28Z",
    "html_url": "https://github.com/rails/rails/issues/7501",
    "url": "https://api.github.com/repos/rails/rails/issues/7501",
    "id": 6602079
  },
  {
    "body": "this got the tests running on my machine and fixed the following error:\n\n```\n/Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:475:in `load_missing_constant': Object is not missing constant Arel! (NameError)\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:202:in `block in const_missing'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:200:in `each'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:200:in `const_missing'\n\tfrom /Users/username/Projects/rails/activerecord/lib/active_record.rb:164:in `block in <top (required)>'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/lazy_load_hooks.rb:36:in `instance_eval'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/lazy_load_hooks.rb:36:in `execute_hook'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/lazy_load_hooks.rb:43:in `block in run_load_hooks'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/lazy_load_hooks.rb:42:in `each'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/lazy_load_hooks.rb:42:in `run_load_hooks'\n\tfrom /Users/username/Projects/rails/activerecord/lib/active_record/base.rb:328:in `<top (required)>'\n\tfrom /Users/username/Projects/rails/activerecord/test/models/arunit2_model.rb:1:in `<top (required)>'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:450:in `load'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:450:in `block in load_file'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:624:in `new_constants_in'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:449:in `load_file'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:352:in `require_or_load'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:317:in `depend_on'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:235:in `require_dependency'\n\tfrom /Users/username/Projects/rails/activerecord/test/models/college.rb:1:in `<top (required)>'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `require'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `block in require'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:242:in `load_dependency'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `require'\n\tfrom /Users/username/Projects/rails/activerecord/test/support/connection.rb:2:in `<top (required)>'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `require'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `block in require'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:242:in `load_dependency'\n\tfrom /Users/username/Projects/rails/activesupport/lib/active_support/dependencies.rb:257:in `require'\n\tfrom /Users/username/Projects/rails/activerecord/test/cases/helper.rb:15:in `<top (required)>'\n\tfrom <internal:lib/rubygems/custom_require>:29:in `require'\n\tfrom <internal:lib/rubygems/custom_require>:29:in `require'\n\tfrom /Users/username/Projects/rails/activerecord/test/cases/adapter_test.rb:1:in `<top (required)>'\n\tfrom <internal:lib/rubygems/custom_require>:29:in `require'\n\tfrom <internal:lib/rubygems/custom_require>:29:in `require'\n\tfrom /Users/username/.rvm/gems/ruby-1.9.2-p290@rails/gems/rake-0.9.2.2/lib/rake/rake_test_loader.rb:15:in `block in <main>'\n\tfrom /Users/username/.rvm/gems/ruby-1.9.2-p290@rails/gems/rake-0.9.2.2/lib/rake/rake_test_loader.rb:4:in `select'\n\tfrom /Users/username/.rvm/gems/ruby-1.9.2-p290@rails/gems/rake-0.9.2.2/lib/rake/rake_test_loader.rb:4:in `<main>'\n```\n\nI used ruby 1.9.2 p290.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3d698e2872c07061a455d9e250861235",
      "login": "senny",
      "avatar_url": "https://secure.gravatar.com/avatar/3d698e2872c07061a455d9e250861235?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/senny",
      "id": 5402
    },
    "closed_at": "2012-09-02T11:46:11Z",
    "created_at": "2012-09-02T11:33:59Z",
    "comments": 3,
    "title": "reference Arel constant unambiguously (to run tests)",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7500.diff",
      "patch_url": "https://github.com/rails/rails/pull/7500.patch",
      "html_url": "https://github.com/rails/rails/pull/7500"
    },
    "number": 7500,
    "updated_at": "2012-09-02T11:48:14Z",
    "html_url": "https://github.com/rails/rails/issues/7500",
    "url": "https://api.github.com/repos/rails/rails/issues/7500",
    "id": 6601948
  },
  {
    "body": "I got a bug when trying to call a simple \"business\".classify. \nBecause inflections configuration, it returns \"Busines\". \n\nThis PR adds a new entry for singular inflections and asserts with a unit test.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "30f9297a1ec40eab1d7aa9b6d41b7350",
      "login": "leandronsp",
      "avatar_url": "https://secure.gravatar.com/avatar/30f9297a1ec40eab1d7aa9b6d41b7350?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/leandronsp",
      "id": 385640
    },
    "closed_at": "2012-09-02T00:37:12Z",
    "created_at": "2012-09-01T18:56:44Z",
    "comments": 1,
    "title": "Add new inflection for singular (SS)",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7499.diff",
      "patch_url": "https://github.com/rails/rails/pull/7499.patch",
      "html_url": "https://github.com/rails/rails/pull/7499"
    },
    "number": 7499,
    "updated_at": "2012-09-02T00:37:12Z",
    "html_url": "https://github.com/rails/rails/issues/7499",
    "url": "https://api.github.com/repos/rails/rails/issues/7499",
    "id": 6597362
  },
  {
    "body": "When attempting to generate a new Rails app via the executable `railties/bin/rails` an [exception][] occurs because Bundler has not be required prior to its use.\n\n[exception]: https://gist.github.com/3577771\n\nThis is the interesting line from the backtrace:\n\n```\n/Users/jcf/Code/rails/railties/lib/rails/generators/app_base.rb:254:in `bundle_command': uninitialized constant Rails::Generators::AppBase::Bundler (NameError)\n\tfrom /Users/jcf/Code/rails/railties/lib/rails/generators/app_base.rb:260:in `run_bundle'\n```\n\nThe change I've made is to simply require Bundler in `railties/lib/rails/generators/app_base.rb`.\n\n``` ruby\ndef bundle_command(command)\n  # …\n  _bundle_command = Gem.bin_path('bundler', 'bundle')\n\n  Bundler.with_clean_env do\n    print `\"#{Gem.ruby}\" \"#{_bundle_command}\" #{command}`\n  end\nend\n```\n\nThe only way to integration test that comes to mind this is to do so in a separate process. Otherwise requiring bundler in the test suite will fix the issue.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "18c2795810ee15d41956e7f4cc5f3338",
      "login": "jcf",
      "avatar_url": "https://secure.gravatar.com/avatar/18c2795810ee15d41956e7f4cc5f3338?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jcf",
      "id": 18374
    },
    "closed_at": "2012-09-01T18:43:08Z",
    "created_at": "2012-09-01T15:54:10Z",
    "comments": 3,
    "title": "Require bundler when running a new app generator",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7498.diff",
      "patch_url": "https://github.com/rails/rails/pull/7498.patch",
      "html_url": "https://github.com/rails/rails/pull/7498"
    },
    "number": 7498,
    "updated_at": "2012-09-01T18:50:48Z",
    "html_url": "https://github.com/rails/rails/issues/7498",
    "url": "https://api.github.com/repos/rails/rails/issues/7498",
    "id": 6596321
  },
  {
    "body": "Ability to specify array of attributes to validates method.\nIn this case the listed validation options will apply to each\nattribute in array.\n\nFor example:\n```ruby\nvalidates [:first_name, :last_name, :middle_name], presence: true\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "406a9d04de19cb80e798862b9772f491",
      "login": "flexoid",
      "avatar_url": "https://secure.gravatar.com/avatar/406a9d04de19cb80e798862b9772f491?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/flexoid",
      "id": 335778
    },
    "closed_at": "2012-08-31T22:12:20Z",
    "created_at": "2012-08-31T21:02:45Z",
    "comments": 3,
    "title": "Array of attributes to validates method",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7497.diff",
      "patch_url": "https://github.com/rails/rails/pull/7497.patch",
      "html_url": "https://github.com/rails/rails/pull/7497"
    },
    "number": 7497,
    "updated_at": "2012-09-05T03:39:53Z",
    "html_url": "https://github.com/rails/rails/issues/7497",
    "url": "https://api.github.com/repos/rails/rails/issues/7497",
    "id": 6588876
  },
  {
    "body": "In the following snippet, can't the includes being inferred from the where clause?\n\n    Order.includes(:items).where(:items => { :category => [1,2,3] })\n\nCan't the includes be inferred from the where clause?\n\n    Order.where(:items => { :category => [1,2,3] })\n\nWould this conflict with any existing usages of the where clause and hashes? \n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f86901feca747abbb5c6c020362ef2e7",
      "login": "zdennis",
      "avatar_url": "https://secure.gravatar.com/avatar/f86901feca747abbb5c6c020362ef2e7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/zdennis",
      "id": 967
    },
    "closed_at": "2012-08-31T20:06:55Z",
    "created_at": "2012-08-31T20:04:35Z",
    "comments": 3,
    "title": "Infer :includes for activerecord queries if possible in the where clause",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7496,
    "updated_at": "2012-08-31T20:09:03Z",
    "html_url": "https://github.com/rails/rails/issues/7496",
    "url": "https://api.github.com/repos/rails/rails/issues/7496",
    "id": 6587802
  },
  {
    "body": "Fixes #7478\n\nWell, it would if it were actually finished. There is one test failure:\n\n```\n  1) Failure:\ntest_setting_session_value_after_session_reset(CookieStoreTest) [/Users/steve/src/rails/actionpack/test/dispatch/session/cookie_store_test.rb:190]:\nExpected \"BAh7B0kiD3Nlc3Npb25faWQGOgZFRkkiJTlmZTczNjc4NThiNWZhODIzNjg2Mjk2NDVlZGNkYTMwBjsAVEkiCGZvbwY7AEZJIghiYXIGOwBG--84236482786035ade1225b520f9439784ea16fb1\" to not be equal to \"BAh7B0kiD3Nlc3Npb25faWQGOgZFRkkiJTlmZTczNjc4NThiNWZhODIzNjg2Mjk2NDVlZGNkYTMwBjsAVEkiCGZvbwY7AEZJIghiYXIGOwBG--84236482786035ade1225b520f9439784ea16fb1\".\n```\n\nI am not sure why `#destroy` does not reset the session. [It claims to](https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/request/session.rb#L73), and following the trail of code, looks like it does. But it doesn't. Anybody have any ideas?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "233c279c012ebac792aaa805f966cbc7",
      "login": "steveklabnik",
      "avatar_url": "https://secure.gravatar.com/avatar/233c279c012ebac792aaa805f966cbc7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/steveklabnik",
      "id": 27786
    },
    "closed_at": "2012-09-02T06:42:40Z",
    "created_at": "2012-08-31T19:28:22Z",
    "comments": 15,
    "title": "Properly reset the session on reset_session",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7495.diff",
      "patch_url": "https://github.com/rails/rails/pull/7495.patch",
      "html_url": "https://github.com/rails/rails/pull/7495"
    },
    "number": 7495,
    "updated_at": "2012-09-02T14:17:10Z",
    "html_url": "https://github.com/rails/rails/issues/7495",
    "url": "https://api.github.com/repos/rails/rails/issues/7495",
    "id": 6587076
  },
  {
    "body": "Method invalid_asset_host! was delegated to controller but sprockets\ncompile assets in their own scope without controller and request. And if we set asset_host\nwith second parameter(request) it should raise error through invalid_asset_host!.\nBut since controller is nil it cannot be reached.\n\nOriginal issue in sprockets-rails tests:\n```\ntest_0010_stylesheets served without a controller in scope cannot access the request(SprocketsHelperTest) [/Users/route/Projects/sprockets-rails/test/sprockets_helper_test.rb:127]:\n[ActionController::RoutingError] exception expected, not\nClass: <RuntimeError>\nMessage: <\"ActionView::AssetPaths#invalid_asset_host! delegated to controller.invalid_asset_host!, but controller is nil: #<Sprockets::Rails::Helpers::RailsHelper::AssetPaths:0x007febc3838270 @config={:assets_dir=>\\\"/Users/route/Projects/sprockets-rails/test/fixtures/public\\\", :javascripts_dir=>\\\"/Users/route/Projects/sprockets-rails/test/fixtures/public/javascripts\\\", :stylesheets_dir=>\\\"/Users/route/Projects/sprockets-rails/test/fixtures/public/stylesheets\\\", :assets=>{:digest=>true, :compile=>true}, :perform_caching=>true, :asset_host=>#<Proc:0x007febc3832f50@/Users/route/Projects/sprockets-rails/test/sprockets_helper_test.rb:124>}, @controller=nil, @asset_environment=#<Sprockets::Environment:0x3ff5e2546448 root=\\\"/Users/route/Projects/sprockets-rails\\\", paths=[\\\"/Users/route/Projects/sprockets-rails/test/fixtures/app/javascripts\\\", \\\"/Users/route/Projects/sprockets-rails/test/fixtures/app/stylesheets\\\", \\\"/Users/route/Projects/sprockets-rails/test/fixtures/app/images\\\", \\\"/Users/route/Projects/sprockets-rails/test/fixtures/app/fonts\\\"], digest=\\\"35721b5cd45ee6e140910c90f9c6d639\\\">, @asset_digests=nil, @compile_assets=true, @digest_assets=true>\">\n---Backtrace---\n/Users/route/Projects/rails/actionpack/lib/action_view/asset_paths.rb:14:in `rescue in invalid_asset_host!'\n/Users/route/Projects/rails/actionpack/lib/action_view/asset_paths.rb:11:in `invalid_asset_host!'\n/Users/route/Projects/rails/actionpack/lib/action_view/asset_paths.rb:113:in `compute_asset_host'\n/Users/route/Projects/rails/actionpack/lib/action_view/asset_paths.rb:72:in `rewrite_host_and_protocol'\n/Users/route/Projects/rails/actionpack/lib/action_view/asset_paths.rb:33:in `compute_public_path'\n/Users/route/Projects/sprockets-rails/lib/sprockets/rails/helpers/rails_helper.rb:57:in `asset_path'\n/Users/route/Projects/sprockets-rails/test/sprockets_helper_test.rb:128:in `block (2 levels) in <class:SprocketsHelperTest>'\n---------------\n```\n\nI revert that commit 7185e35971f4a18f48a7d67e5c86c2fcf87bdb66 and since invalid_asset_host! is used only in action_view I think this method should be there, I renamed class of error to get rid of actionpack dependence.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "login": "route",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": "2012-09-01T12:33:31Z",
    "created_at": "2012-08-31T08:05:47Z",
    "comments": 7,
    "title": "ActionView decoupling and sprockets-rails tests fail",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7494.diff",
      "patch_url": "https://github.com/rails/rails/pull/7494.patch",
      "html_url": "https://github.com/rails/rails/pull/7494"
    },
    "number": 7494,
    "updated_at": "2012-09-01T12:33:31Z",
    "html_url": "https://github.com/rails/rails/issues/7494",
    "url": "https://api.github.com/repos/rails/rails/issues/7494",
    "id": 6573249
  },
  {
    "body": "I have come across a bug in the routing system whereby if you have a resource that should be defined differently based on constraints, the path helpers are not generated for the second declaration e.g.\n\n```ruby\n  constraints(IsNotSubdomain) do\n    scope :module => 'showcase' do\n      resource :session, only: [:new, :create, :destroy]\n    end\n  end\n\n  constraints(IsSubdomain) do\n    scope '/admin' do\n      resource :session, only: [:new, :create, :destroy]\n    end\n  end\n```\n\nGenerates the following routes:\n\n```\n    session POST   /session(.:format)           showcase/sessions#create\nnew_session GET    /session/new(.:format)       showcase/sessions#new\n            DELETE /session(.:format)           showcase/sessions#destroy\n            POST   /admin/session(.:format)     sessions#create\n            GET    /admin/session/new(.:format) sessions#new\n            DELETE /admin/session(.:format)     sessions#destroy\n```\nNote how the second declaration produces no names.\n\nIf I manually enter all the routes by hand i.e. bypass the `resource` method it works... can anyone shed any light?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "28782bfea901c53cfadccd88c32d63a2",
      "login": "thelucid",
      "avatar_url": "https://secure.gravatar.com/avatar/28782bfea901c53cfadccd88c32d63a2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/thelucid",
      "id": 1236447
    },
    "closed_at": "2012-09-01T06:59:34Z",
    "created_at": "2012-08-31T01:40:25Z",
    "comments": 7,
    "title": "Bug with resource routes that are inside constraints",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7492,
    "updated_at": "2012-09-02T23:55:24Z",
    "html_url": "https://github.com/rails/rails/issues/7492",
    "url": "https://api.github.com/repos/rails/rails/issues/7492",
    "id": 6569297
  },
  {
    "body": "Some CDN's (like MaxCDN) take care of gzipping of assets so it would be nice to be able to turn off gzip in assets:precompile. It could shave some time off during compilation process.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ed957dc9ac370af026f758357bfdc314",
      "login": "ilyakatz",
      "avatar_url": "https://secure.gravatar.com/avatar/ed957dc9ac370af026f758357bfdc314?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ilyakatz",
      "id": 282514
    },
    "closed_at": "2012-08-30T22:44:22Z",
    "created_at": "2012-08-30T22:41:18Z",
    "comments": 1,
    "title": "Option to disable gzip compression of assets",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7491,
    "updated_at": "2012-08-30T22:44:22Z",
    "html_url": "https://github.com/rails/rails/issues/7491",
    "url": "https://api.github.com/repos/rails/rails/issues/7491",
    "id": 6567053
  },
  {
    "body": "I'm sorry for my English, I will try to describe the problem a simply as i can.\n\nNamed URLs, (`*_path` and `*_url` methods) are generate incorrectly when we are using a subdomains in Rails.\nRails don't check if a current subdomain are the same as a names URL subdomain, which leads to a few problems.\nI tried to fork Rails and make a patch for `ActionDispatch::Http::URL`, but i failed due to my leak of knowledge about under-the-hood functions and modules.\n\nSo, lets describe this problem.\nWhen you use a names URL, Rails do not bothers about subdomains. This leads to a few problems, like incorrect root_url on a subdomain addresses or a lack of subdomain for some_link_with_subdomain_path when its generated on page that dont have or have another subdomain, where this path schoud be a absolute URL, nor relative.\n\n\nOk, example here. We have simple routes with sudbomain:\n\n    constraints :subdomain => 'profile' do\n        defaults :subdomain => 'profile' do\n            scope :module => :user, :as => 'user' do\n                match 'overview' => 'Profile#overview', :as => 'profile_overview'      \n            end\n        end\n    end\n\n    root :to => 'home#index'\n\nLets asume, that we are on root-domain page, ie. `http://page.com`.\nMethods `root_url` and `root_path` generates a correct URLs, no problem here. Also `user_profile_overview_url` return us a correct URL (`http://profile.page.com/overview`). Problems starts with a `user_profile_overview_path` method. Now it generates a relative URL, no matter on what subdomain we are, whether it is `http://subdomain.page.com` or `http://page.com`, we get a relative URL when we should get a absolute URL.\nIn this case, if current subdomain is different from a named URL subdomain, `*_path` should generate a absolute URL, not relative.\n\nMore problems appears when we are already on subdomain page, ie. `http://profile.page.com`.\nNow `user_profile_overview_path` method generate a correct, relative URL (because current subdomain == named URL subdomain). Method `user_profile_overview_url` also returns us a correct URL. Problem appears when we use a `root_url` and `root_path` methods. Method `root_url` generate us a `http://profile.page.com`, which is incorrect, because root page have no subdomain, according to the routes file. Also `root_path` returns a incorrect URL, which is a simple relative URL ('/'). In this case, Rails should generate the same URL for `root_url` and `root_patch` methods, which should be a absolute URL without subdomain.\n\nEvery `*_path` method generates a incorrect URL when `current_subdomain != named_url_subdomain`.\n\nSo, the solution for the problem, in my opinion, lies in a few changes in the `ActionDispath::Http::Url.url_for` function. \nThis function should check if a current_subdomain are the same as the named_url_subdomain. If so, it's safe to generate a relative URL. In other case, it's should generate a absolute URL for every link.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5f6b061d84105f932ab3e4190b14b82c",
      "login": "galmido",
      "avatar_url": "https://secure.gravatar.com/avatar/5f6b061d84105f932ab3e4190b14b82c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/galmido",
      "id": 751402
    },
    "closed_at": "2012-08-30T19:32:25Z",
    "created_at": "2012-08-30T19:28:52Z",
    "comments": 6,
    "title": "*_url and *_path methods generates a incorrect urls when used with subdomains",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7489,
    "updated_at": "2012-08-30T20:42:07Z",
    "html_url": "https://github.com/rails/rails/issues/7489",
    "url": "https://api.github.com/repos/rails/rails/issues/7489",
    "id": 6562544
  },
  {
    "body": "Using Rails on a new app is great because you can stick to the default `snake_case` database naming scheme. Unfortunately for many, we are trying to progressively switch our applications to using Rails by routing certain requests through our Rails app. Some of the hurdles involve legacy database naming schemes. Our database uses `CamelCase` naming schemes. If I could create an initializer that could configure the naming scheme, that would improve the ease-of-transition and make it so the scaffolding generators would respect this custom naming scheme. I am having a hard time tracking down documentation on configuring these types of things so some clear documentation and possibly additional features would go a long way.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1c787bc735dbe80ec2f88824e1d10c6c",
      "login": "andrewhavens",
      "avatar_url": "https://secure.gravatar.com/avatar/1c787bc735dbe80ec2f88824e1d10c6c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/andrewhavens",
      "id": 446392
    },
    "closed_at": "2012-08-30T17:51:48Z",
    "created_at": "2012-08-30T17:35:18Z",
    "comments": 2,
    "title": "Provide documentation and/or feature to configure active record naming conventions",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7487,
    "updated_at": "2012-08-30T21:56:53Z",
    "html_url": "https://github.com/rails/rails/issues/7487",
    "url": "https://api.github.com/repos/rails/rails/issues/7487",
    "id": 6559774
  },
  {
    "body": "I found the following test failure.\n\n```\n  1) Error:\n143test_collection_dependency(TemplateDigestorTest):\n144Errno::ENOENT: No such file or directory - /home/vagrant/builds/rails/rails/actionpack/test/template/../tmp/messages/_message.html.erb\n145    /home/vagrant/builds/rails/rails/actionpack/test/template/digestor_test.rb:153:in `initialize'\n...\n```\n\nThis problem came from FiltUtils.cp_r(src, dest) specific.\nAccording to API reference, `if  dest is directory, files were copied to dest/src directory`.\nWe copy files in setup, and remove directory in teardown.\nThus if we execute tests twice, tests are failure at first, and tests are success at second.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-30T15:10:29Z",
    "created_at": "2012-08-30T15:05:07Z",
    "comments": 0,
    "title": "Fix build about TemplateDigestorTest.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7485.diff",
      "patch_url": "https://github.com/rails/rails/pull/7485.patch",
      "html_url": "https://github.com/rails/rails/pull/7485"
    },
    "number": 7485,
    "updated_at": "2012-08-30T15:10:29Z",
    "html_url": "https://github.com/rails/rails/issues/7485",
    "url": "https://api.github.com/repos/rails/rails/issues/7485",
    "id": 6555726
  },
  {
    "body": "I found the following warning.\n\n```\n...\n/home/vagrant/builds/rails/rails/actionpack/lib/action_controller/metal/conditional_get.rb:169: warning: `&' interpreted as argument prefix\n...\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-30T14:16:32Z",
    "created_at": "2012-08-30T14:13:40Z",
    "comments": 0,
    "title": "Fixes warning: & interpreted as argument prefix",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7484.diff",
      "patch_url": "https://github.com/rails/rails/pull/7484.patch",
      "html_url": "https://github.com/rails/rails/pull/7484"
    },
    "number": 7484,
    "updated_at": "2012-08-30T14:16:32Z",
    "html_url": "https://github.com/rails/rails/issues/7484",
    "url": "https://api.github.com/repos/rails/rails/issues/7484",
    "id": 6554338
  },
  {
    "body": "This pull request improves the regular expression used by `ActionView::Digestor` ( introduced in 502d5e24e28b3634910495d0fb71cb20b1426aee)\n\n* Ignore whitespace before/after Hash keys, (which usually appear when people indent their Hash keys)\n* Ignore whitespace before/after parenthesis (some people are just sloppy)\n* Correctly parse 1.8.7 style Hash keys (for some of us the new style is still not in our muscle memory)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "919feaa12651b668d8ee9a41215b1976",
      "login": "christos",
      "avatar_url": "https://secure.gravatar.com/avatar/919feaa12651b668d8ee9a41215b1976?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/christos",
      "id": 736
    },
    "closed_at": "2012-08-30T12:28:32Z",
    "created_at": "2012-08-30T11:26:07Z",
    "comments": 1,
    "title": "Better ActionView::Digestor nested template inference",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7483.diff",
      "patch_url": "https://github.com/rails/rails/pull/7483.patch",
      "html_url": "https://github.com/rails/rails/pull/7483"
    },
    "number": 7483,
    "updated_at": "2012-08-30T12:28:32Z",
    "html_url": "https://github.com/rails/rails/issues/7483",
    "url": "https://api.github.com/repos/rails/rails/issues/7483",
    "id": 6550864
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "4d6f74711436cfe252bf4fc8f3cf4971",
      "login": "joliss",
      "avatar_url": "https://secure.gravatar.com/avatar/4d6f74711436cfe252bf4fc8f3cf4971?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/joliss",
      "id": 524783
    },
    "closed_at": "2012-08-30T07:41:17Z",
    "created_at": "2012-08-29T23:05:19Z",
    "comments": 1,
    "title": "Fix grammar",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7481.diff",
      "patch_url": "https://github.com/rails/rails/pull/7481.patch",
      "html_url": "https://github.com/rails/rails/pull/7481"
    },
    "number": 7481,
    "updated_at": "2012-08-30T07:41:17Z",
    "html_url": "https://github.com/rails/rails/issues/7481",
    "url": "https://api.github.com/repos/rails/rails/issues/7481",
    "id": 6541161
  },
  {
    "body": "The new controller-level etag feature's description in the ActionPack changelog wasn't formatted correctly.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1178ce2f664a6cee9a05a3e11af5d8d2",
      "login": "aaronbrethorst",
      "avatar_url": "https://secure.gravatar.com/avatar/1178ce2f664a6cee9a05a3e11af5d8d2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aaronbrethorst",
      "id": 2254
    },
    "closed_at": "2012-08-29T22:09:39Z",
    "created_at": "2012-08-29T20:37:28Z",
    "comments": 1,
    "title": "Fix markdown rendering of the ActionPack changelog",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7480.diff",
      "patch_url": "https://github.com/rails/rails/pull/7480.patch",
      "html_url": "https://github.com/rails/rails/pull/7480"
    },
    "number": 7480,
    "updated_at": "2012-08-29T22:09:44Z",
    "html_url": "https://github.com/rails/rails/issues/7480",
    "url": "https://api.github.com/repos/rails/rails/issues/7480",
    "id": 6538021
  },
  {
    "body": "escape the '.'s  ",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "c0a78e5b3081bf7a7da6a6668e659c73",
      "login": "eriko",
      "avatar_url": "https://secure.gravatar.com/avatar/c0a78e5b3081bf7a7da6a6668e659c73?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/eriko",
      "id": 5929
    },
    "closed_at": "2012-08-31T11:45:32Z",
    "created_at": "2012-08-29T20:15:33Z",
    "comments": 9,
    "title": "the example for contraint( :ip => XXXX) has an invalid regex",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7479.diff",
      "patch_url": "https://github.com/rails/rails/pull/7479.patch",
      "html_url": "https://github.com/rails/rails/pull/7479"
    },
    "number": 7479,
    "updated_at": "2012-08-31T11:45:33Z",
    "html_url": "https://github.com/rails/rails/issues/7479",
    "url": "https://api.github.com/repos/rails/rails/issues/7479",
    "id": 6537488
  },
  {
    "body": "Hi.\n\nI am running rails 3.2.7. When I run `reset_session`, it kills indifferent access.\n\n```ruby\ndef some_action\n  session[:foo] = \"bar\"\n  session.class # => Rack::Session::Abstract::SessionHash\n  if session[\"foo\"] == \"bar\" \n    puts \"Everything ok until now\".\n  end\n\n  reset_session # Deletes the session in the database, creates a new session id\n      \n  session[:foo] = \"bar\"\n  session.class # => Hash\n  if session[\"foo\"] .nil?\n    puts \"Now it's broken\"\n  end\nend\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "43b39b50295b675199c4d037321619ae",
      "login": "iblue",
      "avatar_url": "https://secure.gravatar.com/avatar/43b39b50295b675199c4d037321619ae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/iblue",
      "id": 93362
    },
    "closed_at": "2012-09-02T06:42:42Z",
    "created_at": "2012-08-29T18:00:40Z",
    "comments": 9,
    "title": "`reset_session` breaks indifferent access",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7478,
    "updated_at": "2012-09-02T06:42:42Z",
    "html_url": "https://github.com/rails/rails/issues/7478",
    "url": "https://api.github.com/repos/rails/rails/issues/7478",
    "id": 6533930
  },
  {
    "body": "I fixed some warnings related to `mime_type` method's deprecation on master (#7469).\n\nBut I got some another problems.\nWhen executing `rake test:isolated` in ActionMailer, test/base_test.rb was break.\n\n```\n 1) Failure:\ntest_0007_should set template content type if mail has only one part(BaseTest) [test/base_test.rb:69]:\nExpected: \"text/html\"\nActual: \"text/plain\"\n...\n```\n\nAfter investigating, I realized the cause of problem.\nIf we didn't load `action_dispatch`, we also didn't execute `ActionView::Template::Types.delegate_to Mime`\nPlease see also https://github.com/rails/rails/commit/67f55e282236eef53adc6036e735190b1dda5a47#L0R107.\n\nIf we delegate to Mime, build is success.",
    "milestone": null,
    "assignee": {
      "gravatar_id": "582034b63279abeaa8e76acf12f5ee30",
      "login": "drogus",
      "avatar_url": "https://secure.gravatar.com/avatar/582034b63279abeaa8e76acf12f5ee30?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/drogus",
      "id": 5004
    },
    "labels": [
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      }
    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-30T10:45:59Z",
    "created_at": "2012-08-29T14:27:18Z",
    "comments": 4,
    "title": "A missing require is added to fix build. When performing rake test:isolated in actionmailer, test/base_test.rb was break.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7477.diff",
      "patch_url": "https://github.com/rails/rails/pull/7477.patch",
      "html_url": "https://github.com/rails/rails/pull/7477"
    },
    "number": 7477,
    "updated_at": "2012-08-30T10:47:19Z",
    "html_url": "https://github.com/rails/rails/issues/7477",
    "url": "https://api.github.com/repos/rails/rails/issues/7477",
    "id": 6528231
  },
  {
    "body": "I believe indentation was mistakenly wrong, see: https://github.com/rails/rails/blob/master/actionpack/lib/abstract_controller/helpers.rb#L31-38",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ecd20118eccc74fbe790e75a923de7e0",
      "login": "ayrton",
      "avatar_url": "https://secure.gravatar.com/avatar/ecd20118eccc74fbe790e75a923de7e0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ayrton",
      "id": 440926
    },
    "closed_at": "2012-08-29T08:39:35Z",
    "created_at": "2012-08-29T08:27:24Z",
    "comments": 1,
    "title": "Fixed indendation",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7476.diff",
      "patch_url": "https://github.com/rails/rails/pull/7476.patch",
      "html_url": "https://github.com/rails/rails/pull/7476"
    },
    "number": 7476,
    "updated_at": "2012-08-29T08:39:35Z",
    "html_url": "https://github.com/rails/rails/issues/7476",
    "url": "https://api.github.com/repos/rails/rails/issues/7476",
    "id": 6521172
  },
  {
    "body": "Doing  `[\"test1\", \"test2\", \"test3\"].to_sentence` results in: `#=> \"test1, test2, and test3\"` I don't know if this could even be considered a bug but should it not produce: `test1, test2 and test3`?  Or it would be nice if it did.  Edit: I've not modified any of it via the en.yml like you can.  This is default behavior.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "37bf689f37c69732158e782020db84f9",
      "login": "envygeeks",
      "avatar_url": "https://secure.gravatar.com/avatar/37bf689f37c69732158e782020db84f9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/envygeeks",
      "id": 99763
    },
    "closed_at": "2012-08-29T08:43:06Z",
    "created_at": "2012-08-29T07:33:45Z",
    "comments": 4,
    "title": "to_sentence produces \"test1, test2, and test3\".",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7475,
    "updated_at": "2012-08-29T15:44:01Z",
    "html_url": "https://github.com/rails/rails/issues/7475",
    "url": "https://api.github.com/repos/rails/rails/issues/7475",
    "id": 6520395
  },
  {
    "body": "This was added to master in c5fc159, but it'd be nice to have this fix in 3-2-stable too.\n\nSee #6429 for the original pull request.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "233c279c012ebac792aaa805f966cbc7",
      "login": "steveklabnik",
      "avatar_url": "https://secure.gravatar.com/avatar/233c279c012ebac792aaa805f966cbc7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/steveklabnik",
      "id": 27786
    },
    "closed_at": "2012-08-29T07:24:53Z",
    "created_at": "2012-08-29T04:09:29Z",
    "comments": 3,
    "title": "Backport 89ebd28 to 3-2-stable",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7474.diff",
      "patch_url": "https://github.com/rails/rails/pull/7474.patch",
      "html_url": "https://github.com/rails/rails/pull/7474"
    },
    "number": 7474,
    "updated_at": "2012-08-29T18:53:22Z",
    "html_url": "https://github.com/rails/rails/issues/7474",
    "url": "https://api.github.com/repos/rails/rails/issues/7474",
    "id": 6518297
  },
  {
    "body": "In a Rails 3.2.8 app, I've configured Active Mailer to raise configuration errors, in /config/environments/production.rb:\n\n      config.action_mailer.raise_delivery_errors = true\n\nIn the code performing notification:\n\n      begin\n        @user.deliver_activation_instructions!\n      rescue  Exception => e\n        logger.warn \"email delivery error = #{e}\"\n      end\n\nI've also tried looking at the return value:\n\n      mailer_result =  @user.deliver_activation_instructions!\n      logger.info \"email result = #{mailer_result}\"\n\nThen I've purposely input an invalid email address, which results in a Postfix error in /var/log/mail.log:\n\n      ... Recipient address rejected: User unknown in local recipient table (in reply to RCPT TO command) ...\n\nThe call to @user.deliver_activation_instructions! isn't throwing an exception, and the return value is always the email message, regardless of the fact that Postgres isn't delivering the email. It would be cool to be able to detect a failed email delivery attempt. Shouldn't the above configuration option cause that to happen?\n\nThanks!\n\n\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      }
    ],
    "user": {
      "gravatar_id": "acfe9766803c7317f1143d919755d016",
      "login": "Alamoz",
      "avatar_url": "https://secure.gravatar.com/avatar/acfe9766803c7317f1143d919755d016?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Alamoz",
      "id": 905505
    },
    "closed_at": "2012-08-30T02:51:09Z",
    "created_at": "2012-08-28T22:48:16Z",
    "comments": 16,
    "title": "Action Mailer 3.2.8 not raising delivery error",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7473,
    "updated_at": "2012-08-30T03:54:34Z",
    "html_url": "https://github.com/rails/rails/issues/7473",
    "url": "https://api.github.com/repos/rails/rails/issues/7473",
    "id": 6514480
  },
  {
    "body": "I saw the following error in travis's log.\n\n```\n  1) Failure:\n/home/vagrant/builds/rails/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb(TestIsolated) [/home/vagrant/builds/rails/rails/actionpack/test/ts_isolated.rb:12]:\n```\n\nAccording to my investigation, I think dalli requires rails/railtie. But when testing (isolated), we don't load 'rails/railtie' ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-30T15:20:57Z",
    "created_at": "2012-08-28T18:06:46Z",
    "comments": 8,
    "title": "Fixes AP isolated test. Rails::Railtie is required when loading dalli.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7472.diff",
      "patch_url": "https://github.com/rails/rails/pull/7472.patch",
      "html_url": "https://github.com/rails/rails/pull/7472"
    },
    "number": 7472,
    "updated_at": "2012-08-30T16:50:15Z",
    "html_url": "https://github.com/rails/rails/issues/7472",
    "url": "https://api.github.com/repos/rails/rails/issues/7472",
    "id": 6505975
  },
  {
    "body": "I saw the following warnings when executing rake test in activemodel.\n\n```\n...\nwarning: method redefined; discarding old reserved_karmas\n...\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-28T17:40:30Z",
    "created_at": "2012-08-28T17:23:28Z",
    "comments": 3,
    "title": "Fix method redefined warnings.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7470.diff",
      "patch_url": "https://github.com/rails/rails/pull/7470.patch",
      "html_url": "https://github.com/rails/rails/pull/7470"
    },
    "number": 7470,
    "updated_at": "2012-08-28T17:40:30Z",
    "html_url": "https://github.com/rails/rails/issues/7470",
    "url": "https://api.github.com/repos/rails/rails/issues/7470",
    "id": 6504862
  },
  {
    "body": "I saw many deprecation warnings in http://travis-ci.org/#!/rails/rails/jobs/2262213 and in my box.\nI think it's related to 582a7f459990487659886b90e54c22e055c65870 .\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-28T17:05:56Z",
    "created_at": "2012-08-28T17:00:12Z",
    "comments": 1,
    "title": "Fixes warnings when executing rake test in ActionMailer. ",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7469.diff",
      "patch_url": "https://github.com/rails/rails/pull/7469.patch",
      "html_url": "https://github.com/rails/rails/pull/7469"
    },
    "number": 7469,
    "updated_at": "2012-08-29T16:15:32Z",
    "html_url": "https://github.com/rails/rails/issues/7469",
    "url": "https://api.github.com/repos/rails/rails/issues/7469",
    "id": 6504329
  },
  {
    "body": "When I investigated about #7467, I found some tiny problems.\n\nCopy & Paste harmful ;-)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-28T16:32:25Z",
    "created_at": "2012-08-28T16:28:20Z",
    "comments": 0,
    "title": "Tiny fixes in railties/test/application.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7468.diff",
      "patch_url": "https://github.com/rails/rails/pull/7468.patch",
      "html_url": "https://github.com/rails/rails/pull/7468"
    },
    "number": 7468,
    "updated_at": "2012-08-28T16:32:25Z",
    "html_url": "https://github.com/rails/rails/issues/7468",
    "url": "https://api.github.com/repos/rails/rails/issues/7468",
    "id": 6503573
  },
  {
    "body": "If we remove Identity Map, we should add deprecation warnings to 3-2-stable.\nrelated to #7456",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-28T15:28:38Z",
    "created_at": "2012-08-28T15:22:05Z",
    "comments": 5,
    "title": "Added deprecation warnings because IdentityMap was deprecated.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7467.diff",
      "patch_url": "https://github.com/rails/rails/pull/7467.patch",
      "html_url": "https://github.com/rails/rails/pull/7467"
    },
    "number": 7467,
    "updated_at": "2012-08-28T17:54:30Z",
    "html_url": "https://github.com/rails/rails/issues/7467",
    "url": "https://api.github.com/repos/rails/rails/issues/7467",
    "id": 6501731
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ee85853909657f47c8a68e8a9bc7d992",
      "login": "arunagw",
      "avatar_url": "https://secure.gravatar.com/avatar/ee85853909657f47c8a68e8a9bc7d992?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/arunagw",
      "id": 3948
    },
    "closed_at": "2012-08-28T14:50:02Z",
    "created_at": "2012-08-28T14:44:45Z",
    "comments": 0,
    "title": "removed :  warning: `*' interpreted as argument prefix",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7466.diff",
      "patch_url": "https://github.com/rails/rails/pull/7466.patch",
      "html_url": "https://github.com/rails/rails/pull/7466"
    },
    "number": 7466,
    "updated_at": "2012-08-28T14:50:02Z",
    "html_url": "https://github.com/rails/rails/issues/7466",
    "url": "https://api.github.com/repos/rails/rails/issues/7466",
    "id": 6500661
  },
  {
    "body": "When running `rails generate controller --help` an example\nwith creating a (singular) \"CreditCard\" controller is\nshown. The convention is to generate controllers with plural\nnames though.\n\nDue to docrails strict \"no code can be touched whatsoever\"\npolicy I thought I should not push this change to docrails.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a8160507e340d9ad7ee9ce23a8f26e40",
      "login": "wpp",
      "avatar_url": "https://secure.gravatar.com/avatar/a8160507e340d9ad7ee9ce23a8f26e40?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/wpp",
      "id": 942021
    },
    "closed_at": "2012-08-28T12:24:06Z",
    "created_at": "2012-08-28T12:13:07Z",
    "comments": 0,
    "title": "Change generators controller help from singular to plural example.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7465.diff",
      "patch_url": "https://github.com/rails/rails/pull/7465.patch",
      "html_url": "https://github.com/rails/rails/pull/7465"
    },
    "number": 7465,
    "updated_at": "2012-08-28T12:24:06Z",
    "html_url": "https://github.com/rails/rails/issues/7465",
    "url": "https://api.github.com/repos/rails/rails/issues/7465",
    "id": 6497157
  },
  {
    "body": "Currently when client send request to rails with proper `Accept` header rails will return always HTML. When I need `JSON` or other format I can of course add `.(:format)` and rails will recognize this. Why is this the only option?\n\n* I do not want nor need to use :format in routes\n* I use jQuery.getJSON method with cross-domain option `HTTP_X_REQUESTED_WITH` is not set\n* There is a proper Accept header : `application/json, text/javascript, */*; q=0.0`\n* There is respond_to `:json` in controller definition\n* I use `respond_with` in action and give it an object that has `to_json` and `as_json` method implemented\n\nWhen I ask for `JSON` rails should respond with `JSON`.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "98f11c73a95318bbf85e419c1727434d",
      "login": "LTe",
      "avatar_url": "https://secure.gravatar.com/avatar/98f11c73a95318bbf85e419c1727434d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/LTe",
      "id": 160962
    },
    "closed_at": "2012-08-30T17:38:27Z",
    "created_at": "2012-08-28T10:20:57Z",
    "comments": 9,
    "title": "Proper mime negotiation in case of non-ajax request",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7464.diff",
      "patch_url": "https://github.com/rails/rails/pull/7464.patch",
      "html_url": "https://github.com/rails/rails/pull/7464"
    },
    "number": 7464,
    "updated_at": "2012-09-03T15:22:55Z",
    "html_url": "https://github.com/rails/rails/issues/7464",
    "url": "https://api.github.com/repos/rails/rails/issues/7464",
    "id": 6495485
  },
  {
    "body": "I used includes you want to use a LEFT JOIN. However, count_all why I will not be buried. I wrote count_all is embedded directly in the string joins. I did not know whether or specifications bug, I posted.\n\n        # -*- coding: utf-8 -*-\n        require \"active_record\"\n        ActiveRecord::Base.logger = ActiveSupport::BufferedLogger.new(STDOUT)\n        ActiveRecord::Base.logger = nil\n        ActiveSupport::LogSubscriber.colorize_logging = false\n        ActiveRecord::Base.establish_connection(:adapter => \"sqlite3\", :database => \":memory:\")\n        silence_stream(STDOUT) do\n          ActiveRecord::Schema.define do\n            suppress_messages do\n              create_table :users do |t|\n              end\n              create_table :articles do |t|\n                t.belongs_to :user\n              end\n            end\n          end\n        end\n        \n        class User < ActiveRecord::Base\n          has_many :articles\n        end\n        \n        class Article < ActiveRecord::Base\n          belongs_to :user\n        end\n        \n        ActiveRecord::VERSION::STRING # => \"3.2.8\"\n        \n        user1 = User.create!\n        \n        user2 = User.create!\n        user2.articles.create!\n        \n        # ok\n        users = User.select(\"users.*, count(articles.id) as count_all\").joins(:articles).group(\"users.id\")\n        users # => [#<User id: 2>]\n        users.first.count_all # => 1\n        \n        # ok\n        users = User.select(\"users.*, count(articles.id) as count_all\").joins(\"LEFT JOIN articles ON articles.user_id = users.id\").group(\"users.id\")\n        users # => [#<User id: 1>, #<User id: 2>]\n        users.first.count_all # => 0\n        \n        # broken ???\n        users = User.select(\"users.*, count(articles.id) as count_all\").includes(:articles).group(\"users.id\")\n        users # => [#<User id: 1>, #<User id: 2>]\n        users.first.count_all # => \n        # ~> /usr/local/rvm/gems/ruby-1.9.3-p194/gems/activemodel-3.2.8/lib/active_model/attribute_methods.rb:407:in `method_missing': undefined method `count_all' for #<User id: 1> (NoMethodError)\n        # ~> \tfrom /usr/local/rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.2.8/lib/active_record/attribute_methods.rb:149:in `method_missing'\n        # ~> \tfrom -:44:in `<main>'\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "8ea85d4498937e112adb71c89b52cbbe",
      "login": "akicho8",
      "avatar_url": "https://secure.gravatar.com/avatar/8ea85d4498937e112adb71c89b52cbbe?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/akicho8",
      "id": 808955
    },
    "closed_at": "2012-08-28T17:03:49Z",
    "created_at": "2012-08-28T06:12:42Z",
    "comments": 2,
    "title": "name specified in the as are not embedded",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7463,
    "updated_at": "2012-08-28T17:03:49Z",
    "html_url": "https://github.com/rails/rails/issues/7463",
    "url": "https://api.github.com/repos/rails/rails/issues/7463",
    "id": 6491612
  },
  {
    "body": "Before:\n```\n<%= form_tag({action: :authorize, controller: :charm}) do %>\n<%=hidden_field_tag :client_id, @client.id %>\n<%=hidden_field_tag :scope, @client.scope %>\n...\n<% end %>\n```\nnow\n\n```\n<%= form_tag({action: :authorize_accept, controller: :charm}, hidden_data:{client_id: @client.id, scope: @client.scope}) do %>\n...\n<% end %>\n\n```\nWhy adding it as parameter in form_for is a nice solution? because the only purpose of type=hidden is to add some parameters to request, only data payload and there is no difference where will you put this tag inside of form. \nAlso, we already have a ``` <div style=\"margin:0;padding:0;display:inline\">``` to keep all our hidden datas there. \n\n/cc @tenderlove @josevalim ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2881b5d4c082996a62f23055b61956d",
      "login": "homakov",
      "avatar_url": "https://secure.gravatar.com/avatar/d2881b5d4c082996a62f23055b61956d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/homakov",
      "id": 174693
    },
    "closed_at": "2012-08-28T05:50:23Z",
    "created_at": "2012-08-28T00:40:20Z",
    "comments": 5,
    "title": "hidden_data - sugar for hidden tags",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7462.diff",
      "patch_url": "https://github.com/rails/rails/pull/7462.patch",
      "html_url": "https://github.com/rails/rails/pull/7462"
    },
    "number": 7462,
    "updated_at": "2012-08-28T05:50:24Z",
    "html_url": "https://github.com/rails/rails/issues/7462",
    "url": "https://api.github.com/repos/rails/rails/issues/7462",
    "id": 6488493
  },
  {
    "body": "Before:\n```\n<%= form_tag({action: :authorize, controller: :charm}) do %>\n<%=hidden_field_tag :client_id, @client.id %>\n<%=hidden_field_tag :scope, @client.scope %>\n...\n<% end %>\n```\nnow\n\n```\n<%= form_tag({action: :authorize_accept, controller: :charm}, hidden_data:{client_id: @client.id, scope: @client.scope}) do %>\n...\n<% end %>\n\n```\n\nWhy adding it as parameter in form_for is a nice solution? because the only purpose of type=hidden is to add some parameters to request, only data payload and there is no difference where will you put this tag inside of form. \nAlso, we already have a ``` <div style=\"margin:0;padding:0;display:inline\">``` to keep all our hidden datas there. \n\n/cc @tenderlove @josevalim ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2881b5d4c082996a62f23055b61956d",
      "login": "homakov",
      "avatar_url": "https://secure.gravatar.com/avatar/d2881b5d4c082996a62f23055b61956d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/homakov",
      "id": 174693
    },
    "closed_at": "2012-08-28T00:37:11Z",
    "created_at": "2012-08-28T00:26:16Z",
    "comments": 0,
    "title": "Hidden data in form_for tag",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7461.diff",
      "patch_url": "https://github.com/rails/rails/pull/7461.patch",
      "html_url": "https://github.com/rails/rails/pull/7461"
    },
    "number": 7461,
    "updated_at": "2012-08-28T00:37:11Z",
    "html_url": "https://github.com/rails/rails/issues/7461",
    "url": "https://api.github.com/repos/rails/rails/issues/7461",
    "id": 6488304
  },
  {
    "body": "This fixes the order dependency with other tests.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-27T21:48:09Z",
    "created_at": "2012-08-27T21:47:23Z",
    "comments": 0,
    "title": "ensures that the test repairs the validation setup",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7460.diff",
      "patch_url": "https://github.com/rails/rails/pull/7460.patch",
      "html_url": "https://github.com/rails/rails/pull/7460"
    },
    "number": 7460,
    "updated_at": "2012-08-27T21:48:09Z",
    "html_url": "https://github.com/rails/rails/issues/7460",
    "url": "https://api.github.com/repos/rails/rails/issues/7460",
    "id": 6485637
  }
]
}

CLOSED_ISSUES_PAGE_2 = %q{
[
  {
    "body": "This test https://github.com/rails/rails/blob/master/activerecord/test/cases/base_test.rb#L381\nis failing because is not setting `CreditCard.pluralize_table_name` to `false`.\n\nIn this case, i prefer to change to another model that is not in the `GUESSED_CLASSES`\narray.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-28T11:55:33Z",
    "created_at": "2012-08-27T18:57:45Z",
    "comments": 1,
    "title": "fix order dependent test in AR::BasicsTest",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7458.diff",
      "patch_url": "https://github.com/rails/rails/pull/7458.patch",
      "html_url": "https://github.com/rails/rails/pull/7458"
    },
    "number": 7458,
    "updated_at": "2012-08-28T11:55:33Z",
    "html_url": "https://github.com/rails/rails/issues/7458",
    "url": "https://api.github.com/repos/rails/rails/issues/7458",
    "id": 6481558
  },
  {
    "body": "The current logging of sql queries only logs the actual query time which is great for finding slow queries.  Unfortunately, it does not log the record instantiation time, which can be slow due to model bugs or inappropriate usage of callbacks.\n\nWe use this internally to detect when our models are slow due to callbacks, serialization, or any other potentially slow ActiveRecord hooks.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9968b786345739e77c49dc09c4f6514c",
      "login": "jrafanie",
      "avatar_url": "https://secure.gravatar.com/avatar/9968b786345739e77c49dc09c4f6514c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jrafanie",
      "id": 19339
    },
    "closed_at": "2012-08-27T18:01:46Z",
    "created_at": "2012-08-27T17:03:12Z",
    "comments": 4,
    "title": "Added logging of model instantiation.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7457.diff",
      "patch_url": "https://github.com/rails/rails/pull/7457.patch",
      "html_url": "https://github.com/rails/rails/pull/7457"
    },
    "number": 7457,
    "updated_at": "2012-08-28T14:30:43Z",
    "html_url": "https://github.com/rails/rails/issues/7457",
    "url": "https://api.github.com/repos/rails/rails/issues/7457",
    "id": 6478779
  },
  {
    "body": "Example without identity map enabled (everything ok):\n\n    => Booting WEBrick\n    => Rails 3.2.8 application starting in development on http://0.0.0.0:3000\n    => Call with -d to detach\n    => Ctrl-C to shutdown server\n    [2012-08-27 14:52:28] INFO  WEBrick 1.3.1\n    [2012-08-27 14:52:28] INFO  ruby 1.9.3 (2012-04-20) [x86_64-linux]\n    [2012-08-27 14:52:28] INFO  WEBrick::HTTPServer#start: pid=19157 port=3000\n    (GMT+01:00) Berlin\n    2012-08-01 13:32:00 +0200\n    2012-08-01 13:32:00 +0200\n    {\"planned_at\"=>\"2012-08-31 11:32:00\", \"todos_attributes\"=>{\"0\"=>{\"planned_at\"=>\"2012-08-31 11:32:00\", \"title\"=>\"\", \"id\"=>\"2\"}}}\n    2012-08-31 11:32:00 +0200\n    2012-08-31 11:32:00 +0200\n    (GMT+01:00) Berlin\n\n\n    Started GET \"/tasks\" for 127.0.0.1 at 2012-08-27 14:52:28 +0200\n    Processing by TasksController#index as HTML\n      Task Load (1.1ms)  SELECT \"tasks\".* FROM \"tasks\" LIMIT 1\n      Todo Load (0.5ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 LIMIT 1\n      CACHE (0.0ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 LIMIT 1\n       (0.2ms)  BEGIN\n      Todo Load (0.4ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 AND \"todos\".\"id\" IN (2)\n       (0.5ms)  ROLLBACK\n      Todo Load (0.6ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2\n    Completed 500 Internal Server Error in 95ms\n\n    RuntimeError (a):\n      app/models/task.rb:20:in `buggy'\n      app/controllers/tasks_controller.rb:4:in `index'\n\n\nWith identity map enabled (buggy):\n\n    => Booting WEBrick\n    => Rails 3.2.8 application starting in development on http://0.0.0.0:3000\n    => Call with -d to detach\n    => Ctrl-C to shutdown server\n    [2012-08-27 14:53:52] INFO  WEBrick 1.3.1\n    [2012-08-27 14:53:52] INFO  ruby 1.9.3 (2012-04-20) [x86_64-linux]\n    [2012-08-27 14:53:52] INFO  WEBrick::HTTPServer#start: pid=19243 port=3000\n    (GMT+01:00) Berlin\n    2012-08-01 13:32:00 +0200\n    2012-08-01 13:32:00 +0200\n    {\"planned_at\"=>\"2012-08-31 11:32:00\", \"todos_attributes\"=>{\"0\"=>{\"planned_at\"=>\"2012-08-31 11:32:00\", \"title\"=>\"\", \"id\"=>\"2\"}}}\n    2012-08-31 11:32:00 +0200\n    2012-08-31 13:32:00 +0200\n    (GMT+01:00) Berlin\n\n\n    Started GET \"/tasks\" for 127.0.0.1 at 2012-08-27 14:53:54 +0200\n    Processing by TasksController#index as HTML\n      Task Load (1.0ms)  SELECT \"tasks\".* FROM \"tasks\" LIMIT 1\n      Todo Load (0.3ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 LIMIT 1\n      CACHE (0.0ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 LIMIT 1\n      Todo Loaded  From Identity Map (id: 2)\n       (0.1ms)  BEGIN\n      Todo Load (0.6ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2 AND \"todos\".\"id\" IN (2)\n      Todo Loaded  From Identity Map (id: 2)\n       (0.2ms)  ROLLBACK\n      Todo Load (0.4ms)  SELECT \"todos\".* FROM \"todos\" WHERE \"todos\".\"task_id\" = 2\n      Todo Loaded  From Identity Map (id: 2)\n    Completed 500 Internal Server Error in 91ms\n\n    RuntimeError (a):\n      app/models/task.rb:20:in `buggy'\n      app/controllers/tasks_controller.rb:4:in `index'\n\n\nAs you can see the `planned_at` of the todo is set to `2012-08-31 13:32:00 +0200` instead of the correct value of `2012-08-31 11:32:00 +0200`.\n\nThe models are really simple, the controller index action contains nothing but `Task.buggy`.\n\n    class Task < ActiveRecord::Base\n      has_many :todos\n\n      accepts_nested_attributes_for :todos\n\n      validates :title, :presence => true\n      validates :planned_at, :presence => true\n\n      def self.buggy\n        t = Task.first\n        puts Time.zone\n        puts t.planned_at\n        puts t.todos.first.planned_at\n        data = {\"planned_at\"=>\"2012-08-31 11:32:00\", \"todos_attributes\"=>{\"0\"=>{\"planned_at\"=>\"2012-08-31 11:32:00\", \"title\"=>\"\", \"id\"=>\"#{t.todos.first.id}\"}}}\n        puts data.inspect\n        t.update_attributes(data)\n        puts t.planned_at\n        puts t.todos.first.planned_at\n        puts Time.zone\n        raise \"a\"\n      end\n    end\n\n    class Todo < ActiveRecord::Base\n      belongs_to :task\n\n      validates :title, :presence => true\n      validates :planned_at, :presence => true\n    end\n\nI uploaded a minimal example application here https://github.com/gucki/rails-nested-attributes-bug\nStart with `rake db:setup; rails s` and then access `http://127.0.0.1:3000/tasks`.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "82890582bc10ffebe1ae4c7127effa01",
      "login": "gucki",
      "avatar_url": "https://secure.gravatar.com/avatar/82890582bc10ffebe1ae4c7127effa01?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/gucki",
      "id": 175494
    },
    "closed_at": "2012-08-28T17:55:21Z",
    "created_at": "2012-08-27T13:05:18Z",
    "comments": 4,
    "title": "Nested attributes timezone bug when identity map enabled",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7456,
    "updated_at": "2012-08-28T17:55:21Z",
    "html_url": "https://github.com/rails/rails/issues/7456",
    "url": "https://api.github.com/repos/rails/rails/issues/7456",
    "id": 6473076
  },
  {
    "body": "One code uses for two different tests. Duplicated code used for different test-cases. As example\nhttps://github.com/rails/rails/blob/master/activerecord/test/cases/mass_assignment_security_test.rb#L393 and https://github.com/rails/rails/blob/master/activerecord/test/cases/mass_assignment_security_test.rb#L403.\n\nThat is bug because in this tests should be used instances of different models.\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "cebfabb19814410151c8375b798643df",
      "login": "aderyabin",
      "avatar_url": "https://secure.gravatar.com/avatar/cebfabb19814410151c8375b798643df?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aderyabin",
      "id": 88676
    },
    "closed_at": "2012-08-27T10:42:35Z",
    "created_at": "2012-08-27T09:17:48Z",
    "comments": 3,
    "title": "refactored mass assignment security tests",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7454.diff",
      "patch_url": "https://github.com/rails/rails/pull/7454.patch",
      "html_url": "https://github.com/rails/rails/pull/7454"
    },
    "number": 7454,
    "updated_at": "2012-08-27T10:42:35Z",
    "html_url": "https://github.com/rails/rails/issues/7454",
    "url": "https://api.github.com/repos/rails/rails/issues/7454",
    "id": 6469442
  },
  {
    "body": "Imo the migration generated by `rake db:sessions:create ` should be improved.\n\nAs it's now:\n\n    class AddSessionsTable < ActiveRecord::Migration\n      def change\n        create_table :sessions do |t|\n          t.string :session_id, :null => false\n          t.text :data\n          t.timestamps\n        end\n\n        add_index :sessions, :session_id\n        add_index :sessions, :updated_at\n      end\n    end\n\n\nMy suggestion:\n\n\n    class AddSessionsTable < ActiveRecord::Migration\n      def change\n        create_table :sessions do |t|\n          t.string :session_id, :null => false\n          t.text :data, :null => false\n          t.timestamps :null => false\n        end\n\n        add_index :sessions, :session_id, :unique => true\n        add_index :sessions, :updated_at\n      end\n    end\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "82890582bc10ffebe1ae4c7127effa01",
      "login": "gucki",
      "avatar_url": "https://secure.gravatar.com/avatar/82890582bc10ffebe1ae4c7127effa01?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/gucki",
      "id": 175494
    },
    "closed_at": "2012-08-27T09:43:38Z",
    "created_at": "2012-08-27T08:50:24Z",
    "comments": 2,
    "title": "Improve schema of auto generated sessions table",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7453,
    "updated_at": "2012-08-27T10:20:33Z",
    "html_url": "https://github.com/rails/rails/issues/7453",
    "url": "https://api.github.com/repos/rails/rails/issues/7453",
    "id": 6468999
  },
  {
    "body": "Right now no memcache test running because no memcache gem left in repo.\n\n\nThere is one test failing in my local need help to fix that.\n\n```ruby\n\n  1) Error:\ntest_deserializes_unloaded_class(MemCacheStoreTest):\nDalli::DalliError: Unable to unmarshal value: undefined class/module SessionAutoloadTest::\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/server.rb:305:in `rescue in deserialize'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/server.rb:301:in `deserialize'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/server.rb:345:in `generic_response'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/server.rb:155:in `get'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/server.rb:48:in `request'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/options.rb:18:in `block in request'\n    /Users/arunagw/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/monitor.rb:211:in `mon_synchronize'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/options.rb:17:in `request'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/client.rb:251:in `perform'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/dalli/client.rb:50:in `get'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/dalli-2.1.0/lib/rack/session/dalli.rb:28:in `get_session'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/rack-1.4.1/lib/rack/session/abstract/id.rb:246:in `load_session'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/session/abstract_store.rb:43:in `block in load_session'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/session/abstract_store.rb:51:in `stale_session_check!'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/session/abstract_store.rb:43:in `load_session'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/request/session.rb:161:in `load!'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/request/session.rb:153:in `load_for_read!'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/request/session.rb:79:in `[]'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:21:in `get_session_value'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/implicit_render.rb:4:in `send_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/abstract_controller/base.rb:179:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/rendering.rb:10:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/abstract_controller/callbacks.rb:18:in `block in process_action'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/callbacks.rb:337:in `_run__500462852611207954__process_action__callbacks'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/callbacks.rb:74:in `run_callbacks'\n    /Users/arunagw/checkouts/rails/actionpack/lib/abstract_controller/callbacks.rb:17:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/rescue.rb:29:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/instrumentation.rb:30:in `block in process_action'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/notifications.rb:147:in `block in instrument'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/notifications/instrumenter.rb:20:in `instrument'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/notifications.rb:147:in `instrument'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/instrumentation.rb:29:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/params_wrapper.rb:205:in `process_action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/abstract_controller/base.rb:126:in `process'\n    /Users/arunagw/checkouts/rails/actionpack/lib/abstract_controller/rendering.rb:44:in `process'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal.rb:195:in `dispatch'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal/rack_delegation.rb:13:in `dispatch'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal.rb:238:in `block in action'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal.rb:224:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_controller/metal.rb:224:in `call'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/journey-d876c016240d/lib/journey/router.rb:68:in `block in call'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/journey-d876c016240d/lib/journey/router.rb:56:in `each'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/journey-d876c016240d/lib/journey/router.rb:56:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/routing/route_set.rb:620:in `call'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/rack-1.4.1/lib/rack/session/abstract/id.rb:205:in `context'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/rack-1.4.1/lib/rack/session/abstract/id.rb:200:in `call'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/gems/rack-1.4.1/lib/rack/head.rb:9:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/flash.rb:219:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/cookies.rb:345:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/params_parser.rb:21:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/callbacks.rb:337:in `_run__3343764749036863876__call__callbacks'\n    /Users/arunagw/checkouts/rails/activesupport/lib/active_support/callbacks.rb:74:in `run_callbacks'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/callbacks.rb:27:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/middleware/debug_exceptions.rb:19:in `call'\n    /Users/arunagw/checkouts/rails/actionpack/test/abstract_unit.rb:138:in `call'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/rack-test-8153c07db7a9/lib/rack/mock_session.rb:30:in `request'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/rack-test-8153c07db7a9/lib/rack/test.rb:228:in `process_request'\n    /Users/arunagw/checkouts/rails/bundle/ruby/1.9.1/bundler/gems/rack-test-8153c07db7a9/lib/rack/test.rb:123:in `request'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/testing/integration.rb:315:in `process'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/testing/integration.rb:31:in `get'\n    /Users/arunagw/checkouts/rails/actionpack/lib/action_dispatch/testing/integration.rb:349:in `block (2 levels) in <module:Runner>'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:135:in `block (2 levels) in test_deserializes_unloaded_class'\n    /Users/arunagw/checkouts/rails/actionpack/test/abstract_unit.rb:218:in `with_autoload_path'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:134:in `block in test_deserializes_unloaded_class'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:184:in `block in with_test_route_set'\n    /Users/arunagw/checkouts/rails/actionpack/test/abstract_unit.rb:205:in `with_routing'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:174:in `with_test_route_set'\n    /Users/arunagw/checkouts/rails/actionpack/test/dispatch/session/mem_cache_store_test.rb:124:in `test_deserializes_unloaded_class'\n\n\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ee85853909657f47c8a68e8a9bc7d992",
      "login": "arunagw",
      "avatar_url": "https://secure.gravatar.com/avatar/ee85853909657f47c8a68e8a9bc7d992?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/arunagw",
      "id": 3948
    },
    "closed_at": "2012-08-28T12:27:35Z",
    "created_at": "2012-08-27T04:19:02Z",
    "comments": 6,
    "title": "Memcached to dalli for actionpack test.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7452.diff",
      "patch_url": "https://github.com/rails/rails/pull/7452.patch",
      "html_url": "https://github.com/rails/rails/pull/7452"
    },
    "number": 7452,
    "updated_at": "2012-09-01T06:24:09Z",
    "html_url": "https://github.com/rails/rails/issues/7452",
    "url": "https://api.github.com/repos/rails/rails/issues/7452",
    "id": 6466016
  },
  {
    "body": "Ensure class variable is set to nil.\n\nIt prevents the following test to fail:\n\n    def test_do_not_run_the_converter_when_nil_was_set\n      customers(:david).non_blank_gps_location = nil\n      assert_nil Customer.gps_conversion_was_run\n    end\n\nCheck https://github.com/rails/rails/blob/master/activerecord/test/models/customer.rb#L7\nfor more information.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-27T12:36:05Z",
    "created_at": "2012-08-26T21:40:07Z",
    "comments": 0,
    "title": "fix order dependent test in AggregationsTest",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7451.diff",
      "patch_url": "https://github.com/rails/rails/pull/7451.patch",
      "html_url": "https://github.com/rails/rails/pull/7451"
    },
    "number": 7451,
    "updated_at": "2012-08-27T12:36:05Z",
    "html_url": "https://github.com/rails/rails/issues/7451",
    "url": "https://api.github.com/repos/rails/rails/issues/7451",
    "id": 6462002
  },
  {
    "body": "Hello,\n\nI allow myself to open a pull request related to [#6549](https://github.com/rails/rails/pull/6549). This pull request add the ability for the user to pass a `--pry` option when creating a new Rails application adding the pry-rails gem to the project's Gemfile.\n\nHave a nice day.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2d27b53e2eeb6a053552332020628029",
      "login": "robin850",
      "avatar_url": "https://secure.gravatar.com/avatar/2d27b53e2eeb6a053552332020628029?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/robin850",
      "id": 354185
    },
    "closed_at": "2012-08-26T17:05:06Z",
    "created_at": "2012-08-26T16:56:55Z",
    "comments": 1,
    "title": "Add the ability to pass a --pry option to add 'pry-rails' to the Gemfile",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7450.diff",
      "patch_url": "https://github.com/rails/rails/pull/7450.patch",
      "html_url": "https://github.com/rails/rails/pull/7450"
    },
    "number": 7450,
    "updated_at": "2012-08-26T17:05:06Z",
    "html_url": "https://github.com/rails/rails/issues/7450",
    "url": "https://api.github.com/repos/rails/rails/issues/7450",
    "id": 6460015
  },
  {
    "body": "At current moment there is some inconsistency between options +:limit+ and +:reject_if+ - the last can accept symbol that points on instance method, and also procs.\n\nMy patch adds these capabilities to +:limit+ option.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "7d116b912a4fc7986b40d5d0d0d811d6",
      "login": "Mik-die",
      "avatar_url": "https://secure.gravatar.com/avatar/7d116b912a4fc7986b40d5d0d0d811d6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Mik-die",
      "id": 426230
    },
    "closed_at": "2012-08-26T00:55:16Z",
    "created_at": "2012-08-26T00:11:02Z",
    "comments": 3,
    "title": "Allow to pass Symbol or Proc into :limit option of #accepts_nested_attributes_for",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7449.diff",
      "patch_url": "https://github.com/rails/rails/pull/7449.patch",
      "html_url": "https://github.com/rails/rails/pull/7449"
    },
    "number": 7449,
    "updated_at": "2012-08-26T03:52:17Z",
    "html_url": "https://github.com/rails/rails/issues/7449",
    "url": "https://api.github.com/repos/rails/rails/issues/7449",
    "id": 6455543
  },
  {
    "body": "Problem with location script/rails, when using bundler-binstubs and map them into 'script/' folder (bundle install --binstubs ./script). The script/rails replaces with:\n```\n#!/usr/bin/env ruby\n#\n# This file was generated by Bundler.\n#\n# The application 'rails' is installed as part of a gem, and\n# this file is here to facilitate running it.\n#\n\nrequire 'pathname'\nENV['BUNDLE_GEMFILE'] ||= File.expand_path(\"../../Gemfile\",\n  Pathname.new(__FILE__).realpath)\n\nrequire 'rubygems'\nrequire 'bundler/setup'\n\nload Gem.bin_path('railties', 'rails')\n```\n\nAnd any query like 'rails g' is not executed and goes into an infinite loop.\n\nWhen interrupting:\n```\n/home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require': Interrupt\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require'\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/uri.rb:111:in `<top (required)>'\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require'\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/source.rb:1:in `<top (required)>'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/dsl.rb:19:in `initialize'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/dsl.rb:6:in `new'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/dsl.rb:6:in `evaluate'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/definition.rb:18:in `build'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler.rb:135:in `definition'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler.rb:123:in `load'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler.rb:107:in `setup'\n\tfrom /home/kostya/.rvm/gems/ruby-1.9.3-p194@global/gems/bundler-1.1.5/lib/bundler/setup.rb:7:in `<top (required)>'\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require'\n\tfrom /home/kostya/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:36:in `require'\n```\n\nThe 'bin/' i am using for application-bins (bin_script gem), and 'script/' is a natural place for rails utilites scripts (like binstubs: rspec, ...), yet from 2.3 rails. I have hundreds application-bins and don't want mix them with bundler binstubs in bin/. That why i want to use ./script dir.\n\nIs it possible to move script/rails to another place, and replace it with binstub-like script, or fix it somehow?\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e320beed5b9b212d0c478d96a0c0131f",
      "login": "kostya",
      "avatar_url": "https://secure.gravatar.com/avatar/e320beed5b9b212d0c478d96a0c0131f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kostya",
      "id": 95060
    },
    "closed_at": "2012-08-26T01:18:50Z",
    "created_at": "2012-08-26T00:00:44Z",
    "comments": 2,
    "title": "Location script/rails and bundler with binstubs.",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7448,
    "updated_at": "2012-08-26T10:38:57Z",
    "html_url": "https://github.com/rails/rails/issues/7448",
    "url": "https://api.github.com/repos/rails/rails/issues/7448",
    "id": 6455502
  },
  {
    "body": "What do you thing about it?\n\nHope someone will have time to review it, thanks.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b85d2c78cae9885b7f1ad2b5f808a450",
      "login": "etehtsea",
      "avatar_url": "https://secure.gravatar.com/avatar/b85d2c78cae9885b7f1ad2b5f808a450?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/etehtsea",
      "id": 100999
    },
    "closed_at": "2012-09-05T13:03:10Z",
    "created_at": "2012-08-25T18:06:34Z",
    "comments": 6,
    "title": "Modularize postgresql adapter",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7447.diff",
      "patch_url": "https://github.com/rails/rails/pull/7447.patch",
      "html_url": "https://github.com/rails/rails/pull/7447"
    },
    "number": 7447,
    "updated_at": "2012-09-05T13:03:16Z",
    "html_url": "https://github.com/rails/rails/issues/7447",
    "url": "https://api.github.com/repos/rails/rails/issues/7447",
    "id": 6452661
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "608b32640d0fca097b40bc6a28cadc5f",
      "login": "nashby",
      "avatar_url": "https://secure.gravatar.com/avatar/608b32640d0fca097b40bc6a28cadc5f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nashby",
      "id": 200500
    },
    "closed_at": "2012-08-25T15:53:25Z",
    "created_at": "2012-08-25T15:51:17Z",
    "comments": 0,
    "title": "backport #7435",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7446.diff",
      "patch_url": "https://github.com/rails/rails/pull/7446.patch",
      "html_url": "https://github.com/rails/rails/pull/7446"
    },
    "number": 7446,
    "updated_at": "2012-08-25T15:53:25Z",
    "html_url": "https://github.com/rails/rails/issues/7446",
    "url": "https://api.github.com/repos/rails/rails/issues/7446",
    "id": 6451792
  },
  {
    "body": "would \"encrypted\" cookie store be useful? I mean it will be impossible to read on client side w/o encryption key. \n\nBecause currently some people store \"sensitive\" info in session, while it easily can be decoded from base64.\nActually, I did so too - I stored \"path\" to sensitive file there while it was very unpleasant if user get's access to this file. \n\nYes, they cannot write anything into cookie because it's *signed* but at the same time ability to decode this cookie on client side is useless, since it's httpOnly marked.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2881b5d4c082996a62f23055b61956d",
      "login": "homakov",
      "avatar_url": "https://secure.gravatar.com/avatar/d2881b5d4c082996a62f23055b61956d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/homakov",
      "id": 174693
    },
    "closed_at": "2012-08-24T19:51:50Z",
    "created_at": "2012-08-24T19:47:00Z",
    "comments": 2,
    "title": "Encrypted cookie (Feature request)",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7445,
    "updated_at": "2012-08-24T19:52:52Z",
    "html_url": "https://github.com/rails/rails/issues/7445",
    "url": "https://api.github.com/repos/rails/rails/issues/7445",
    "id": 6442575
  },
  {
    "body": "https://github.com/rails/rails/blob/master/activerecord/lib/active_record/connection_adapters/abstract/database_statements.rb#L377\nhttps://github.com/rails/rails/blob/master/activerecord/lib/active_record/connection_adapters/abstract/database_statements.rb#L392\n\nWhy are we logging exceptions and not a message? This seems wrong.\n\nAny thoughts?\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b0a2a3d8eb16d07a28ea57510693bda2",
      "login": "RobertLowe",
      "avatar_url": "https://secure.gravatar.com/avatar/b0a2a3d8eb16d07a28ea57510693bda2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/RobertLowe",
      "id": 601141
    },
    "closed_at": "2012-08-24T20:23:16Z",
    "created_at": "2012-08-24T19:10:31Z",
    "comments": 4,
    "title": "ActiveRecord rollback/commit swallowing exceptions",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7443,
    "updated_at": "2012-08-24T20:36:42Z",
    "html_url": "https://github.com/rails/rails/issues/7443",
    "url": "https://api.github.com/repos/rails/rails/issues/7443",
    "id": 6441835
  },
  {
    "body": "inverse_of does not applies if I use \"includes\" in relation. In example below accessing without includes will NOT cause additional queries, but version with includes will do so.\n\n```ruby\nclass Plan < ActiveRecord::Base\n  has_many :programs, inverse_of: :plan\nend\n\nclass Program < ActiveRecord::Base\n  belongs_to :plan, inverse_of: :programs\n  has_many :user_programs, inverse_of: :program\nend\n\nclass UserProgram < ActiveRecord::Base\n  belongs_to :user\n  belongs_to :program, inverse_of: :user_programs\nend\n\n1.9.3p125 :087 > pl = Plan.first\n  Plan Load (0.1ms)  SELECT \"plans\".* FROM \"plans\" WHERE (plans.created_at > 1) LIMIT 1\n => #<Plan id: 1, created_at: \"2012-07-19 10:27:57\", updated_at: \"2012-07-19 10:27:57\"> \n1.9.3p125 :088 > pl.programs\n  Program Load (0.3ms)  SELECT \"programs\".* FROM \"programs\" WHERE \"programs\".\"plan_id\" = 1\n => [#<Program id: 1, plan_id: 1, created_at: \"2012-07-19 10:28:14\", updated_at: \"2012-07-19 10:28:14\">, #<Program id: 2, plan_id: 1, created_at: \"2012-07-19 10:28:41\", updated_at: \"2012-07-19 10:28:41\">] \n1.9.3p125 :089 > pl.programs.map(&:plan)\n => [#<Plan id: 1, created_at: \"2012-07-19 10:27:57\", updated_at: \"2012-07-19 10:27:57\">, #<Plan id: 1, created_at: \"2012-07-19 10:27:57\", updated_at: \"2012-07-19 10:27:57\">] \n1.9.3p125 :090 > pl.programs.includes(:user_programs)\n  Program Load (0.4ms)  SELECT \"programs\".* FROM \"programs\" WHERE \"programs\".\"plan_id\" = 1\n  UserProgram Load (0.1ms)  SELECT \"user_programs\".* FROM \"user_programs\" WHERE \"user_programs\".\"program_id\" IN (1, 2)\n => [#<Program id: 1, plan_id: 1, created_at: \"2012-07-19 10:28:14\", updated_at: \"2012-07-19 10:28:14\">, #<Program id: 2, plan_id: 1, created_at: \"2012-07-19 10:28:41\", updated_at: \"2012-07-19 10:28:41\">] \n1.9.3p125 :091 > pl.programs.includes(:user_programs).map(&:plan)\n  Program Load (0.4ms)  SELECT \"programs\".* FROM \"programs\" WHERE \"programs\".\"plan_id\" = 1\n  UserProgram Load (0.4ms)  SELECT \"user_programs\".* FROM \"user_programs\" WHERE \"user_programs\".\"program_id\" IN (1, 2)\n  Plan Load (0.3ms)  SELECT \"plans\".* FROM \"plans\" WHERE \"plans\".\"id\" = 1 AND (plans.created_at > 1) LIMIT 1\n  Plan Load (0.3ms)  SELECT \"plans\".* FROM \"plans\" WHERE \"plans\".\"id\" = 1 AND (plans.created_at > 1) LIMIT 1\n => [#<Plan id: 1, created_at: \"2012-07-19 10:27:57\", updated_at: \"2012-07-19 10:27:57\">, #<Plan id: 1, created_at: \"2012-07-19 10:27:57\", updated_at: \"2012-07-19 10:27:57\">]\n\n```\nP.S. Rails 3.2.6, Ruby 1.9.3",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "b7a9682d4568c1313664f46432459f0c",
      "login": "pluff",
      "avatar_url": "https://secure.gravatar.com/avatar/b7a9682d4568c1313664f46432459f0c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/pluff",
      "id": 790802
    },
    "closed_at": "2012-08-26T17:19:59Z",
    "created_at": "2012-08-24T13:22:24Z",
    "comments": 3,
    "title": "inverse_of doesn't work with \"includes\" selections",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7440,
    "updated_at": "2012-08-27T07:46:33Z",
    "html_url": "https://github.com/rails/rails/issues/7440",
    "url": "https://api.github.com/repos/rails/rails/issues/7440",
    "id": 6433295
  },
  {
    "body": "Problem : Edge rails can't bundle\nFixes #7437",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ee85853909657f47c8a68e8a9bc7d992",
      "login": "arunagw",
      "avatar_url": "https://secure.gravatar.com/avatar/ee85853909657f47c8a68e8a9bc7d992?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/arunagw",
      "id": 3948
    },
    "closed_at": "2012-08-24T14:14:27Z",
    "created_at": "2012-08-24T07:27:55Z",
    "comments": 0,
    "title": "We need to have 1-0-stable for joureny gem in edge",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7438.diff",
      "patch_url": "https://github.com/rails/rails/pull/7438.patch",
      "html_url": "https://github.com/rails/rails/pull/7438"
    },
    "number": 7438,
    "updated_at": "2012-08-24T14:14:27Z",
    "html_url": "https://github.com/rails/rails/issues/7438",
    "url": "https://api.github.com/repos/rails/rails/issues/7438",
    "id": 6427501
  },
  {
    "body": "I attempted to start a new project with edge rails using --edge and received the following error.\n\nBundler Version: ```Bundler version 1.1.5```\n\nCommand Executed: ```rails new newfile --skip-test-unit --edge --skip-git --database=postgresql```\n\n```\nBundler could not find compatible versions for gem \"journey\":\n  In Gemfile:\n    rails (>= 0) ruby depends on\n      journey (~> 1.0.4) ruby\n\n    journey (2.0.0.20120723141804)\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "49eb0eb4881b898ad2e464296025ee00",
      "login": "bobbytables",
      "avatar_url": "https://secure.gravatar.com/avatar/49eb0eb4881b898ad2e464296025ee00?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bobbytables",
      "id": 521627
    },
    "closed_at": "2012-08-24T14:14:28Z",
    "created_at": "2012-08-24T03:54:58Z",
    "comments": 1,
    "title": "Edge rails can't bundle",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7437,
    "updated_at": "2012-08-24T14:14:28Z",
    "html_url": "https://github.com/rails/rails/issues/7437",
    "url": "https://api.github.com/repos/rails/rails/issues/7437",
    "id": 6425391
  },
  {
    "body": "This functionality will be available from gem `active_record-session_store` instead. The gem is currently hosted at https://github.com/sikachu/activerecord-session_store, and I'll be pushing to rails/ soon.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f1c4a3bb1606cc4a61711e61e2fe6146",
      "login": "sikachu",
      "avatar_url": "https://secure.gravatar.com/avatar/f1c4a3bb1606cc4a61711e61e2fe6146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sikachu",
      "id": 4912
    },
    "closed_at": "2012-08-24T21:11:46Z",
    "created_at": "2012-08-23T22:27:17Z",
    "comments": 15,
    "title": "Extract ActiveRecord::SessionStore from Rails",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7436.diff",
      "patch_url": "https://github.com/rails/rails/pull/7436.patch",
      "html_url": "https://github.com/rails/rails/pull/7436"
    },
    "number": 7436,
    "updated_at": "2012-08-24T21:11:46Z",
    "html_url": "https://github.com/rails/rails/issues/7436",
    "url": "https://api.github.com/repos/rails/rails/issues/7436",
    "id": 6421406
  },
  {
    "body": "we should take disabled option not only from `html_options` hash but from\n`options` hash too like `build_select` method does it. So\n\ndatetime_select(\"post\", \"updated_at\", { :discard_minute => true }, { :disabled => true })\ndatetime_select(\"post\", \"updated_at\", :discard_minute => true , :disabled => true)\n\nboth these variants work now\n\ncloses #7431",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "608b32640d0fca097b40bc6a28cadc5f",
      "login": "nashby",
      "avatar_url": "https://secure.gravatar.com/avatar/608b32640d0fca097b40bc6a28cadc5f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nashby",
      "id": 200500
    },
    "closed_at": "2012-08-25T16:04:33Z",
    "created_at": "2012-08-23T19:15:00Z",
    "comments": 5,
    "title": "correct handling of date selects when using both disabled and discard options",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7435.diff",
      "patch_url": "https://github.com/rails/rails/pull/7435.patch",
      "html_url": "https://github.com/rails/rails/pull/7435"
    },
    "number": 7435,
    "updated_at": "2012-08-25T16:04:45Z",
    "html_url": "https://github.com/rails/rails/issues/7435",
    "url": "https://api.github.com/repos/rails/rails/issues/7435",
    "id": 6416933
  },
  {
    "body": "This is a cleaner version of #6916.\n\nCloses #3165.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-23T19:04:31Z",
    "created_at": "2012-08-23T17:30:53Z",
    "comments": 3,
    "title": "Model.select takes a variable list of arguments",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7434.diff",
      "patch_url": "https://github.com/rails/rails/pull/7434.patch",
      "html_url": "https://github.com/rails/rails/pull/7434"
    },
    "number": 7434,
    "updated_at": "2012-09-08T11:51:24Z",
    "html_url": "https://github.com/rails/rails/issues/7434",
    "url": "https://api.github.com/repos/rails/rails/issues/7434",
    "id": 6414394
  },
  {
    "body": "Snippet of routes.rb\n\n    namespace :backend do\n      resources :tickets\n    end\n\nThe Controller is generated with scaffolding: \n\n    rails g scaffold_controller backend/tickets index show new create edit update destroy\n\nIt is accessible in development and production mode with the url\n\n    /backend/tickets\n\nBut when running the (scaffolded and unchanged) functional test of this controller, the actions for :destroy, :edit, :show and :update are not found, \n\n    ActionController::RoutingError: No route matches {:controller=>\"backend/tickets\", :action=>\"update\"}\n\nand so on. Did i do something wrong? I applied every hint i found, everythings seems to be in the right place for me. ",
    "milestone": null,
    "assignee": {
      "gravatar_id": "b14001f2b40640dd6cb63f0e8f1f4869",
      "login": "pixeltrix",
      "avatar_url": "https://secure.gravatar.com/avatar/b14001f2b40640dd6cb63f0e8f1f4869?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/pixeltrix",
      "id": 6321
    },
    "labels": [
      {
        "name": "railties",
        "url": "https://api.github.com/repos/rails/rails/labels/railties",
        "color": "8BE06E"
      },
      {
        "name": "reviewed",
        "url": "https://api.github.com/repos/rails/rails/labels/reviewed",
        "color": "008800"
      },
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "bfaf6008b224453fb15fcaddf984dcd9",
      "login": "Anonyfox",
      "avatar_url": "https://secure.gravatar.com/avatar/bfaf6008b224453fb15fcaddf984dcd9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Anonyfox",
      "id": 1140758
    },
    "closed_at": "2012-08-23T18:04:45Z",
    "created_at": "2012-08-23T16:45:04Z",
    "comments": 2,
    "title": "Test of namespaced Controller fails",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7433,
    "updated_at": "2012-08-23T18:04:45Z",
    "html_url": "https://github.com/rails/rails/issues/7433",
    "url": "https://api.github.com/repos/rails/rails/issues/7433",
    "id": 6413323
  },
  {
    "body": "We always see the follwing warning, when executing `rake test_mysql`\n\n```\n...warning: instance variable errno not initialized...\n```\n\nI know we shouldn't hide warnings, but I guess that development for mysql gem is not active.\n\nBTW:\naccording to https://github.com/luislavena/mysql-gem/blob/master/ext/mysql_api/mysql.c#L1873\nand https://github.com/luislavena/mysql-gem/blob/master/ext/mysql_api/mysql.c#L171, we can't access this iv ?",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-09-10T15:51:26Z",
    "created_at": "2012-08-23T12:31:26Z",
    "comments": 7,
    "title": "Suppress  annoy warning, when executing AR's testcases.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7432.diff",
      "patch_url": "https://github.com/rails/rails/pull/7432.patch",
      "html_url": "https://github.com/rails/rails/pull/7432"
    },
    "number": 7432,
    "updated_at": "2012-09-10T15:51:38Z",
    "html_url": "https://github.com/rails/rails/issues/7432",
    "url": "https://api.github.com/repos/rails/rails/issues/7432",
    "id": 6406663
  },
  {
    "body": "### Short version:\n\nWhen using a form helper on Rails 3.2.8 that generates multiple-SELECTs for multiparameter attributes (e.g. `f.datetime_select`) in combination with the `:disabled` option and not showing all of the SELECTs (e.g. by using `:discard_minute => true`), it fails to disable the hidden-fields that are created as placeholders for the discarded-fields.\n\n### To replicate:\n\n* Create a new Rails project (I'm using 3.2.8); run `bundle install` and all that jazz.\n* Scaffold a resource: `rails generate scaffold Thing deetee:datetime disabled_deetee:datetime`. Run `db:migrate`, etc.\n* Apply the following patch to `app/views/things/_form.html.erb`:\n\n```\n-    <%= f.datetime_select :disabled_deetee %>\n+    <%= f.datetime_select :disabled_deetee, :discard_minute => true, :disabled => true %>\n```\n\n* Go to `/things/new`, and submit the form.\n* Note the following in the logs:\n\n```\nStarted POST \"/things\" for 127.0.0.1 at 2012-08-23 12:08:44 +0100\nProcessing by ThingsController#create as HTML\n  Parameters: {\"utf8\"=>\"✓\", \"authenticity_token\"=>\"x5aiRvh4DilTiiNDm6y6qU7zqBjCUoxTy3hQNBzFVks=\", \"thing\"=>{\"deetee(1i)\"=>\"2012\", \"deetee(2i)\"=>\"8\", \"deetee(3i)\"=>\"23\", \"deetee(4i)\"=>\"11\", \"deetee(5i)\"=>\"08\", \"disabled_deetee(5i)\"=>\"8\"}, \"commit\"=>\"Create Thing\"}\nCompleted 500 Internal Server Error in 2ms\n\nActiveRecord::MultiparameterAssignmentErrors (1 error(s) on assignment of multiparameter attributes):\n  app/controllers/things_controller.rb:43:in `new'\n  app/controllers/things_controller.rb:43:in `create'\n```\n...specifically, note that ` \"disabled_deetee(5i)\"=>\"8\"` is posted.\n\nThe problem seems to be that the following (relevant) HTML is generated (with the `<option>s` removed for readability):\n\n```html\n<div class=\"field\">\n  <label for=\"thing_disabled_deetee\">Disabled deetee</label><br />\n  <select disabled=\"disabled\" id=\"thing_disabled_deetee_1i\" name=\"thing[disabled_deetee(1i)]\">...</select>\n  <select disabled=\"disabled\" id=\"thing_disabled_deetee_2i\" name=\"thing[disabled_deetee(2i)]\">...</select>\n  <select disabled=\"disabled\" id=\"thing_disabled_deetee_3i\" name=\"thing[disabled_deetee(3i)]\">...</select>\n   &mdash; <select disabled=\"disabled\" id=\"thing_disabled_deetee_4i\" name=\"thing[disabled_deetee(4i)]\">...</select>\n  <input id=\"thing_disabled_deetee_5i\" name=\"thing[disabled_deetee(5i)]\" type=\"hidden\" value=\"19\" />\n</div>\n```\n...and I believe that the `<input type=\"hidden\">` should **also** have a `disabled=\"disabled\"` attribute.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "98bb270ad14fde81c6d16583a9939f39",
      "login": "nickgrim",
      "avatar_url": "https://secure.gravatar.com/avatar/98bb270ad14fde81c6d16583a9939f39?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nickgrim",
      "id": 8376
    },
    "closed_at": "2012-08-25T15:53:26Z",
    "created_at": "2012-08-23T11:26:12Z",
    "comments": 0,
    "title": "Incorrect handling of multi-parameter SELECTs when using both disabled and discard_foo",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7431,
    "updated_at": "2012-08-25T15:53:26Z",
    "html_url": "https://github.com/rails/rails/issues/7431",
    "url": "https://api.github.com/repos/rails/rails/issues/7431",
    "id": 6405124
  },
  {
    "body": "This is a simiral issue with **Issue #3927: Warning: regexp match /.../n against to UTF-8 string**\n\nIn rails 3.0.17 there was a change in active_support/core_ext/string/output_safety.rb where the gsub of the html_escape method was changed from:\n\n    s.to_s.gsub(/&/, \"&\").gsub(/\\\"/, \"\"\").gsub(/>/, \">\").gsub(/</, \"<\").html_safe\n\nto:\n\n    s.gsub(/[&\"'><]/n) { |special| HTML_ESCAPE[special] }.html_safe\n\nThis changed introduced this warning problem for ruby 1.9.x. I saw that this problem was fixed in the latest rails 3.1-stable by using different implemetations of the html_escape method for ruby 1.8 and ruby 1.9.\n\nSo, the simplest solution would be to backport the whole method implementation to rails 3.0 and not only the single line that I mentioned above.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f7545ccaf821f5b281a2c03cceddb1b",
      "login": "astathopoulos",
      "avatar_url": "https://secure.gravatar.com/avatar/1f7545ccaf821f5b281a2c03cceddb1b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/astathopoulos",
      "id": 827828
    },
    "closed_at": "2012-08-23T16:19:22Z",
    "created_at": "2012-08-23T10:37:14Z",
    "comments": 9,
    "title": "warning: regexp match /.../n against to UTF-8 string in rails 3.0.17",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7430,
    "updated_at": "2012-09-07T18:33:45Z",
    "html_url": "https://github.com/rails/rails/issues/7430",
    "url": "https://api.github.com/repos/rails/rails/issues/7430",
    "id": 6404020
  },
  {
    "body": "Since the rails master branch should be tested with the latest version of ruby-oci8.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e2cb998e15d8e8fdef4f11a1f510fe74",
      "login": "yahonda",
      "avatar_url": "https://secure.gravatar.com/avatar/e2cb998e15d8e8fdef4f11a1f510fe74?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/yahonda",
      "id": 73684
    },
    "closed_at": "2012-08-23T11:21:57Z",
    "created_at": "2012-08-23T01:35:16Z",
    "comments": 2,
    "title": "Use the latest ruby-oci8 with Oracle enhanced adapter",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7429.diff",
      "patch_url": "https://github.com/rails/rails/pull/7429.patch",
      "html_url": "https://github.com/rails/rails/pull/7429"
    },
    "number": 7429,
    "updated_at": "2012-08-23T11:22:19Z",
    "html_url": "https://github.com/rails/rails/issues/7429",
    "url": "https://api.github.com/repos/rails/rails/issues/7429",
    "id": 6395436
  },
  {
    "body": "When trying to render a template, I was struck with the following error\n\nundefined method `sub!' for #< Pathname:/api/v2/error.xml.builder >\n\n.../.rvm/gems/ruby-1.9.3-p194@statsmix/gems/actionpack-3.2.8/lib/action_controller/metal/compatibility.rb:49:in `render_to_body'\n.../.rvm/gems/ruby-1.9.3-p194@statsmix/gems/actionpack-3.2.8/lib/abstract_controller/rendering.rb:88:in `render'\n.../.rvm/gems/ruby-1.9.3-p194@statsmix/gems/actionpack-3.2.8/lib/action_controller/metal/rendering.rb:16:in `render'\n.../.rvm/gems/ruby-1.9.3-p194@statsmix/gems/actionpack-3.2.8/lib/action_controller/metal/instrumentation.rb:40:in `block (2 levels) in render'\n.../.rvm/gems/ruby-1.9.3-p194@statsmix/gems/activesupport-3.2.8/lib/active_support/core_ext/benchmark.rb:5:in `block in ms'\n\nI fixed the error by adding \"to_s\" after the 'sub!' method in lib/action_controller/metal/compatibility.rb:49.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e8de73afca9cb11097df2fda0943c0df",
      "login": "peterklipfel",
      "avatar_url": "https://secure.gravatar.com/avatar/e8de73afca9cb11097df2fda0943c0df?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/peterklipfel",
      "id": 1581318
    },
    "closed_at": "2012-08-22T21:49:47Z",
    "created_at": "2012-08-22T21:24:56Z",
    "comments": 1,
    "title": "trouble rendering - fixable with 'to_s'",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7427,
    "updated_at": "2012-08-22T21:49:47Z",
    "html_url": "https://github.com/rails/rails/issues/7427",
    "url": "https://api.github.com/repos/rails/rails/issues/7427",
    "id": 6391239
  },
  {
    "body": "Fixes encoding of 4 byte (> 0xFFFF) unicode characters to JSON.  Backport of request on master.  Fixes issue #3727",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a8d99d9d17ed9fd6c270efecb0c62c5f",
      "login": "zbskii",
      "avatar_url": "https://secure.gravatar.com/avatar/a8d99d9d17ed9fd6c270efecb0c62c5f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/zbskii",
      "id": 178036
    },
    "closed_at": "2012-08-22T22:22:45Z",
    "created_at": "2012-08-22T21:19:42Z",
    "comments": 3,
    "title": "Fixes encoding of 4 byte unicode characters to JSON",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7426.diff",
      "patch_url": "https://github.com/rails/rails/pull/7426.patch",
      "html_url": "https://github.com/rails/rails/pull/7426"
    },
    "number": 7426,
    "updated_at": "2012-08-22T22:49:40Z",
    "html_url": "https://github.com/rails/rails/issues/7426",
    "url": "https://api.github.com/repos/rails/rails/issues/7426",
    "id": 6391110
  },
  {
    "body": "This allows to set a custom response (e.g. 400) when `ParamsParser` raises an exception when parsing request params. One can do it by swapping the default `ActionDispatch::ParamsParser`:\n\n```ruby\nconfig.middleware.swap ActionDispatch::ParamsParser, \n                       ActionDispatch::ParamsParser, {}, lambda { |e| [400, {}, [\"Bad request\"]]}\n```\n\nThis is still a bit awkward, so it could be further simplified to e.g. \n```ruby\nconfig.action_dispatch.params_parser_error_handler = lambda { ... }\n```\nbut it's not implemented in this patch.\n\nWithout this patch it's of course still possible to return custom response, however slightly more difficult. Here's one of possible solutions:\n\n```ruby\nclass MyParamsParser < ActionDispatch::ParamsParser\n  def call\n    super\n  rescue MultiJson::DecodeError\n    [400, {}, [\"Bad Request\"]]\n  end\nend\n\nconfig.middleware.swap ActionDispatch::ParamsParser, MyParamsParser\n```\n\nThe other question is why Rails doesn't return 400 by default instead of 500 when parsing request params fails :)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2b2b07fe8688479d2559704d4bf8a264",
      "login": "szimek",
      "avatar_url": "https://secure.gravatar.com/avatar/2b2b07fe8688479d2559704d4bf8a264?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/szimek",
      "id": 9873
    },
    "closed_at": "2012-08-23T23:16:03Z",
    "created_at": "2012-08-22T20:13:57Z",
    "comments": 8,
    "title": "Allow to set custom error handler for ActionDispatch::ParamsParser.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7424.diff",
      "patch_url": "https://github.com/rails/rails/pull/7424.patch",
      "html_url": "https://github.com/rails/rails/pull/7424"
    },
    "number": 7424,
    "updated_at": "2012-08-23T23:16:03Z",
    "html_url": "https://github.com/rails/rails/issues/7424",
    "url": "https://api.github.com/repos/rails/rails/issues/7424",
    "id": 6387642
  },
  {
    "body": "This allows us to make alterations to the generated routes based on the\nscope of the current mapper, and otherwise allows us to move larger\nblocks of concerns out of the routes file, altogether.\n\nI'm not really convinced of the whole concerns idea, but it seems at least that if we implement it, we should have it allow for separation of concerns.\n\nThis seems in keeping with @dhh's perceived benefit of reducing noise in the routes.rb file, while enhancing the already existing functionality.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "2274a7476f6d2ac7aedcdec0651d0542",
      "login": "ernie",
      "avatar_url": "https://secure.gravatar.com/avatar/2274a7476f6d2ac7aedcdec0651d0542?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ernie",
      "id": 14947
    },
    "closed_at": "2012-09-04T15:28:25Z",
    "created_at": "2012-08-22T14:33:21Z",
    "comments": 8,
    "title": "Allow routing concerns to accept a callable",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7422.diff",
      "patch_url": "https://github.com/rails/rails/pull/7422.patch",
      "html_url": "https://github.com/rails/rails/pull/7422"
    },
    "number": 7422,
    "updated_at": "2012-09-04T15:28:25Z",
    "html_url": "https://github.com/rails/rails/issues/7422",
    "url": "https://api.github.com/repos/rails/rails/issues/7422",
    "id": 6378705
  },
  {
    "body": "```bash\nrails g migration add_statistic_updated_at:datetime\n\ncreate    db/migrate/20120822103649_add_statistic_updated_at:datetime.rb\n\nrake db:migrate\n\nllegal name for migration file: ...db/migrate/20120822103649_add_statistic_updated_at:datetime.rb\n\t(only lower case letters, numbers, and '_' allowed)\n```\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "757fb0d5ec7560b6f25f5bd98eadc020",
      "login": "releu",
      "avatar_url": "https://secure.gravatar.com/avatar/757fb0d5ec7560b6f25f5bd98eadc020?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/releu",
      "id": 348907
    },
    "closed_at": "2012-09-06T20:03:10Z",
    "created_at": "2012-08-22T11:35:07Z",
    "comments": 17,
    "title": "Ensure valid migration filename on generating migration",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7419.diff",
      "patch_url": "https://github.com/rails/rails/pull/7419.patch",
      "html_url": "https://github.com/rails/rails/pull/7419"
    },
    "number": 7419,
    "updated_at": "2012-09-07T12:36:04Z",
    "html_url": "https://github.com/rails/rails/issues/7419",
    "url": "https://api.github.com/repos/rails/rails/issues/7419",
    "id": 6374911
  },
  {
    "body": "When dealing with legacy or read-only databases schemas, sometimes you need to tell Rails to ignore one or more columns.  Or, you have meta-columns that are used by a separate daemon or app, but you don't want them cluttering up your rails app. \n\n`ignore_columns` interfaces cleanly right at the point where the column names are cached by ActiveRecord, using a simple `reject` call.  \n\nThe specific case I built this for was a read-only app on top of an AuthLogic database structure.  AuthLogic uses `respond_to?(:column)` calls throughout to determine whether to enable a certain piece of functionality.  This works great with a 1-app-1-database relationship, but in this case, some functionality needed to be enabled on one app, but not the other: specifically the \"increment failed login count\" module.  `ignore_column :failed_login_count` would be by far the cleanest way to workaround this.\n\nVarious monkey-patches floating around Stack Overflow: \n* [How can I permanently ignore a database column in my ActiveRecord::Base class? — Stack Overflow](http://stackoverflow.com/questions/4911174/how-can-i-permanently-ignore-a-database-column-in-my-activerecordbase-class) \n* [How can I use ActiveRecord on a database that has a column named 'attribute'? (DangerousAttributeError)](http://stackoverflow.com/questions/5428987/how-can-i-use-activerecord-on-a-database-that-has-a-column-named-attribute-d?rq=1)\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f21ccf17244e72968994223304e4f802",
      "login": "nthj",
      "avatar_url": "https://secure.gravatar.com/avatar/f21ccf17244e72968994223304e4f802?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nthj",
      "id": 245869
    },
    "closed_at": "2012-08-22T11:22:52Z",
    "created_at": "2012-08-22T08:16:00Z",
    "comments": 5,
    "title": "Add ignore_columns to ActiveRecord",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7417.diff",
      "patch_url": "https://github.com/rails/rails/pull/7417.patch",
      "html_url": "https://github.com/rails/rails/pull/7417"
    },
    "number": 7417,
    "updated_at": "2012-08-22T21:40:46Z",
    "html_url": "https://github.com/rails/rails/issues/7417",
    "url": "https://api.github.com/repos/rails/rails/issues/7417",
    "id": 6371647
  },
  {
    "body": "For example:\nrails generate controller foo/bar index\n\nshould generate:\n\n```ruby\nget 'foo/bar/index'\n```\n\npreviously it generated:\n\n```ruby\nget 'bar/index'\n```\n\nPlease let me know if this is a faulty assumption of mine or whether further work is needed (aka properly nesting inside of scope(s) or something).  Or whether this would be better on the master branch - I picked 3-2-stable because I consider it a bug.\n\n:heart: Thanks!",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1d676127a3e4c0531e2d37dabef0a12d",
      "login": "parndt",
      "avatar_url": "https://secure.gravatar.com/avatar/1d676127a3e4c0531e2d37dabef0a12d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/parndt",
      "id": 10128
    },
    "closed_at": "2012-08-22T11:38:23Z",
    "created_at": "2012-08-22T05:06:06Z",
    "comments": 2,
    "title": "Route to the full namespaced resource when generating a controller.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7414.diff",
      "patch_url": "https://github.com/rails/rails/pull/7414.patch",
      "html_url": "https://github.com/rails/rails/pull/7414"
    },
    "number": 7414,
    "updated_at": "2012-08-22T21:47:45Z",
    "html_url": "https://github.com/rails/rails/issues/7414",
    "url": "https://api.github.com/repos/rails/rails/issues/7414",
    "id": 6369452
  },
  {
    "body": "Suggest user a better way to generate a secret token via the available `rake secret` command from Rails.\n\nBetter formatting for easier readable too.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a955103782890eb2990826141b60d4ad",
      "login": "siong1987",
      "avatar_url": "https://secure.gravatar.com/avatar/a955103782890eb2990826141b60d4ad?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/siong1987",
      "id": 5866
    },
    "closed_at": "2012-08-22T11:33:51Z",
    "created_at": "2012-08-22T03:42:07Z",
    "comments": 1,
    "title": "remind user a good way to generate a secret code.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7413.diff",
      "patch_url": "https://github.com/rails/rails/pull/7413.patch",
      "html_url": "https://github.com/rails/rails/pull/7413"
    },
    "number": 7413,
    "updated_at": "2012-08-22T11:33:56Z",
    "html_url": "https://github.com/rails/rails/issues/7413",
    "url": "https://api.github.com/repos/rails/rails/issues/7413",
    "id": 6368669
  },
  {
    "body": "Hello friends,\n\nafter upgrading my Mac OS 10.7 to 10.8, I'm getting the error:\n\n    $ rake db:create\n    rake aborted!\n    dlopen(/Users/rodrigomartins/.rvm/gems/ruby-1.9.3-p194/gems/pg-0.14.0/lib/pg_ext.bundle, 9): Library \n    not loaded:   @loader_path/../lib/libssl.dylib\n    Referenced from: /usr/lib/libpq.5.dylib\n    Reason: Incompatible library version: libpq.5.dylib requires version 1.0.0 or later, but libssl.0.9.8.dylib \n    provides version 0.9.8 -   /Users/rodrigomartins/.rvm/gems/ruby-1.9.3-p194/gems/pg-0.14.0/lib/pg_ext.bundle\n\n    (See full trace by running task with --trace)\n\nI uninstalled rvm, and installed again, the projects in Ruby, are functioning. However, projects in rails, when run command:\n\n    rake db: create\n\nReturns the error:\n\n\n    $ rake db:create\n    rake aborted!\n    dlopen(/Users/rodrigomartins/.rvm/gems/ruby-1.9.3-p194/gems/pg-0.14.0/lib/pg_ext.bundle, 9): Library \n    not loaded:   @loader_path/../lib/libssl.dylib\n    Referenced from: /usr/lib/libpq.5.dylib\n    Reason: Incompatible library version: libpq.5.dylib requires version 1.0.0 or later, but libssl.0.9.8.dylib \n    provides version 0.9.8 -   /Users/rodrigomartins/.rvm/gems/ruby-1.9.3-p194/gems/pg-0.14.0/lib/pg_ext.bundle\n\n    (See full trace by running task with --trace)\n\n\nsomeone had this error?\n\nwhat can I do to resolve this?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "38a5304eddfa2ff08657a3c3f64067d7",
      "login": "rrmartins",
      "avatar_url": "https://secure.gravatar.com/avatar/38a5304eddfa2ff08657a3c3f64067d7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rrmartins",
      "id": 455676
    },
    "closed_at": "2012-08-22T11:07:28Z",
    "created_at": "2012-08-22T03:33:45Z",
    "comments": 3,
    "title": "Error with gem pg and rails version 3.2.8",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7412,
    "updated_at": "2012-08-22T11:07:28Z",
    "html_url": "https://github.com/rails/rails/issues/7412",
    "url": "https://api.github.com/repos/rails/rails/issues/7412",
    "id": 6368599
  },
  {
    "body": "This fixes [#7404](https://github.com/rails/rails/issues/7404)\n\n* This exception is thrown only when include_blank => true and /or prompt options are added.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "cf0c4e31ad2ab024bacd079c7dca3b4b",
      "login": "sandeepravi",
      "avatar_url": "https://secure.gravatar.com/avatar/cf0c4e31ad2ab024bacd079c7dca3b4b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sandeepravi",
      "id": 804922
    },
    "closed_at": "2012-08-21T16:37:14Z",
    "created_at": "2012-08-21T16:34:47Z",
    "comments": 0,
    "title": "option_tags coerced to \"\" instead of nil",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7410.diff",
      "patch_url": "https://github.com/rails/rails/pull/7410.patch",
      "html_url": "https://github.com/rails/rails/pull/7410"
    },
    "number": 7410,
    "updated_at": "2012-08-21T16:37:14Z",
    "html_url": "https://github.com/rails/rails/issues/7410",
    "url": "https://api.github.com/repos/rails/rails/issues/7410",
    "id": 6355439
  },
  {
    "body": "I added 3rd argument to AR::Result#initialize, and removed mysql/postgresql's own Result class.\nIf we add the 3rd argument, inherited Result class is unnecessary.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-21T16:28:57Z",
    "created_at": "2012-08-21T16:27:14Z",
    "comments": 0,
    "title": "Refactor AR::Result or inherits. Because we have redundant codes about column_types.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7409.diff",
      "patch_url": "https://github.com/rails/rails/pull/7409.patch",
      "html_url": "https://github.com/rails/rails/pull/7409"
    },
    "number": 7409,
    "updated_at": "2012-08-21T16:28:57Z",
    "html_url": "https://github.com/rails/rails/issues/7409",
    "url": "https://api.github.com/repos/rails/rails/issues/7409",
    "id": 6355249
  },
  {
    "body": "This pull request addresses two failures tested with MySQL 5.6.6 m9 (milestone 9).\n\n```ruby\n$ mysql --version\nmysql  Ver 14.14 Distrib 5.6.6-m9, for Linux (x86_64) using  EditLine wrapper\n```\n\n- Failure with mysql adapter\n\n```ruby\n$ rake test_mysql\n\n... snip ...\nFinished tests in 199.465809s, 17.8427 tests/s, 52.2947 assertions/s.\n\n  1) Failure:\ntest_mysql_strict_mode_disabled(MysqlConnectionTest) [/home/yahonda/git/rails/activerecord/test/cases/adapters/mysql/connection_test.rb:135]:\nExpected: [[\"\"]]\n  Actual: [[\"NO_ENGINE_SUBSTITUTION\"]]\n\n3559 tests, 10431 assertions, 1 failures, 0 errors, 6 skips\nrake aborted!\nCommand failed with status (1): [/home/yahonda/.rvm/rubies/ruby-1.9.3-p194/...]\n\nTasks: TOP => test_mysql\n(See full trace by running task with --trace)\n$ \n```\n\n- Failure with mysql2 adapter\n\n```ruby\n\n$ rake test_mysql2\n\n... snip ...\nFinished tests in 166.461722s, 21.3683 tests/s, 62.6330 assertions/s.\n\n1) Failure:\ntest_mysql_strict_mode_disabled(MysqlConnectionTest) [/home/yahonda/git/rails/activerecord/test/cases/adapters/mysql2/connection_test.rb:51]:\nExpected: [[\"\"]]\nActual: [[\"NO_ENGINE_SUBSTITUTION\"]]\n\n3557 tests, 10426 assertions, 1 failures, 0 errors, 18 skips\nrake aborted!\nCommand failed with status (1): [/home/yahonda/.rvm/rubies/ruby-1.9.3-p194/...]\n\nTasks: TOP => test_mysql2\n(See full trace by running task with --trace)\n$\n```\n\n- sql_mode default value as of MySQL 5.6.6 m9.\n\nIt might have caused sql_mode default value as of MySQL 5.6.6 m9 is `NO_ENGINE_SUBSTITUTION`, which was empty at older versions.\n\n```sql\n\nmysql> select @@global.sql_mode;\n+------------------------+\n| @@global.sql_mode      |\n+------------------------+\n| NO_ENGINE_SUBSTITUTION |\n+------------------------+\n1 row in set (0.00 sec)\n\nmysql> select @@session.sql_mode;\n+------------------------+\n| @@session.sql_mode     |\n+------------------------+\n| NO_ENGINE_SUBSTITUTION |\n+------------------------+\n1 row in set (0.00 sec)\n\nmysql> quit\n```\n\nThis default parameter change is out of control from Rails, then these test verify Rails not overriding the default `@@GLOBAL.sql_mode` value by checking if `@@GLOBAL.sql_mode` is the same as `@@SESSION.sql_mode`. \n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e2cb998e15d8e8fdef4f11a1f510fe74",
      "login": "yahonda",
      "avatar_url": "https://secure.gravatar.com/avatar/e2cb998e15d8e8fdef4f11a1f510fe74?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/yahonda",
      "id": 73684
    },
    "closed_at": "2012-08-21T16:01:36Z",
    "created_at": "2012-08-21T15:39:31Z",
    "comments": 1,
    "title": "Rename to test_mysql_no_override_global_sql_mode",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7408.diff",
      "patch_url": "https://github.com/rails/rails/pull/7408.patch",
      "html_url": "https://github.com/rails/rails/pull/7408"
    },
    "number": 7408,
    "updated_at": "2012-08-21T16:01:46Z",
    "html_url": "https://github.com/rails/rails/issues/7408",
    "url": "https://api.github.com/repos/rails/rails/issues/7408",
    "id": 6353892
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "cf0c4e31ad2ab024bacd079c7dca3b4b",
      "login": "sandeepravi",
      "avatar_url": "https://secure.gravatar.com/avatar/cf0c4e31ad2ab024bacd079c7dca3b4b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sandeepravi",
      "id": 804922
    },
    "closed_at": "2012-08-21T13:43:07Z",
    "created_at": "2012-08-21T13:37:52Z",
    "comments": 2,
    "title": "attr_accessors in the same line",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7407.diff",
      "patch_url": "https://github.com/rails/rails/pull/7407.patch",
      "html_url": "https://github.com/rails/rails/pull/7407"
    },
    "number": 7407,
    "updated_at": "2012-08-21T13:55:11Z",
    "html_url": "https://github.com/rails/rails/issues/7407",
    "url": "https://api.github.com/repos/rails/rails/issues/7407",
    "id": 6350374
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "376e4eb9dc6c2e33d1330262edc4f109",
      "login": "janko-m",
      "avatar_url": "https://secure.gravatar.com/avatar/376e4eb9dc6c2e33d1330262edc4f109?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/janko-m",
      "id": 795488
    },
    "closed_at": "2012-08-21T15:04:20Z",
    "created_at": "2012-08-21T12:56:11Z",
    "comments": 2,
    "title": "Fixed some documentation mistakes",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7406.diff",
      "patch_url": "https://github.com/rails/rails/pull/7406.patch",
      "html_url": "https://github.com/rails/rails/pull/7406"
    },
    "number": 7406,
    "updated_at": "2012-08-21T15:04:27Z",
    "html_url": "https://github.com/rails/rails/issues/7406",
    "url": "https://api.github.com/repos/rails/rails/issues/7406",
    "id": 6349497
  },
  {
    "body": "Would it be possible to add support for multiple loggers?\n\nSometimes I'd like to be able to see the Rails.logger output on STDOUT as well as logging to a file... I'd hoped that I could set the logger to be an array like this:\n\n    Rails.logger = [Rails.logger, Logger.new(STDOUT)]\n    Rails.logger.info \"Hello World!\"\n\nBut I just get an error message: \n\n    NoMethodError: undefined method `info' for #<Array:0x00000005910078>\n      from (irb):4\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "4a7542c9e907d772391b2da3a154a2bd",
      "login": "bluewomble",
      "avatar_url": "https://secure.gravatar.com/avatar/4a7542c9e907d772391b2da3a154a2bd?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bluewomble",
      "id": 1147859
    },
    "closed_at": "2012-08-21T11:44:28Z",
    "created_at": "2012-08-21T09:11:57Z",
    "comments": 1,
    "title": "Add support for multiple loggers",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7405,
    "updated_at": "2012-08-21T11:44:28Z",
    "html_url": "https://github.com/rails/rails/issues/7405",
    "url": "https://api.github.com/repos/rails/rails/issues/7405",
    "id": 6345705
  },
  {
    "body": "Hi!\n\nIn 3.2.7 this code was possible if 'auto_models_for_select' is nil :\n<%= select_tag :model, auto_models_for_select, :include_blank => true,\n:disabled => auto_models_for_select.nil? %>\n\nIn 3.2.8 this should be :\n<%= select_tag :model, auto_models_for_select || '', :include_blank =>\ntrue, :disabled => auto_models_for_select.nil? %>\n\nIf second parameter is nil it raise an exception.\n\nPlease, return back that it was possible to transfer nil of second\nparameter - options.",
    "milestone": {
      "due_on": null,
      "creator": {
        "gravatar_id": "0525b332aafb83307b32d9747a93de03",
        "login": "rafaelfranca",
        "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "url": "https://api.github.com/users/rafaelfranca",
        "id": 47848
      },
      "description": null,
      "created_at": "2012-08-12T00:25:49Z",
      "title": "3.2.9",
      "state": "open",
      "closed_issues": 2,
      "number": 20,
      "url": "https://api.github.com/repos/rails/rails/milestones/20",
      "id": 159647,
      "open_issues": 1
    },
    "assignee": null,
    "labels": [
      {
        "name": "regression",
        "url": "https://api.github.com/repos/rails/rails/labels/regression",
        "color": "e10c02"
      },
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "c224ec2aa9c0d838fb81255dc089c434",
      "login": "Sega100500",
      "avatar_url": "https://secure.gravatar.com/avatar/c224ec2aa9c0d838fb81255dc089c434?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Sega100500",
      "id": 584144
    },
    "closed_at": "2012-08-21T16:37:15Z",
    "created_at": "2012-08-21T05:11:02Z",
    "comments": 8,
    "title": "Please fix select_tag in 3.2.8",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7404,
    "updated_at": "2012-08-21T16:37:15Z",
    "html_url": "https://github.com/rails/rails/issues/7404",
    "url": "https://api.github.com/repos/rails/rails/issues/7404",
    "id": 6342588
  },
  {
    "body": "Environment: \n* Ruby on Rails  v3.2.6\n* Ruby : 1.9.3p194\n* OS: Debian Linux\n\nWith the routes.rb below\n\n```ruby\nscope '/test' do\n  namespace :admin do\n    resource :users do\n      member do\n        put :team_update\n      end\n    end\n\n    get 'mailer/preview'\n\n  end\nend\n```\n\nProduce the following routes\n```\nteam_update_admin_users PUT    /test/admin/users/team_update(.:format) admin/users#team_update\n            admin_users POST   /test/admin/users(.:format)             admin/users#create\n        new_admin_users GET    /test/admin/users/new(.:format)         admin/users#new\n       edit_admin_users GET    /test/admin/users/edit(.:format)        admin/users#edit\n                        GET    /test/admin/users(.:format)             admin/users#show\n                        PUT    /test/admin/users(.:format)             admin/users#update\n                        DELETE /test/admin/users(.:format)             admin/users#destroy\n   admin_mailer_preview GET    /test/admin/mailer/preview(.:format)    test/admin/mailer#preview\n```\nI think the correct routing parameters for the route for the line `get 'mailer/preview' `  is `admin/mailer#preview` (Without the 'test/' string)\n\nWith the workaround of explicitly specifying the route:\n```ruby\n  .\n  .\n  .\n    get 'mailer/preview' => \"mailer#preview\"\n```\nThen the routes work as expected:\n```\nteam_update_admin_users PUT    /test/admin/users/team_update(.:format) admin/users#team_update\n            admin_users POST   /test/admin/users(.:format)             admin/users#create\n        new_admin_users GET    /test/admin/users/new(.:format)         admin/users#new\n       edit_admin_users GET    /test/admin/users/edit(.:format)        admin/users#edit\n                        GET    /test/admin/users(.:format)             admin/users#show\n                        PUT    /test/admin/users(.:format)             admin/users#update\n                        DELETE /test/admin/users(.:format)             admin/users#destroy\n   admin_mailer_preview GET    /test/admin/mailer/preview(.:format)    admin/mailer#preview\n```\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "f06ca2fcabe1ff11e6c3c1096bb424f8",
      "login": "lkmatsumura",
      "avatar_url": "https://secure.gravatar.com/avatar/f06ca2fcabe1ff11e6c3c1096bb424f8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/lkmatsumura",
      "id": 1480084
    },
    "closed_at": "2012-08-22T07:16:53Z",
    "created_at": "2012-08-20T20:00:12Z",
    "comments": 5,
    "title": "route error using scope with 'get' under namespace",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7403,
    "updated_at": "2012-08-23T19:51:01Z",
    "html_url": "https://github.com/rails/rails/issues/7403",
    "url": "https://api.github.com/repos/rails/rails/issues/7403",
    "id": 6334494
  },
  {
    "body": "AR 3.0.17 & 3.2.8 (please apply a fix to both, we are on 3.0)\n\n```Ruby\nclass Car < ActiveRecord::Base\nend\n\nclass Movie < ActiveRecord::Base\n  belongs_to :car\nend\n```\n\n```Ruby\nMovie.first(:include=>:car, :conditions=>\"(`movies`.`id` = 'as.')\")\n  Movie Load (0.2ms)  SELECT \"movies\".\"id\" AS t0_r0, \"movies\".\"title\" AS t0_r1, \"movies\".\"views\" AS t0_r2, \"movies\".\"created_at\" AS t0_r3, \"movies\".\"updated_at\" AS t0_r4, \"cars\".\"id\" AS t1_r0, \"cars\".\"name\" AS t1_r1, \"cars\".\"title\" AS t1_r2, \"cars\".\"wheel_count\" AS t1_r3, \"cars\".\"created_at\" AS t1_r4, \"cars\".\"updated_at\" AS t1_r5 FROM \"movies\" LEFT OUTER JOIN \"cars\" ON \"cars\".\"id\" IS NULL WHERE ((`movies`.`id` = 'as.')) LIMIT 1\n => nil \n1.9.3-p194 :005 > Movie.first(:include=>:car, :conditions=>\"(`movies`.`id` = 'as')\")\n  Movie Load (0.2ms)  SELECT \"movies\".* FROM \"movies\" WHERE ((`movies`.`id` = 'as')) LIMIT 1\n => nil \n1.9.3-p194 :006 > \n```\n\nthe wtf part is that if you change the condition to \"a.\" it works :D",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "59436ecd4fe6ad7c34f67654d839f05f",
      "login": "grosser",
      "avatar_url": "https://secure.gravatar.com/avatar/59436ecd4fe6ad7c34f67654d839f05f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/grosser",
      "id": 11367
    },
    "closed_at": "2012-08-20T21:21:58Z",
    "created_at": "2012-08-20T19:46:48Z",
    "comments": 14,
    "title": "ActiveRecord forces a include into a join if a condition after = includes a \".\"",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7402,
    "updated_at": "2012-08-20T23:38:30Z",
    "html_url": "https://github.com/rails/rails/issues/7402",
    "url": "https://api.github.com/repos/rails/rails/issues/7402",
    "id": 6334187
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-20T17:59:48Z",
    "created_at": "2012-08-20T17:01:46Z",
    "comments": 1,
    "title": "fix punctuation in config templates",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7401.diff",
      "patch_url": "https://github.com/rails/rails/pull/7401.patch",
      "html_url": "https://github.com/rails/rails/pull/7401"
    },
    "number": 7401,
    "updated_at": "2012-08-20T17:59:53Z",
    "html_url": "https://github.com/rails/rails/issues/7401",
    "url": "https://api.github.com/repos/rails/rails/issues/7401",
    "id": 6330428
  },
  {
    "body": "`save!` and `update_attributes!` always returns `true`\n\nI think returning `self` instead will be more useful in cases like:\n\n``` ruby\ndef create_something\n  s = Something.new\n  ....\n  s.save!\nend\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-08-30T18:14:25Z",
    "created_at": "2012-08-20T15:45:16Z",
    "comments": 17,
    "title": "AR: make #save! and #update_attributes! return self",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7400.diff",
      "patch_url": "https://github.com/rails/rails/pull/7400.patch",
      "html_url": "https://github.com/rails/rails/pull/7400"
    },
    "number": 7400,
    "updated_at": "2012-08-30T18:14:25Z",
    "html_url": "https://github.com/rails/rails/issues/7400",
    "url": "https://api.github.com/repos/rails/rails/issues/7400",
    "id": 6328644
  },
  {
    "body": "Is there any problem with the \"uniq\" keyword on ActiveRecord?\n\nI'm using latest version of Rails, and adding the uniq to any model's select throws an error like the one below.\n\n```\n1.9.3p254 :045 > Profile.select(:name).uniq\nTypeError: Cannot visit Arel::Nodes::Distinct\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/visitor.rb:25:in `rescue in visit'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/visitor.rb:19:in `visit'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/to_sql.rb:133:in `visit_Arel_Nodes_SelectCore'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/to_sql.rb:121:in `block in visit_Arel_Nodes_SelectStatement'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/to_sql.rb:121:in `map'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/to_sql.rb:121:in `visit_Arel_Nodes_SelectStatement'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/sqlite.rb:12:in `visit_Arel_Nodes_SelectStatement'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/visitor.rb:19:in `visit'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/visitor.rb:5:in `accept'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/arel-3.0.2/lib/arel/visitors/to_sql.rb:19:in `accept'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/connection_adapters/abstract/database_statements.rb:7:in `to_sql'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/connection_adapters/abstract/database_statements.rb:18:in `select_all'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/connection_adapters/abstract/query_cache.rb:63:in `select_all'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/querying.rb:38:in `block in find_by_sql'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/explain.rb:40:in `logging_query_plan'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/querying.rb:37:in `find_by_sql'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/relation.rb:171:in `exec_queries'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/relation.rb:160:in `block in to_a'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/explain.rb:33:in `logging_query_plan'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/relation.rb:159:in `to_a'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/activerecord-3.2.8/lib/active_record/relation.rb:498:in `inspect'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/railties-3.2.8/lib/rails/commands/console.rb:47:in `start'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/railties-3.2.8/lib/rails/commands/console.rb:8:in `start'\n\tfrom /Users/david/.rvm/gems/ruby-1.9.3-head/gems/railties-3.2.8/lib/rails/commands.rb:41:in `<top (required)>'\n\tfrom script/rails:6:in `require'\n\tfrom script/rails:6:in `<main>'\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      }
    ],
    "user": {
      "gravatar_id": "ef8e27e76850a35bbf6738785b7f207b",
      "login": "idavemm",
      "avatar_url": "https://secure.gravatar.com/avatar/ef8e27e76850a35bbf6738785b7f207b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/idavemm",
      "id": 1402642
    },
    "closed_at": "2012-08-20T16:23:57Z",
    "created_at": "2012-08-20T15:36:31Z",
    "comments": 2,
    "title": "Cannot visit Arel::Nodes::Distinct",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7399,
    "updated_at": "2012-08-20T16:23:57Z",
    "html_url": "https://github.com/rails/rails/issues/7399",
    "url": "https://api.github.com/repos/rails/rails/issues/7399",
    "id": 6328404
  },
  {
    "body": "I'm submitting this pull request because of some confusion I had using this method (and its alias). When I originally tried the method, I attempted to do something like `time_ago_in_words 15.minutes` which now I realize was an error on my part because this method expects its argument to be a `Time`.\n\nMy initial reaction was that this is a pretty obvious bug in rails since it didn't jump out to me in the docs that the argument must be a `Time` and writing it as `time_ago_in_words 15.minutes.ago` felt a little clumsy with the \"ago\" redundancy.\n\nIt was even a little more confusing going from using the `distance_of_time_in_words` method with simple `15.minutes` (because the default `from_time` is simply `0`) to the alias method `distance_of_time_in_words_to_now` and having to supply a `Time`.\n\nAnyway, at the very least, it seems some minor improvements to the docs (perhaps what I've attached?) may help the situation, and at the most perhaps some retinkering of this API (a job I currently feel unqualified of).\n\nThanks for the awesome work!",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      },
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "1433d0176e764f9ce48f70673baa72e8",
      "login": "iamvery",
      "avatar_url": "https://secure.gravatar.com/avatar/1433d0176e764f9ce48f70673baa72e8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/iamvery",
      "id": 79619
    },
    "closed_at": "2012-08-22T18:44:59Z",
    "created_at": "2012-08-20T15:17:06Z",
    "comments": 5,
    "title": "Extended documentation for `time_ago_in_words` helper",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7398.diff",
      "patch_url": "https://github.com/rails/rails/pull/7398.patch",
      "html_url": "https://github.com/rails/rails/pull/7398"
    },
    "number": 7398,
    "updated_at": "2012-08-22T18:44:59Z",
    "html_url": "https://github.com/rails/rails/issues/7398",
    "url": "https://api.github.com/repos/rails/rails/issues/7398",
    "id": 6327894
  },
  {
    "body": "There is a common use case where mail settings are dynamic based on settings saved in database. For example, we could let companies provide us with their SMTP credentials which can be used to send email on their behalf. My particular use case dealt with creating a delivery method which sends SMSes based on company's credentials to company's users.\n\nThis PR allows the user to easily set delivery method settings from within the mail instance\n\n````ruby\nclass MySmsMailer < ActionMailer::Base\n  def send_sms(company,telephone_number,message)\n    mail :to => telephone_number, \n         :body => message, \n         :delivery_method => :sms_sender, \n         :delivery_method_options => company.sms_credentials\n  end\nend\n````\n\nor\n\n````ruby\nclass UserMailer < ActionMailer::Base\n  def campaign_blast(company,telephone_number,message)\n    mail :to => telephone_number, \n         :body => message, \n         :delivery_method_options => {:username => company.smtp_user, \n                                      :password => company.smtp_password}\n  end\nend\n````\n\n\n\nThe alternative to doing this would be rather ugly\n\n````ruby\nm = MySmsMailer.send_sms(company,number,message)\nm.delivery_method.some_method_that_sets_options_on_sms_sender_instance(company.sms_credentials)\nm.deliver\n````\n\nWe could try to set delivery options by resetting them on classes but I dont imagine it would be threadsafe to do that!\n\n/cc @josevalim @mikel \n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      }
    ],
    "user": {
      "gravatar_id": "f4ba063457702c78a7fce6a3529aedb0",
      "login": "asanghi",
      "avatar_url": "https://secure.gravatar.com/avatar/f4ba063457702c78a7fce6a3529aedb0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/asanghi",
      "id": 762
    },
    "closed_at": "2012-09-06T10:36:19Z",
    "created_at": "2012-08-20T13:31:47Z",
    "comments": 3,
    "title": "Allow delivery method options to be set per mail instance",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7397.diff",
      "patch_url": "https://github.com/rails/rails/pull/7397.patch",
      "html_url": "https://github.com/rails/rails/pull/7397"
    },
    "number": 7397,
    "updated_at": "2012-09-06T10:36:20Z",
    "html_url": "https://github.com/rails/rails/issues/7397",
    "url": "https://api.github.com/repos/rails/rails/issues/7397",
    "id": 6325311
  },
  {
    "body": "A writer of test can confuse how to write his new test.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "196fcecb9032f580dbed8d06a3aac090",
      "login": "tomykaira",
      "avatar_url": "https://secure.gravatar.com/avatar/196fcecb9032f580dbed8d06a3aac090?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/tomykaira",
      "id": 789929
    },
    "closed_at": "2012-08-20T13:14:51Z",
    "created_at": "2012-08-20T12:50:06Z",
    "comments": 0,
    "title": "Access @rs only through attr_accessor",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7396.diff",
      "patch_url": "https://github.com/rails/rails/pull/7396.patch",
      "html_url": "https://github.com/rails/rails/pull/7396"
    },
    "number": 7396,
    "updated_at": "2012-08-20T13:14:51Z",
    "html_url": "https://github.com/rails/rails/issues/7396",
    "url": "https://api.github.com/repos/rails/rails/issues/7396",
    "id": 6324511
  },
  {
    "body": "This is in regards to https://github.com/rails/rails/commit/b1e509ad7a8c8264544f10f4666705cd806b5408#commitcomment-1636270 . ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "8e696229263b433634ddbdc7a153fe4b",
      "login": "adacosta",
      "avatar_url": "https://secure.gravatar.com/avatar/8e696229263b433634ddbdc7a153fe4b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/adacosta",
      "id": 37958
    },
    "closed_at": "2012-08-20T13:13:20Z",
    "created_at": "2012-08-20T08:26:52Z",
    "comments": 1,
    "title": "Refactor AutosaveAssociation#save_collection_association",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7395.diff",
      "patch_url": "https://github.com/rails/rails/pull/7395.patch",
      "html_url": "https://github.com/rails/rails/pull/7395"
    },
    "number": 7395,
    "updated_at": "2012-08-20T13:13:20Z",
    "html_url": "https://github.com/rails/rails/issues/7395",
    "url": "https://api.github.com/repos/rails/rails/issues/7395",
    "id": 6320411
  },
  {
    "body": "Moves column related schema dumper code into the AbstractAdapter. The\ncode remains the same, but by placing it in the AbstractAdapter, we can\nthen overwrite it with Adapter specific methods that will help with\nAdapter specific data types.\n\nThe goal of moving this code here is to create a new migration key for\nPostgreSQL's array type. Since any datatype can be an array, the goal is\nto have ':array => true' as a migration option, turning the datatype\ninto an array. I've implemented this in postgres_ext, the syntax is\nshown here: https://github.com/dockyard/postgres_ext#arrays",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f0ffef353c38dc2ee7e10ef36c3ffa5b",
      "login": "danmcclain",
      "avatar_url": "https://secure.gravatar.com/avatar/f0ffef353c38dc2ee7e10ef36c3ffa5b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/danmcclain",
      "id": 144138
    },
    "closed_at": "2012-08-19T23:01:01Z",
    "created_at": "2012-08-19T22:11:35Z",
    "comments": 5,
    "title": "Moves column dump specific code to a module included in AbstractAdapter",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7393.diff",
      "patch_url": "https://github.com/rails/rails/pull/7393.patch",
      "html_url": "https://github.com/rails/rails/pull/7393"
    },
    "number": 7393,
    "updated_at": "2012-08-19T23:02:13Z",
    "html_url": "https://github.com/rails/rails/issues/7393",
    "url": "https://api.github.com/repos/rails/rails/issues/7393",
    "id": 6315618
  },
  {
    "body": "This is a real fix (as compared to the band-aid in b127d86c), which uses\nthe recently-added equality methods for ARel nodes. It has the side\nbenefit of simplifying the merge code a bit.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2274a7476f6d2ac7aedcdec0651d0542",
      "login": "ernie",
      "avatar_url": "https://secure.gravatar.com/avatar/2274a7476f6d2ac7aedcdec0651d0542?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ernie",
      "id": 14947
    },
    "closed_at": "2012-08-19T15:28:57Z",
    "created_at": "2012-08-19T12:08:11Z",
    "comments": 2,
    "title": "Fix \"last equality wins\" logic in relation merge",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7392.diff",
      "patch_url": "https://github.com/rails/rails/pull/7392.patch",
      "html_url": "https://github.com/rails/rails/pull/7392"
    },
    "number": 7392,
    "updated_at": "2012-08-20T18:20:44Z",
    "html_url": "https://github.com/rails/rails/issues/7392",
    "url": "https://api.github.com/repos/rails/rails/issues/7392",
    "id": 6311853
  },
  {
    "body": "With a value of \"nosniff\", this prevents Internet Explorer from MIME-sniffing a response away from the declared content-type.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "66c680f88e8c379fe408d32299dfb4e6",
      "login": "aantix",
      "avatar_url": "https://secure.gravatar.com/avatar/66c680f88e8c379fe408d32299dfb4e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aantix",
      "id": 4600
    },
    "closed_at": "2012-08-18T22:36:33Z",
    "created_at": "2012-08-18T22:33:06Z",
    "comments": 0,
    "title": "Added X-Content-Type-Options to the header defaults.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7390.diff",
      "patch_url": "https://github.com/rails/rails/pull/7390.patch",
      "html_url": "https://github.com/rails/rails/pull/7390"
    },
    "number": 7390,
    "updated_at": "2012-08-18T22:36:33Z",
    "html_url": "https://github.com/rails/rails/issues/7390",
    "url": "https://api.github.com/repos/rails/rails/issues/7390",
    "id": 6308521
  },
  {
    "body": "Commit 271beddd8929758802e11826297adf92e40cd4af didn't solved the issue, since we need to `require` as \"[active_record/deprecated_finders](https://github.com/rails/activerecord-deprecated_finders/blob/master/lib/active_record/deprecated_finders.rb)\".\n\nThis commit fixes #7381.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3579801a9ca6605789fff55723314eb2",
      "login": "jmonteiro",
      "avatar_url": "https://secure.gravatar.com/avatar/3579801a9ca6605789fff55723314eb2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jmonteiro",
      "id": 3586
    },
    "closed_at": "2012-08-19T00:37:16Z",
    "created_at": "2012-08-18T16:33:18Z",
    "comments": 4,
    "title": "Fixes #7381, so activerecord-deprecated_finders gets correctly bundled when creating a new Rails app",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7389.diff",
      "patch_url": "https://github.com/rails/rails/pull/7389.patch",
      "html_url": "https://github.com/rails/rails/pull/7389"
    },
    "number": 7389,
    "updated_at": "2012-08-19T01:03:38Z",
    "html_url": "https://github.com/rails/rails/issues/7389",
    "url": "https://api.github.com/repos/rails/rails/issues/7389",
    "id": 6306383
  },
  {
    "body": "See 02ca9151a043a4fefbb3f22edd05f0cd392fffaa\n\nI was noticing this warning using 3.2.8 even though I was doing:\n\n`t.remove :some_column`\n\n```\nDEPRECATION WARNING: Passing array to remove_columns is deprecated, please use multiple arguments, like: `remove_columns(:posts, :foo, :bar)`\n```\n\nAttached is a fix for Table#remove rebased against 3-2-stable and tests updated to reflect that remove_columns should not be passed an array.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9968b786345739e77c49dc09c4f6514c",
      "login": "jrafanie",
      "avatar_url": "https://secure.gravatar.com/avatar/9968b786345739e77c49dc09c4f6514c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jrafanie",
      "id": 19339
    },
    "closed_at": "2012-08-18T15:32:26Z",
    "created_at": "2012-08-18T15:28:11Z",
    "comments": 3,
    "title": "Table#remove passed an array to remove_column, which is deprecated.",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7388.diff",
      "patch_url": "https://github.com/rails/rails/pull/7388.patch",
      "html_url": "https://github.com/rails/rails/pull/7388"
    },
    "number": 7388,
    "updated_at": "2012-08-18T15:35:50Z",
    "html_url": "https://github.com/rails/rails/issues/7388",
    "url": "https://api.github.com/repos/rails/rails/issues/7388",
    "id": 6306019
  },
  {
    "body": "Hi guys,\n\nToday several apps are using presenters/decorators to extract some logic from the views and in some cases is a little hard to do that.\n\nExemple:\n\n```erb\n<% if current_user.admin? %>\n  <li>\n    <%= link_to 'Users', users_path %>\n  </li>\n  <li>\n    <%= link_to 'Get out', destroy_user_session_path, :method => :delete %>\n  </li>\n<% end %>\n```\n\nWe can extract this to a helper but I think that would be great if we can do something like:\n\n```erb\n<%= render current_user.menu_view_path %>\n```\n\n```ruby\n# in a proxy that represents a presenter/decorator to @users\ndef menu_view_path\n  :users if admin?\nend\n```\n\nWith this way I think that's easy and semantic form to do because make sense a `render nil` return nothing.\n\n\nWhat do you guys think?\n\nCan I do a pull request to the `render` stop to return `'nil' is not an ActiveModel-compatible object that returns a valid partial path.` when we try to call `render` to `nil`?\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a8fd9392c7ee3d1ffc29c6a1465ae6f3",
      "login": "MarceloCajueiro",
      "avatar_url": "https://secure.gravatar.com/avatar/a8fd9392c7ee3d1ffc29c6a1465ae6f3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/MarceloCajueiro",
      "id": 26076
    },
    "closed_at": "2012-08-19T01:21:06Z",
    "created_at": "2012-08-18T14:20:34Z",
    "comments": 4,
    "title": "render nil",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7387,
    "updated_at": "2012-08-19T01:21:06Z",
    "html_url": "https://github.com/rails/rails/issues/7387",
    "url": "https://api.github.com/repos/rails/rails/issues/7387",
    "id": 6305650
  },
  {
    "body": "Oracle and PostgreSQL supports \"NULLS first/last\" in order by statement. It\nwill break the reverse_sql_order by concating \" DESC\" to the order by statement.\n\nFor example,\n\n```ruby\n    User.order(\"name ASC NULLS FIRST\").last\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "83c8cca11558f32207645ca270ae8475",
      "login": "sishen",
      "avatar_url": "https://secure.gravatar.com/avatar/83c8cca11558f32207645ca270ae8475?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sishen",
      "id": 11197
    },
    "closed_at": "2012-08-22T18:33:29Z",
    "created_at": "2012-08-18T05:14:41Z",
    "comments": 5,
    "title": "ORDER BY xx NULLS first/last will break reverse_sql_order",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7386.diff",
      "patch_url": "https://github.com/rails/rails/pull/7386.patch",
      "html_url": "https://github.com/rails/rails/pull/7386"
    },
    "number": 7386,
    "updated_at": "2012-08-22T18:33:29Z",
    "html_url": "https://github.com/rails/rails/issues/7386",
    "url": "https://api.github.com/repos/rails/rails/issues/7386",
    "id": 6303153
  },
  {
    "body": "I'm encountering some unexpected behavior when Rails serializes a DateTime in a query string.  Originally, I thought this bug might be specific to PostgreSQL, but I've also reproduced it using the steps below with SQLite3.  Repeating the same steps with MySQL (5.1.15) didn't yield the same result.  Apparently this is because MySQL's datetime data type doesn't store fractional seconds.\n\nWith Ruby 1.9.3p194, Rails 3.2.7, PostgreSQL 9.1.4, and pg 0.14.0 on Mac OS X 10.7.4:\n\n```sh\n$ rails new Test --database=postgresql\n$ cd Test/\n$ rails g model foo created_at:datetime\n$ rake db:create db:migrate\n$ rails c\n```\n\nExpected:\n\n```ruby\nirb(main):001:0> Foo.create! :created_at => '2011-12-30 14:35:43.250862'\nirb(main):002:0> foo = Foo.where(:created_at => '2011-12-30 14:35:43.250862').first\nFoo Load (0.6ms)  SELECT \"foos\".* FROM \"foos\" WHERE \"foos\".\"created_at\" = '2011-12-30 14:35:43.250862'\n=> #<Foo id: 1, created_at: \"2011-12-30 14:35:43\", updated_at: \"2012-08-18 00:57:56\">\nirb(main):003:0> foo.created_at.to_f\n=> 1325255743.2508612\n```\n\nUnexpected:\n\n```ruby\nirb(main):004:0> Foo.where(:created_at => foo.created_at)\nFoo Load (0.6ms)  SELECT \"foos\".* FROM \"foos\" WHERE \"foos\".\"created_at\" = '2011-12-30 14:35:43.250861'\n=> []\n```\n\nNotice the difference in the last digit of the date string in the SQL query.  It's a \"1\", but it should be a \"2\".  I confirmed the value of `created_at` in the PostgreSQL database:\n\n```sh\n$ rails db\n```\n    Test_development=# SELECT * FROM foos;\n     id |         created_at         |         updated_at         \n    ----+----------------------------+----------------------------\n      1 | 2011-12-30 14:35:43.250862 | 2012-08-18 00:57:56.271528\n    (1 row)\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "36561740ef656f0dcb9e51a4d38164a3",
      "login": "bbornstein",
      "avatar_url": "https://secure.gravatar.com/avatar/36561740ef656f0dcb9e51a4d38164a3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bbornstein",
      "id": 1059444
    },
    "closed_at": "2012-08-18T22:07:58Z",
    "created_at": "2012-08-18T01:59:51Z",
    "comments": 6,
    "title": "Incorrect query serialization of (some) DateTimes with fractional seconds",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7385,
    "updated_at": "2012-08-18T22:10:09Z",
    "html_url": "https://github.com/rails/rails/issues/7385",
    "url": "https://api.github.com/repos/rails/rails/issues/7385",
    "id": 6302378
  },
  {
    "body": "The visible bug is that 60.7% is rendered as 607% (missing separator).\nAn in-app workaround is to be explicit with the separator.\n\nI'm reluctant to call this a bug, as i18n is involved, and I don't really know what it's doing.\nI may have misunderstood i18n\n\nwe're using `config.i18n.locale = :'en-gb'`\n\nI wonder if there should be an error or warning when the separator is blank?\n\nHas anyone else come across this?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2daf341883a14a6bf43bf25d655af81",
      "login": "nruth",
      "avatar_url": "https://secure.gravatar.com/avatar/d2daf341883a14a6bf43bf25d655af81?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nruth",
      "id": 26158
    },
    "closed_at": "2012-08-17T23:37:29Z",
    "created_at": "2012-08-17T23:18:49Z",
    "comments": 1,
    "title": "number_to_percentage helper separator default lost in 3.0.10->17 update (I18n?)",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7384,
    "updated_at": "2012-08-17T23:37:29Z",
    "html_url": "https://github.com/rails/rails/issues/7384",
    "url": "https://api.github.com/repos/rails/rails/issues/7384",
    "id": 6301133
  },
  {
    "body": "Adding the `include` method to Array\nYou can add an item to an array only if that item does not already exist.\n\n```ruby\n[1, 2].include(2) => [1, 2]\n[1, 2].include(3) => [1, 2, 3]\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b7d890bed68fa564c18ff00dfd8207cd",
      "login": "KensoDev",
      "avatar_url": "https://secure.gravatar.com/avatar/b7d890bed68fa564c18ff00dfd8207cd?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/KensoDev",
      "id": 79502
    },
    "closed_at": "2012-08-17T21:52:24Z",
    "created_at": "2012-08-17T21:48:44Z",
    "comments": 4,
    "title": "Adding .include method to Array",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7382.diff",
      "patch_url": "https://github.com/rails/rails/pull/7382.patch",
      "html_url": "https://github.com/rails/rails/pull/7382"
    },
    "number": 7382,
    "updated_at": "2012-08-17T22:30:53Z",
    "html_url": "https://github.com/rails/rails/issues/7382",
    "url": "https://api.github.com/repos/rails/rails/issues/7382",
    "id": 6299887
  },
  {
    "body": "After the repo has been renamed it can't be found when bundling.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "df4ca44714f099ef998e8821615e0085",
      "login": "IPGlider",
      "avatar_url": "https://secure.gravatar.com/avatar/df4ca44714f099ef998e8821615e0085?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/IPGlider",
      "id": 54533
    },
    "closed_at": "2012-08-17T20:07:31Z",
    "created_at": "2012-08-17T19:25:17Z",
    "comments": 3,
    "title": "Update to activerecord-deprecated_finders on generator",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7381.diff",
      "patch_url": "https://github.com/rails/rails/pull/7381.patch",
      "html_url": "https://github.com/rails/rails/pull/7381"
    },
    "number": 7381,
    "updated_at": "2012-08-17T20:07:55Z",
    "html_url": "https://github.com/rails/rails/issues/7381",
    "url": "https://api.github.com/repos/rails/rails/issues/7381",
    "id": 6296989
  },
  {
    "body": "This is at best a band-aid for a more proper fix, since it won't truly\nhandle the removal of the previous equality condition of these other\nnodes. I'm planning to put in some work on ARel toward supporting that\ngoal. I'd like to also backport this fix to the 3.x merge code, unless\nthere are objections.\n\nRelated: rails/arel#130, ernie/squeel#153, ernie/squeel#156\n\nAlso, I added a test for the more typical equality condition, since\nI didn't see one for it yet. Maybe I missed it, since the PredicateBuilder\ndoes create equality nodes in stock AR with a hash, but\nthe only one I noticed was using order and strings to test.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2274a7476f6d2ac7aedcdec0651d0542",
      "login": "ernie",
      "avatar_url": "https://secure.gravatar.com/avatar/2274a7476f6d2ac7aedcdec0651d0542?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ernie",
      "id": 14947
    },
    "closed_at": "2012-08-17T21:17:36Z",
    "created_at": "2012-08-17T15:43:10Z",
    "comments": 5,
    "title": "Fix merge error when Equality LHS is non-attribute",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7380.diff",
      "patch_url": "https://github.com/rails/rails/pull/7380.patch",
      "html_url": "https://github.com/rails/rails/pull/7380"
    },
    "number": 7380,
    "updated_at": "2012-08-17T21:17:36Z",
    "html_url": "https://github.com/rails/rails/issues/7380",
    "url": "https://api.github.com/repos/rails/rails/issues/7380",
    "id": 6292356
  },
  {
    "body": "In my controller:\n```ruby\ndef foo\n   render :layout => false\nend\n```\n\nIn my view, app/views/home/foo.html.erb\n```rhtml\nA\n<% Device.send(:with_scope, :find => {:conditions => {:id => 1}}) do %>\nB\n<% end %>\nC\n```\n\nExpected Output:\n```html\nA B C\n```\n\nActual Output:\n```html\nA B A B C\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      }
    ],
    "user": {
      "gravatar_id": "3e836b5e740ccf972b50b45f91dce8f0",
      "login": "knodi",
      "avatar_url": "https://secure.gravatar.com/avatar/3e836b5e740ccf972b50b45f91dce8f0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/knodi",
      "id": 13676
    },
    "closed_at": "2012-08-18T14:11:01Z",
    "created_at": "2012-08-17T15:11:33Z",
    "comments": 3,
    "title": "Using with_scope in a View causes bizarre render bug",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7379,
    "updated_at": "2012-08-18T14:11:01Z",
    "html_url": "https://github.com/rails/rails/issues/7379",
    "url": "https://api.github.com/repos/rails/rails/issues/7379",
    "id": 6291568
  },
  {
    "body": "I'm getting the same error as reported in https://rails.lighthouseapp.com/projects/8994/tickets/3527-undefined-method-destroyed-for-activerecordassociationsbelongstoassociation with Rails 2.3.14\n\nThe problems seems to be related to a belongs_to relationship between an ActiveRecord and an ActiveResource models. I've recreated it in a new Rails app, with just:\n\napp/models/user.rb\n```ruby\nclass User < ActiveResource::Base\n  self.site = SITE\n  self.user = USER\n  self.password = PASSWORD\nend\n```\n\napp/models/question.rb\n```ruby\nclass Question < ActiveRecord::Base\n  belongs_to :user\nend\n```\n\nThe migration is simply\n```ruby\n  create_table :questions, :force => true do |t|\n    t.integer :user_id\n  end\n```\n\nThen, in script/console\n<pre>\nLoading development environment (Rails 2.3.14)\n>> q = Question.new\n=> #<Question id: nil, question_id: nil>\n>> q.user = User.find(1)\n=> #<User:0x7feb31cdcc28 @prefix_options={}, @attributes={\"login\" => \"user\", \"password\" => \"063eaa795f68d69f916886f514ddb230\", \"created_at\"=>Wed Aug 15 17:58:00 UTC 2012, \"updated_at\"=>Wed Aug 15 17:58:00 U\nTC 2012}>\n>> q\n=> #<Question id: nil, user_id: 1>\n>> q.save!\nNoMethodError: undefined method `destroyed?' for #<ActiveRecord::Associations::BelongsToAssociation:0x7feb31cd95a0>\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/associations/association_proxy.rb:217:in `method_missing'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/autosave_association.rb:373:in `save_belongs_to_association'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/autosave_association.rb:185:in `autosave_associated_records_f\nor_question'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:178:in `send'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:178:in `evaluate_method'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:166:in `call'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:93:in `run'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:92:in `each'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:92:in `send'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:92:in `run'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activesupport-2.3.14/lib/active_support/callbacks.rb:276:in `run_callbacks'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/callbacks.rb:344:in `callback'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/callbacks.rb:249:in `create_or_update'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/base.rb:2594:in `save_without_validation!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/validations.rb:1099:in `save_without_dirty!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/dirty.rb:87:in `save_without_transactions!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/transactions.rb:200:in `save!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/connection_adapters/abstract/database_statements.rb:136:in `t\nransaction'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/transactions.rb:182:in `transaction'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/transactions.rb:200:in `save!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/transactions.rb:208:in `rollback_active_record_state!'\n        from /home/vitor/Projetos/allourideas.org/vendor/ruby/1.8/gems/activerecord-2.3.14/lib/active_record/transactions.rb:200:in `save!'\n        from (irb):4>>\n</pre>\n\nA workaround suggested in the old ticket was to simply define destroyed? in the ActiveResource class. That works.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "600965365b39cc2d506bc24afd0d7c1e",
      "login": "vitorbaptista",
      "avatar_url": "https://secure.gravatar.com/avatar/600965365b39cc2d506bc24afd0d7c1e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/vitorbaptista",
      "id": 76945
    },
    "closed_at": "2012-08-17T14:30:20Z",
    "created_at": "2012-08-17T14:29:02Z",
    "comments": 1,
    "title": "undefined method `destroyed?' for ActiveRecord::Associations::BelongsToAssociation in Rails 2.3.14",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7378,
    "updated_at": "2012-08-17T14:30:20Z",
    "html_url": "https://github.com/rails/rails/issues/7378",
    "url": "https://api.github.com/repos/rails/rails/issues/7378",
    "id": 6290461
  },
  {
    "body": "Currently invoking `#first/#last` on not-loaded collection proxy for `has_many` association will not set inversed parent for fetched record. So example from rails guides and docs is actually not correct:\n\n```ruby\nc = Customer.first\no = c.orders.first\nc.first_name == o.customer.first_name # => true\nc.first_name = 'Manny'\nc.first_name == o.customer.first_name # => true\n```\n\nIn reality last line will return false. I've fixed both methods to take `inversed_of` option into account. So now this example will work as intented, I've provided test to illustrate it.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "254513687a01330ba0ae676538de459b",
      "login": "brainopia",
      "avatar_url": "https://secure.gravatar.com/avatar/254513687a01330ba0ae676538de459b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/brainopia",
      "id": 386
    },
    "closed_at": "2012-08-19T01:11:11Z",
    "created_at": "2012-08-17T13:56:57Z",
    "comments": 8,
    "title": "Use inversed parent for first and last child of has_many association",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7377.diff",
      "patch_url": "https://github.com/rails/rails/pull/7377.patch",
      "html_url": "https://github.com/rails/rails/pull/7377"
    },
    "number": 7377,
    "updated_at": "2012-08-21T04:05:46Z",
    "html_url": "https://github.com/rails/rails/issues/7377",
    "url": "https://api.github.com/repos/rails/rails/issues/7377",
    "id": 6289706
  },
  {
    "body": "Hi! I've got a bug:\n\n```ruby\nchange_table :foos do |f|\n  f.change_default :command, \"foo\\nbar\"\nend\n```\n\n```bash\nrake db:migrate\n```\n\n```ruby\nFoo.new.command # => \"'foo\\nbar'\" (wrapped with ')\n```",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "757fb0d5ec7560b6f25f5bd98eadc020",
      "login": "releu",
      "avatar_url": "https://secure.gravatar.com/avatar/757fb0d5ec7560b6f25f5bd98eadc020?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/releu",
      "id": 348907
    },
    "closed_at": "2012-08-17T17:21:41Z",
    "created_at": "2012-08-17T10:39:54Z",
    "comments": 0,
    "title": "Sqlite3 default values with \"\\n\"",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7374,
    "updated_at": "2012-08-17T17:21:41Z",
    "html_url": "https://github.com/rails/rails/issues/7374",
    "url": "https://api.github.com/repos/rails/rails/issues/7374",
    "id": 6286632
  },
  {
    "body": "There were some incorrect indentations in [actionpack/CHANGELOG.md](https://github.com/rails/rails/blob/master/actionpack/CHANGELOG.md) (mostly at the bottom)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b942798f822dee11bacf2f93e4d1f198",
      "login": "hollowspace",
      "avatar_url": "https://secure.gravatar.com/avatar/b942798f822dee11bacf2f93e4d1f198?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/hollowspace",
      "id": 2036005
    },
    "closed_at": "2012-08-17T14:47:05Z",
    "created_at": "2012-08-17T03:17:18Z",
    "comments": 0,
    "title": "Fix slightly broken Markdown syntax in actionpack/CHANGELOG.md",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7373.diff",
      "patch_url": "https://github.com/rails/rails/pull/7373.patch",
      "html_url": "https://github.com/rails/rails/pull/7373"
    },
    "number": 7373,
    "updated_at": "2012-08-17T14:47:05Z",
    "html_url": "https://github.com/rails/rails/issues/7373",
    "url": "https://api.github.com/repos/rails/rails/issues/7373",
    "id": 6280822
  },
  {
    "body": "`require 'action_dispatch'` immediately tries to pull in activemodel.\n\nhttps://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch.rb#L29\n\nought to be declared in the gemspec so AP can be used as a standalone gem definition.\n\n/cc @tenderlove ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "bbe5dc8dcf248706525ab76f46185520",
      "login": "josh",
      "avatar_url": "https://secure.gravatar.com/avatar/bbe5dc8dcf248706525ab76f46185520?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/josh",
      "id": 137
    },
    "closed_at": "2012-08-16T19:07:33Z",
    "created_at": "2012-08-16T18:56:57Z",
    "comments": 3,
    "title": "Add activemodel dep to actionpack gemspec",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7370.diff",
      "patch_url": "https://github.com/rails/rails/pull/7370.patch",
      "html_url": "https://github.com/rails/rails/pull/7370"
    },
    "number": 7370,
    "updated_at": "2012-08-16T19:07:44Z",
    "html_url": "https://github.com/rails/rails/issues/7370",
    "url": "https://api.github.com/repos/rails/rails/issues/7370",
    "id": 6272188
  },
  {
    "body": "Decreased log level for rendered partials",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "521119bc541d7facd44e19a59a7e421e",
      "login": "sailor",
      "avatar_url": "https://secure.gravatar.com/avatar/521119bc541d7facd44e19a59a7e421e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sailor",
      "id": 37120
    },
    "closed_at": "2012-08-17T13:57:29Z",
    "created_at": "2012-08-16T17:15:19Z",
    "comments": 6,
    "title": "Update actionpack/lib/action_view/log_subscriber.rb",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7366.diff",
      "patch_url": "https://github.com/rails/rails/pull/7366.patch",
      "html_url": "https://github.com/rails/rails/pull/7366"
    },
    "number": 7366,
    "updated_at": "2012-08-17T13:57:29Z",
    "html_url": "https://github.com/rails/rails/issues/7366",
    "url": "https://api.github.com/repos/rails/rails/issues/7366",
    "id": 6269884
  },
  {
    "body": "let have this code:\n\n ```ruby\n class CreateDoorStatuses < ActiveRecord::Migration\n \n   def up\n     create_table :door_statuses do |t|\n       t.boolean :is_open, :null => false\n       t.timestamps\n     end\n   end\n \n   def down\n     drop_table :door_statuses\n   end\n \n end\n ```\n```ruby\n class DoorStatus < ActiveRecord::Base\n \n \tattr_accessible :is_open\n \n \tbefore_save :before_save_method\n \n \tdef before_save_method\n \t\tx = self[:is_open]\n \tend\n   \n end\n ```\n```ruby\n  class DoorStatusesController\n    def new\n        @door_status = DoorStatus.new(params[:door_status])\n        @door_status.save\n    end\n  end\n```\n\nthis fails when params[:door_status][:is_open] = false, If i remove before_save method, works again properly.\n\nThis is simillar but little diferent to this https://github.com/rails/rails/pull/7358\n\n\nTested on rails 3.2.8\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "659d74f084e5947e5aa907ba0f7f5e58",
      "login": "keram",
      "avatar_url": "https://secure.gravatar.com/avatar/659d74f084e5947e5aa907ba0f7f5e58?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/keram",
      "id": 578608
    },
    "closed_at": "2012-08-16T20:41:43Z",
    "created_at": "2012-08-16T16:41:01Z",
    "comments": 3,
    "title": "activerecord before_save and boolean attribute works wrong",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7363,
    "updated_at": "2012-08-16T20:41:43Z",
    "html_url": "https://github.com/rails/rails/issues/7363",
    "url": "https://api.github.com/repos/rails/rails/issues/7363",
    "id": 6269138
  },
  {
    "body": "hi guys after write this command  rake db:create\n\nappear this error bellow some tips to resolve?\n\nrvm/gems/ruby-1.9.3-p194/gems/sqlite3-1.3.6/lib/sqlite3/sqlite3_native.bundle: [BUG] Segmentation fault\nruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin12.0.0]\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "fd5102811622ae4cc89593b845d51627",
      "login": "douglasdeodato",
      "avatar_url": "https://secure.gravatar.com/avatar/fd5102811622ae4cc89593b845d51627?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/douglasdeodato",
      "id": 993318
    },
    "closed_at": "2012-08-16T12:12:23Z",
    "created_at": "2012-08-16T11:22:48Z",
    "comments": 8,
    "title": "[error]  rake db:create",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7362,
    "updated_at": "2012-09-09T08:22:28Z",
    "html_url": "https://github.com/rails/rails/issues/7362",
    "url": "https://api.github.com/repos/rails/rails/issues/7362",
    "id": 6262152
  },
  {
    "body": "Hi,\n\nI found a little confusing how this works, let me know if there's a reasoning for this:\n\nIn theory all routes paths follow this structure `resource_action_path` and this works great except for the following action:\n```\nresources :photos do\n get 'view'\nend\n```\nwhich results in `photo_view_path` having the action at the end instead of the beginning.\n\nIs this correct?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d4d35590520a9e146619f72182d420ed",
      "login": "fedesoria",
      "avatar_url": "https://secure.gravatar.com/avatar/d4d35590520a9e146619f72182d420ed?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/fedesoria",
      "id": 14005
    },
    "closed_at": "2012-08-16T00:52:11Z",
    "created_at": "2012-08-16T00:02:14Z",
    "comments": 2,
    "title": "Routing path order of verbs",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7359,
    "updated_at": "2012-08-16T00:54:14Z",
    "html_url": "https://github.com/rails/rails/issues/7359",
    "url": "https://api.github.com/repos/rails/rails/issues/7359",
    "id": 6254291
  },
  {
    "body": "Hello,\nthis fix situation when I want add presence validation for boolean value which by default fails when hold \"false\" value\n\nthat is because ``false.blank? # => true`` and ``true.blank? # => false``\n\nThus with this fix: ``\"false\".blank? # => false`` as is expected.\n\nI'm only not sure what with empty arrays\n``[].blank? # => true`` and with this patch ``\"[]\".blank? # => false``\nbut I suppose this would be right behaviour.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "659d74f084e5947e5aa907ba0f7f5e58",
      "login": "keram",
      "avatar_url": "https://secure.gravatar.com/avatar/659d74f084e5947e5aa907ba0f7f5e58?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/keram",
      "id": 578608
    },
    "closed_at": "2012-08-15T21:23:27Z",
    "created_at": "2012-08-15T21:08:32Z",
    "comments": 2,
    "title": "Feature presence validation for boolen parameters",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7358.diff",
      "patch_url": "https://github.com/rails/rails/pull/7358.patch",
      "html_url": "https://github.com/rails/rails/pull/7358"
    },
    "number": 7358,
    "updated_at": "2012-08-16T16:31:05Z",
    "html_url": "https://github.com/rails/rails/issues/7358",
    "url": "https://api.github.com/repos/rails/rails/issues/7358",
    "id": 6251065
  },
  {
    "body": "`update_column` includes the class's `default_scope` in the query (unlike `update_attributes` or the deprecated `update_attribute`). Example:\n\n```ruby\nclass User < ActiveRecord::Base\n  default_scope where(active: true)\nend\n\nuser = User.unscoped.where(active: false).first\nuser.id\n#=> 99\n\nuser.update_column(:active, true)\n#=> UPDATE `users` SET `active` = true WHERE `users`.`id` = 99 AND (active = true)\n => false\n\nuser.update_attribute(active: true)\n#=> UPDATE `users` SET `active` = true WHERE `users`.`id` = 99\n=> true\n```\n\nIf this is expected behavior, then it should be documented more thoroughly, and if not, then I can try writing a fix for it.\n\nRails 3.2.7, Ruby 1.9.3",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "eb56e6fa19ee55379e313367f049c1f9",
      "login": "bricker88",
      "avatar_url": "https://secure.gravatar.com/avatar/eb56e6fa19ee55379e313367f049c1f9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bricker88",
      "id": 978899
    },
    "closed_at": "2012-08-15T21:29:52Z",
    "created_at": "2012-08-15T19:06:49Z",
    "comments": 1,
    "title": "`update_column` uses `default_scope`",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7357,
    "updated_at": "2012-08-15T21:29:52Z",
    "html_url": "https://github.com/rails/rails/issues/7357",
    "url": "https://api.github.com/repos/rails/rails/issues/7357",
    "id": 6248177
  },
  {
    "body": "This is preparation before extracting Action View from Action Pack. Initially I went with extracting up-front, but @jeremy advised me to do changes first and then extract when everything is ready (which in fact is much better strategy).\n\nThe commits in this pull request basically get rid of Action Pack classes usage from Action View.\n\nOne of the problems that I want to ask about are deprecation messages. I deprecated 2 things here (moving `RecordIdentifier` to Action View and mime type lookups in auto discovery link tag) to follow rule \"Deprecate in 4.0, remove in 4.1\" instead deprecating in 3.2.x and removing in 4.0, but this means that we will be able to extract Action View no sooner than 4.1. Those deprecations will not be probably hit by many people, so I would like to consider moving them to `3-2-stable`, but I'm not sure about that.\n\n/cc @spastorino @rafaelfranca @josevalim @carlosantoniodasilva",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      },
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "582034b63279abeaa8e76acf12f5ee30",
      "login": "drogus",
      "avatar_url": "https://secure.gravatar.com/avatar/582034b63279abeaa8e76acf12f5ee30?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/drogus",
      "id": 5004
    },
    "closed_at": "2012-09-01T11:37:43Z",
    "created_at": "2012-08-15T16:23:54Z",
    "comments": 8,
    "title": "Decouple actionpack and actionview",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7356.diff",
      "patch_url": "https://github.com/rails/rails/pull/7356.patch",
      "html_url": "https://github.com/rails/rails/pull/7356"
    },
    "number": 7356,
    "updated_at": "2012-09-01T11:37:43Z",
    "html_url": "https://github.com/rails/rails/issues/7356",
    "url": "https://api.github.com/repos/rails/rails/issues/7356",
    "id": 6244216
  },
  {
    "body": "Hi,\n\nif request params include %, params processing cuts from the % like\n\n     Started GET \"Signature=0p0P23LxtX7mzQYmBinUZRwoY38%3D\"\n     Parameters: { \"Signature\"=>\"0p0P23LxtX7mzQYmBinUZRwoY38=\"}\n\nI'm not sure if this behavior is desired, but I ran into it while working with S3 today.\n\nI'm on rails 3.2.8 and worked around it with URI(request.original_url).query",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a8160507e340d9ad7ee9ce23a8f26e40",
      "login": "wpp",
      "avatar_url": "https://secure.gravatar.com/avatar/a8160507e340d9ad7ee9ce23a8f26e40?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/wpp",
      "id": 942021
    },
    "closed_at": "2012-08-15T15:40:00Z",
    "created_at": "2012-08-15T12:36:39Z",
    "comments": 5,
    "title": "params decoding results in signature mismatch",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7355,
    "updated_at": "2012-08-15T17:01:57Z",
    "html_url": "https://github.com/rails/rails/issues/7355",
    "url": "https://api.github.com/repos/rails/rails/issues/7355",
    "id": 6239377
  },
  {
    "body": "I see duplicated error messages while validations. It happens because of attribute was passed to ```validate_presence_of``` two times by different developers. It could be useful if ```ActiveModel``` will make attributes unique.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5adcc3757d6c4f5609aa2dc3b41f4705",
      "login": "saks",
      "avatar_url": "https://secure.gravatar.com/avatar/5adcc3757d6c4f5609aa2dc3b41f4705?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/saks",
      "id": 99110
    },
    "closed_at": "2012-08-15T12:28:01Z",
    "created_at": "2012-08-15T12:12:14Z",
    "comments": 1,
    "title": "Attributes in validations should be unique",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7354.diff",
      "patch_url": "https://github.com/rails/rails/pull/7354.patch",
      "html_url": "https://github.com/rails/rails/pull/7354"
    },
    "number": 7354,
    "updated_at": "2012-08-15T12:28:01Z",
    "html_url": "https://github.com/rails/rails/issues/7354",
    "url": "https://api.github.com/repos/rails/rails/issues/7354",
    "id": 6239018
  },
  {
    "body": "Here goes :\n\n```ruby\n    Time.zone.now => \"Eastern Time (US & Canada)\"\n    Time.zone.now => Wed, 15 Aug 2012 06:05:37 EDT -04:00\n    Time.zone.now + 39.years => Tue, 15 Aug 2051 06:06:03 EST -05:00\n```\n\nAnd so you have it, the end of our fabled Eastern Daylight Time has been prophesied by Ruby on Rails to end in the year 2051.\n\nAlso works for any other TimeZone changing area.\n\n```ruby\n    Time.zone\n     => \"Pacific Time (US & Canada)\" \n    1.9.2p180 :003 > Time.zone.now\n     => Wed, 15 Aug 2012 03:08:57 PDT -07:00 \n    1.9.2p180 :004 > Time.zone.now + 39.years\n     => Tue, 15 Aug 2051 03:08:57 PST -08:00 \n```\n\nThis exists in Rails 3.0 and in Rails 3.2.6",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9379a28d177a20ccfdf65ce9a342d807",
      "login": "gotoAndBliss",
      "avatar_url": "https://secure.gravatar.com/avatar/9379a28d177a20ccfdf65ce9a342d807?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/gotoAndBliss",
      "id": 57091
    },
    "closed_at": "2012-08-15T13:20:12Z",
    "created_at": "2012-08-15T10:17:06Z",
    "comments": 4,
    "title": "Rails Timezones End in 2051",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7353,
    "updated_at": "2012-08-15T13:20:12Z",
    "html_url": "https://github.com/rails/rails/issues/7353",
    "url": "https://api.github.com/repos/rails/rails/issues/7353",
    "id": 6237520
  },
  {
    "body": "This patch was originally submitted by Logan Bowers in https://rails.lighthouseapp.com/projects/8994/tickets/4498-rails-loses-precision-when-deserializing-timestamps-from-postgresql, but I've shortened the test case significantly and I can reliably reproduce it.\n\nIn psql, run this:\n\n    CREATE TABLE tmps (id serial primary key, atime timestamp with time zone );\n\nThen open up rails console and run this:\n\n    class Tmp < ActiveRecord::Base; end\n\n    time = Time.at(1344803062, 129346).utc\n    t = Tmp.create!({atime: time}, without_protection: true)\n    puts \"Original time: \" + time.strftime('%s.%N')\n    puts \"Retrieved time: \" + t.reload.atime.strftime('%s.%N')\n    puts \"Raw time from DB: \" + t.atime_before_type_cast\n\nI get the following results without the patch:\n\n    1.9.3p194 :005 > class Tmp < ActiveRecord::Base; end\n    1.9.3p194 :007 >   time = Time.at(1344803062, 129346).utc\n     => 2012-08-12 20:24:22 UTC \n    1.9.3p194 :008 > t = Tmp.create!({atime: time}, without_protection: true)\n       (0.1ms)  BEGIN\n      SQL (0.8ms)  INSERT INTO \"tmps\" (\"atime\") VALUES ('2012-08-12 20:24:22.129346') RETURNING \"id\"\n       (2.6ms)  COMMIT\n     => #<Tmp id: 3, atime: \"2012-08-12 20:24:22\"> \n    1.9.3p194 :009 > puts \"Original time: \" + time.strftime('%s.%N')\n    Original time: 1344803062.129346000\n    1.9.3p194 :010 > puts \"Retrieved time: \" + t.reload.atime.strftime('%s.%N')\n    Retrieved time: 1344788662.129345000\n    1.9.3p194 :011 > puts \"Raw time from DB: \" + t.atime_before_type_cast\n    Raw time from DB: 2012-08-12 20:24:22.129346+00\n\nNote that the DB says there are .129346 seconds, but Ruby says it's .129345 instead. With the patch, the times are all in sync.\nThis diff should also apply cleanly to 3.2.\n\nCC: @tenderlove, @rafaelfranca ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "52638907f672af0b017f59c47060b7d8",
      "login": "aripollak",
      "avatar_url": "https://secure.gravatar.com/avatar/52638907f672af0b017f59c47060b7d8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/aripollak",
      "id": 451345
    },
    "closed_at": "2012-08-17T17:19:34Z",
    "created_at": "2012-08-14T21:13:42Z",
    "comments": 7,
    "title": "Fix occasional microsecond conversion inaccuracy",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7352.diff",
      "patch_url": "https://github.com/rails/rails/pull/7352.patch",
      "html_url": "https://github.com/rails/rails/pull/7352"
    },
    "number": 7352,
    "updated_at": "2012-08-17T17:19:34Z",
    "html_url": "https://github.com/rails/rails/issues/7352",
    "url": "https://api.github.com/repos/rails/rails/issues/7352",
    "id": 6227474
  },
  {
    "body": "Just upgraded an app from 3.0.16 to 3.0.18; have not yet gotten the chance to test for this behavior against 3.1.8 and 3.2.8. But the error messages getting automatically built by ActiveRecord are getting mangled by the better html-escaping. I don't think they're getting escaped any more than they were before, but a number of the auto-generated messages include apostrophes, which are now getting escaped. e.g.\nvalidates_presence_of :name\nproduces an error that displays like:\nName can&amp;#x27;t be blank\n\nThoughts? I can mark the errors as #html_safe before displaying them. But I don't remember clearly if any of the other auto-generated error messages include the user input in their strings, which would make this approach insecure. And obviously, anytime a developer uses the custom error message options, they may stick user input into the message. ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "46dc81c8ed9172f51b36210bb1937b2f",
      "login": "bensomers",
      "avatar_url": "https://secure.gravatar.com/avatar/46dc81c8ed9172f51b36210bb1937b2f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bensomers",
      "id": 84273
    },
    "closed_at": "2012-08-14T19:30:54Z",
    "created_at": "2012-08-14T19:02:18Z",
    "comments": 1,
    "title": "Validation-generated error messages get html-escaped too aggressively",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7351,
    "updated_at": "2012-08-14T19:30:55Z",
    "html_url": "https://github.com/rails/rails/issues/7351",
    "url": "https://api.github.com/repos/rails/rails/issues/7351",
    "id": 6224254
  },
  {
    "body": "We don't need this any more.\n\nFixes #6907.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "233c279c012ebac792aaa805f966cbc7",
      "login": "steveklabnik",
      "avatar_url": "https://secure.gravatar.com/avatar/233c279c012ebac792aaa805f966cbc7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/steveklabnik",
      "id": 27786
    },
    "closed_at": "2012-08-14T17:02:24Z",
    "created_at": "2012-08-14T15:49:49Z",
    "comments": 3,
    "title": "No longer require AS::TestCase",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7349.diff",
      "patch_url": "https://github.com/rails/rails/pull/7349.patch",
      "html_url": "https://github.com/rails/rails/pull/7349"
    },
    "number": 7349,
    "updated_at": "2012-08-14T17:02:43Z",
    "html_url": "https://github.com/rails/rails/issues/7349",
    "url": "https://api.github.com/repos/rails/rails/issues/7349",
    "id": 6219552
  },
  {
    "body": "```\nclass Entry < AR::Base\n  around_update do\n    puts 'foo'\n    yield\n    puts 'bar'\n  end\nend\n```\n\non actual update:\n```\nLocalJumpError: no block given (yield)\n  from /my-app-path/app/models/entry.rb:4:in `block in <class:Entry>'\n  from /rubygems-path/activesupport-3.2.8/lib/active_support/callbacks.rb:214:in `_conditional_callback_around_33'\n```\n\nThe callback defined with method works fine though.\n```\nclass Entry < AR::Base\n  def _my_around_update_callback\n    puts 'foo'\n    yield\n    puts 'bar'\n  end\n\n  around_update :_my_around_update_callback\nend\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "df08a0889bad0229c372f702976a3da6",
      "login": "rwz",
      "avatar_url": "https://secure.gravatar.com/avatar/df08a0889bad0229c372f702976a3da6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rwz",
      "id": 129043
    },
    "closed_at": "2012-08-13T11:35:16Z",
    "created_at": "2012-08-13T08:29:20Z",
    "comments": 1,
    "title": "AR around callbacks defined with block are broken",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7344,
    "updated_at": "2012-08-13T11:35:16Z",
    "html_url": "https://github.com/rails/rails/issues/7344",
    "url": "https://api.github.com/repos/rails/rails/issues/7344",
    "id": 6185190
  },
  {
    "body": "Added this because I needed to limit hours in the select_hour helper to a business' hours of operation. I followed the example of :start_year and :end_year in adding the additional options.\n\nAll the tests are passing.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "7b933f25e6a107c412b42514b136421d",
      "login": "egtann",
      "avatar_url": "https://secure.gravatar.com/avatar/7b933f25e6a107c412b42514b136421d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/egtann",
      "id": 577672
    },
    "closed_at": "2012-08-13T17:03:02Z",
    "created_at": "2012-08-12T21:38:12Z",
    "comments": 3,
    "title": "Add start_hour and end_hour options for select_hour helper",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7343.diff",
      "patch_url": "https://github.com/rails/rails/pull/7343.patch",
      "html_url": "https://github.com/rails/rails/pull/7343"
    },
    "number": 7343,
    "updated_at": "2012-08-13T17:03:02Z",
    "html_url": "https://github.com/rails/rails/issues/7343",
    "url": "https://api.github.com/repos/rails/rails/issues/7343",
    "id": 6180164
  },
  {
    "body": "I'm not sure about my english on documentation but the feature is fine :)\n\nI was in doubt about this line:\n\n``` ruby\nunless [:include?, :call].any?{ |method| delimiter.respond_to?(method) } || delimiter.is_a?(Symbol)\n```\n\nIt may be more clear about what is happening, but this is not a big deal:\n\n``` ruby\nunless delimiter.respond_to?(:include?) || delimiter.respond_to?(:call) || delimiter.is_a?(Symbol)\n```\n\nWhat do you think?",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "c2dc9c02ce7a041285725a4fc9e5f6d2",
      "login": "sobrinho",
      "avatar_url": "https://secure.gravatar.com/avatar/c2dc9c02ce7a041285725a4fc9e5f6d2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sobrinho",
      "id": 26460
    },
    "closed_at": "2012-08-24T21:15:09Z",
    "created_at": "2012-08-12T20:47:02Z",
    "comments": 19,
    "title": "Accept a symbol for `:in` option on inclusion and exclusion validators",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7342.diff",
      "patch_url": "https://github.com/rails/rails/pull/7342.patch",
      "html_url": "https://github.com/rails/rails/pull/7342"
    },
    "number": 7342,
    "updated_at": "2012-08-24T21:15:18Z",
    "html_url": "https://github.com/rails/rails/issues/7342",
    "url": "https://api.github.com/repos/rails/rails/issues/7342",
    "id": 6179805
  },
  {
    "body": "doesn’t => don’t",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "83a4ac21377f0939f0ccc3b6db7a9bd1",
      "login": "edward",
      "avatar_url": "https://secure.gravatar.com/avatar/83a4ac21377f0939f0ccc3b6db7a9bd1?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/edward",
      "id": 325
    },
    "closed_at": "2012-08-12T20:31:06Z",
    "created_at": "2012-08-12T20:28:26Z",
    "comments": 0,
    "title": "Grammar fix in ActionView Form Tag Helper docs/comments",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7341.diff",
      "patch_url": "https://github.com/rails/rails/pull/7341.patch",
      "html_url": "https://github.com/rails/rails/pull/7341"
    },
    "number": 7341,
    "updated_at": "2012-08-12T20:31:06Z",
    "html_url": "https://github.com/rails/rails/issues/7341",
    "url": "https://api.github.com/repos/rails/rails/issues/7341",
    "id": 6179691
  },
  {
    "body": "Added this because I needed to limit hours in the select_hour helper to a business' hours of operation. I followed the example of :start_year and :end_year in adding the additional options.\n\nAll the tests are passing.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "7b933f25e6a107c412b42514b136421d",
      "login": "egtann",
      "avatar_url": "https://secure.gravatar.com/avatar/7b933f25e6a107c412b42514b136421d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/egtann",
      "id": 577672
    },
    "closed_at": "2012-08-12T21:23:47Z",
    "created_at": "2012-08-12T20:00:08Z",
    "comments": 4,
    "title": "Added start_hour and end_hour options for select_hour helper",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7340.diff",
      "patch_url": "https://github.com/rails/rails/pull/7340.patch",
      "html_url": "https://github.com/rails/rails/pull/7340"
    },
    "number": 7340,
    "updated_at": "2012-08-12T21:37:44Z",
    "html_url": "https://github.com/rails/rails/issues/7340",
    "url": "https://api.github.com/repos/rails/rails/issues/7340",
    "id": 6179543
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ad093366b20e7b11217b02fc268be786",
      "login": "maletor",
      "avatar_url": "https://secure.gravatar.com/avatar/ad093366b20e7b11217b02fc268be786?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/maletor",
      "id": 138785
    },
    "closed_at": "2012-08-12T18:32:09Z",
    "created_at": "2012-08-12T18:27:29Z",
    "comments": 0,
    "title": "Missing closing tag",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7339.diff",
      "patch_url": "https://github.com/rails/rails/pull/7339.patch",
      "html_url": "https://github.com/rails/rails/pull/7339"
    },
    "number": 7339,
    "updated_at": "2012-08-12T18:32:09Z",
    "html_url": "https://github.com/rails/rails/issues/7339",
    "url": "https://api.github.com/repos/rails/rails/issues/7339",
    "id": 6178902
  },
  {
    "body": "In cases where a notification subscriber includes methods to support\nboth Evented and Timed events, Evented should take priority over Timed.\nThis allows subscribers to be backwards compatible (older Rails only\nallows Timed events) while defaulting to newer behavior.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ffba81343784b413ed79f4da3e33ae02",
      "login": "sax",
      "avatar_url": "https://secure.gravatar.com/avatar/ffba81343784b413ed79f4da3e33ae02?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sax",
      "id": 77073
    },
    "closed_at": "2012-08-13T01:42:33Z",
    "created_at": "2012-08-12T17:14:57Z",
    "comments": 1,
    "title": "Evented notifications should take priority over Timed",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7338.diff",
      "patch_url": "https://github.com/rails/rails/pull/7338.patch",
      "html_url": "https://github.com/rails/rails/pull/7338"
    },
    "number": 7338,
    "updated_at": "2012-08-13T01:42:33Z",
    "html_url": "https://github.com/rails/rails/issues/7338",
    "url": "https://api.github.com/repos/rails/rails/issues/7338",
    "id": 6178441
  },
  {
    "body": "The string_to_dummy_time method was blindly parsing the dummy time string\nwith Date._parse which returns a hash for the date part regardless\nof whether the time part is an invalid time string.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "21126416f8a3de608f82069ab943a336",
      "login": "adzap",
      "avatar_url": "https://secure.gravatar.com/avatar/21126416f8a3de608f82069ab943a336?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/adzap",
      "id": 6318
    },
    "closed_at": "2012-09-05T13:26:54Z",
    "created_at": "2012-08-12T10:29:56Z",
    "comments": 6,
    "title": "Fix for time type columns with invalid time value",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7337.diff",
      "patch_url": "https://github.com/rails/rails/pull/7337.patch",
      "html_url": "https://github.com/rails/rails/pull/7337"
    },
    "number": 7337,
    "updated_at": "2012-09-05T13:26:54Z",
    "html_url": "https://github.com/rails/rails/issues/7337",
    "url": "https://api.github.com/repos/rails/rails/issues/7337",
    "id": 6176279
  },
  {
    "body": "Here it is https://github.com/rails/sprockets-rails/blob/master/test/assets_debugging_test.rb and https://github.com/rails/sprockets-rails/blob/master/test/assets_test.rb\n/cc @guilleiguaran",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b97b92886055641a956499b3cbb473e6",
      "login": "route",
      "avatar_url": "https://secure.gravatar.com/avatar/b97b92886055641a956499b3cbb473e6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/route",
      "id": 414803
    },
    "closed_at": "2012-08-12T11:58:42Z",
    "created_at": "2012-08-12T09:45:24Z",
    "comments": 3,
    "title": "Tests for assets were extracted to sprockets-rails and now they are unnecessary",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7336.diff",
      "patch_url": "https://github.com/rails/rails/pull/7336.patch",
      "html_url": "https://github.com/rails/rails/pull/7336"
    },
    "number": 7336,
    "updated_at": "2012-08-12T13:29:54Z",
    "html_url": "https://github.com/rails/rails/issues/7336",
    "url": "https://api.github.com/repos/rails/rails/issues/7336",
    "id": 6176020
  },
  {
    "body": "`ActiveRecord::Persistence#update_attributes`:\n`If no :as option is supplied then the :default role will be used`.\n\nI think it's good to change this behaviour to:\n`if no role is provided then current_role is used`.\n\nSuggestion is to introduce `current_role` and `set_current_role` methods that get and set current mass-assignment's role (instead of `:default`).\n\nThis feature will be useful: we shouldn't point `:as` option each time. But it's not necessary by logic: if you're admin, you'll not be guest till current action. Let's set role by one time?\n\nUhm? Thanx.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ed675c79ccad4b43a73564eae5ef9bab",
      "login": "kuraga",
      "avatar_url": "https://secure.gravatar.com/avatar/ed675c79ccad4b43a73564eae5ef9bab?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kuraga",
      "id": 1063219
    },
    "closed_at": "2012-08-12T14:27:53Z",
    "created_at": "2012-08-12T06:28:25Z",
    "comments": 10,
    "title": "Suggestion: set_current_role in MassAssignment",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7335,
    "updated_at": "2012-09-08T11:59:28Z",
    "html_url": "https://github.com/rails/rails/issues/7335",
    "url": "https://api.github.com/repos/rails/rails/issues/7335",
    "id": 6175321
  },
  {
    "body": "This adds documentation for four of the methods on the `Rails` module:\n\n* `Rails.env`\n* `Rails.logger`\n* `Rails.public_path`\n* `Rails.root`\n\nNo code changes, and the generated rdoc looks correct.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "aefddaa508f043817d0897f230aab7f3",
      "login": "bkerley",
      "avatar_url": "https://secure.gravatar.com/avatar/aefddaa508f043817d0897f230aab7f3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bkerley",
      "id": 4354
    },
    "closed_at": "2012-08-17T14:55:35Z",
    "created_at": "2012-08-11T19:12:41Z",
    "comments": 11,
    "title": "Rails method docs",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7333.diff",
      "patch_url": "https://github.com/rails/rails/pull/7333.patch",
      "html_url": "https://github.com/rails/rails/pull/7333"
    },
    "number": 7333,
    "updated_at": "2012-08-17T16:29:37Z",
    "html_url": "https://github.com/rails/rails/issues/7333",
    "url": "https://api.github.com/repos/rails/rails/issues/7333",
    "id": 6172166
  },
  {
    "body": "Regarding updated contribution guide: https://github.com/rails/rails/commit/adf3ea373660c50c7bcead0f52ab2d63a25fc57e\n\nI'm adding changelog entry for merged #6993",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "8085138938c34ae1af140bfc91f2fe56",
      "login": "morgoth",
      "avatar_url": "https://secure.gravatar.com/avatar/8085138938c34ae1af140bfc91f2fe56?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/morgoth",
      "id": 10766
    },
    "closed_at": "2012-08-11T12:12:49Z",
    "created_at": "2012-08-11T12:04:19Z",
    "comments": 0,
    "title": "Added changelog entry for table name prefix fix [ci skip]",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7331.diff",
      "patch_url": "https://github.com/rails/rails/pull/7331.patch",
      "html_url": "https://github.com/rails/rails/pull/7331"
    },
    "number": 7331,
    "updated_at": "2012-08-11T12:12:49Z",
    "html_url": "https://github.com/rails/rails/issues/7331",
    "url": "https://api.github.com/repos/rails/rails/issues/7331",
    "id": 6169794
  },
  {
    "body": "I can't seem to use ERBUtils methods like h or html_escape inside my helper specs.\n\nFor exampe....\n\n```\nassert_equal link_to(html_escape(\"<b>hello</b>\")), link_to_custom(\"<b>hello</b>\")\n```\n\nThis will raise undefined method for html_escape.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b5af854560a1f83413ce4f27596ed231",
      "login": "ngan",
      "avatar_url": "https://secure.gravatar.com/avatar/b5af854560a1f83413ce4f27596ed231?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ngan",
      "id": 16579
    },
    "closed_at": "2012-08-11T17:28:46Z",
    "created_at": "2012-08-11T11:49:20Z",
    "comments": 9,
    "title": "html_escape cannot be called from helper tests",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7330,
    "updated_at": "2012-08-11T18:48:45Z",
    "html_url": "https://github.com/rails/rails/issues/7330",
    "url": "https://api.github.com/repos/rails/rails/issues/7330",
    "id": 6169715
  },
  {
    "body": "ActionDispatch railtie is a better place for\nconfig.action_dispatch.default_headers settings, users can continue\noverriding those settings in their configuration files if needed.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "73d57855a3bfe5c534596197a895ab6e",
      "login": "guilleiguaran",
      "avatar_url": "https://secure.gravatar.com/avatar/73d57855a3bfe5c534596197a895ab6e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/guilleiguaran",
      "id": 160941
    },
    "closed_at": "2012-08-11T03:08:10Z",
    "created_at": "2012-08-11T02:26:07Z",
    "comments": 0,
    "title": "Move AD default_headers configurations to railtie",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7329.diff",
      "patch_url": "https://github.com/rails/rails/pull/7329.patch",
      "html_url": "https://github.com/rails/rails/pull/7329"
    },
    "number": 7329,
    "updated_at": "2012-08-11T03:08:10Z",
    "html_url": "https://github.com/rails/rails/issues/7329",
    "url": "https://api.github.com/repos/rails/rails/issues/7329",
    "id": 6167366
  },
  {
    "body": "I get this annoying output even though I'm not using test unit  and I passed in --no-test-unit when I generated the app.\n\n/home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:167:in `block in non_options': file not found: db:migrate (ArgumentError)\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:146:in `map!'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:146:in `non_options'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:207:in `non_options'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:52:in `process_args'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/minitest/unit.rb:891:in `_run'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/minitest/unit.rb:884:in `run'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:21:in `run'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:326:in `block (2 levels) in autorun'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:27:in `run_once'\n\tfrom /home/rkcudjoe/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1/test/unit.rb:325:in `block in autorun'\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d41d8cd98f00b204e9800998ecf8427e",
      "login": "rkcudjoe",
      "avatar_url": "https://secure.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rkcudjoe",
      "id": 1233804
    },
    "closed_at": "2012-08-11T01:22:03Z",
    "created_at": "2012-08-11T00:37:55Z",
    "comments": 7,
    "title": "Annoying output from test unit/ mini test",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7328,
    "updated_at": "2012-08-11T01:22:03Z",
    "html_url": "https://github.com/rails/rails/issues/7328",
    "url": "https://api.github.com/repos/rails/rails/issues/7328",
    "id": 6166756
  },
  {
    "body": "Because I was wondering why Rails doesn't enable Gzip compression by default, I added it in the template, the same way I'll do it in my apps.\n\nThere may be a good reason of not enabling Gzip compression by default. If so I'd like to hear it of course ;)\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f2b113a55e42f840085008edd2938d57",
      "login": "jeroeningen",
      "avatar_url": "https://secure.gravatar.com/avatar/f2b113a55e42f840085008edd2938d57?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jeroeningen",
      "id": 20246
    },
    "closed_at": "2012-08-14T09:20:35Z",
    "created_at": "2012-08-10T20:32:55Z",
    "comments": 10,
    "title": "Enable Gzip compression by default",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7327.diff",
      "patch_url": "https://github.com/rails/rails/pull/7327.patch",
      "html_url": "https://github.com/rails/rails/pull/7327"
    },
    "number": 7327,
    "updated_at": "2012-08-14T09:20:35Z",
    "html_url": "https://github.com/rails/rails/issues/7327",
    "url": "https://api.github.com/repos/rails/rails/issues/7327",
    "id": 6161496
  },
  {
    "body": "Because I was wondering why Rails doesn't enable Gzip compression by default, I added it in the template, the same way I'll do it in my apps.\n\nThere may be a good reason of not enabling Gzip compression by default. If so I'd like to hear it of course ;)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f2b113a55e42f840085008edd2938d57",
      "login": "jeroeningen",
      "avatar_url": "https://secure.gravatar.com/avatar/f2b113a55e42f840085008edd2938d57?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jeroeningen",
      "id": 20246
    },
    "closed_at": "2012-08-10T20:29:11Z",
    "created_at": "2012-08-10T20:28:02Z",
    "comments": 0,
    "title": "Enable Gzip compression by default",
    "state": "closed",
    "pull_request": {
      "diff_url": "https://github.com/rails/rails/pull/7326.diff",
      "patch_url": "https://github.com/rails/rails/pull/7326.patch",
      "html_url": "https://github.com/rails/rails/pull/7326"
    },
    "number": 7326,
    "updated_at": "2012-08-10T20:29:11Z",
    "html_url": "https://github.com/rails/rails/issues/7326",
    "url": "https://api.github.com/repos/rails/rails/issues/7326",
    "id": 6161378
  },
  {
    "body": "We are developing on windows with rails 3.1.4 and ruby 1.9.3-p125 and running production on ubuntu with rails 3.1.4 and ruby 1.9.3-p194.  There is no problem rendering new.html.erb on development machine. However the same code generates a ActionView template error below:\n\nActionView::Template::Error (/home/ubuntu/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.1.4/lib/active_record/attribute_methods/time_zone_conversion.rb:44: syntax error, unexpected '=', expecting ';' or '\\n'\n                def created_at =(original_time)\n\n/home/ubuntu/.rvm/gems/ruby-1.9.3-p194/gems/activerecord-3.1.4/lib/active_record/attribute_methods/time_zone_conversion.rb:52: syntax error, unexpected keyword_end, expecting $end):\n    1: <%= simple_form_for(@receiving_bank_acct) do |f| %>\n    2:                                           ç§°ï¼' %>\n    4:   <%= f.input :acct_num, :label => \"å¸å·ï¼ \" %>\n  app/views/receiving_bank_accts/_form_new.html.erb:1:in `_app_views_receiving_bank_accts__form_new_html_erb__3211905100153845634_44885900'\n  app/views/receiving_bank_accts/new.html.erb:3:in `_app_views_receiving_bank_accts_new_html_erb__2741253825400894577_44669240'\n\nThe problem was caused by created_at for time zone conversation. The ascii code in error message is the Chinese chars. There are only total 6 lines in new.html.erb. Not sure why the same code works on development and throws error on production. Is it a bug? Thanks",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "23d75d7db4d98e9004cc9988c4b3a67f",
      "login": "emclab",
      "avatar_url": "https://secure.gravatar.com/avatar/23d75d7db4d98e9004cc9988c4b3a67f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/emclab",
      "id": 946013
    },
    "closed_at": "2012-08-10T20:02:07Z",
    "created_at": "2012-08-10T18:43:43Z",
    "comments": 5,
    "title": "ActiveView Template error caused by active_record/attribute_methods/time_zone_conversion.rb:44:",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7325,
    "updated_at": "2012-08-10T20:02:07Z",
    "html_url": "https://github.com/rails/rails/issues/7325",
    "url": "https://api.github.com/repos/rails/rails/issues/7325",
    "id": 6159302
  },
  {
    "body": "The fix for #7215 by @spastorino caused #3927 to manifest again and now my tests run spamming with:\n\n```\n/Users/betelgeuse/.rvm/gems/ruby-1.9.3-p125/gems/activesupport-3.1.8/lib/active_support/core_ext/string/output_safety.rb:23: warning: regexp match /.../n against to UTF-8 string\n```",
    "milestone": null,
    "assignee": {
      "gravatar_id": "0525b332aafb83307b32d9747a93de03",
      "login": "rafaelfranca",
      "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rafaelfranca",
      "id": 47848
    },
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "24ff03200290b25a8d57163e3ef5554e",
      "login": "betelgeuse",
      "avatar_url": "https://secure.gravatar.com/avatar/24ff03200290b25a8d57163e3ef5554e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/betelgeuse",
      "id": 34627
    },
    "closed_at": "2012-08-15T22:13:16Z",
    "created_at": "2012-08-10T10:42:54Z",
    "comments": 3,
    "title": "3.1.8 html_escape gives warnings",
    "state": "closed",
    "pull_request": {
      "diff_url": null,
      "patch_url": null,
      "html_url": null
    },
    "number": 7323,
    "updated_at": "2012-08-15T22:13:16Z",
    "html_url": "https://github.com/rails/rails/issues/7323",
    "url": "https://api.github.com/repos/rails/rails/issues/7323",
    "id": 6148068
  }
]
}

CLOSED_ISSUES_PAGE_3 = %q{
[
  {
    "body": "I have a script.js.coffee.erb file where I have small HTML template and I already am using image_tag helper.\nI would also liket to use form tag helpers in there.\nHow to include ActionView::Helpers::FormTagHelper in Asset Pipeline processing?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2ab0c48cc53da1ad770490e990e63471",
      "login": "iRonin",
      "avatar_url": "https://secure.gravatar.com/avatar/2ab0c48cc53da1ad770490e990e63471?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/iRonin",
      "id": 27929
    },
    "closed_at": "2012-08-10T14:29:06Z",
    "created_at": "2012-08-10T10:28:54Z",
    "comments": 1,
    "title": "How to include ActionView::Helpers::FormTagHelper in Asset Pipeline processing",
    "html_url": "https://github.com/rails/rails/issues/7322",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7322,
    "updated_at": "2012-08-10T14:29:06Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7322",
    "id": 6147889
  },
  {
    "body": "No need to build `valid_conditions` array.\nWe can get all the data in place.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-08-10T17:32:07Z",
    "created_at": "2012-08-10T08:58:20Z",
    "comments": 3,
    "title": "RouteSet: refactor internals",
    "html_url": "https://github.com/rails/rails/issues/7321",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7321",
      "patch_url": "https://github.com/rails/rails/pull/7321.patch",
      "diff_url": "https://github.com/rails/rails/pull/7321.diff"
    },
    "number": 7321,
    "updated_at": "2012-08-10T17:52:52Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7321",
    "id": 6146425
  },
  {
    "body": "Hi,\n\nThe following helper worked just fine until Rails 3.0.16:\n\n````ruby\n  # Generates show/hide functions for an overlay with id passed as a parameter.\n  def overlay_javascript_tag(overlay, *options)\n    params = options[0]\n    click_hide = (params[:click_hide] if params) || false\n    animate = (params[:animate] if params) || false\n    \n    javascript_tag do\n    \"\n      var #{overlay}_overlay = new Overlay();\n      \n      function show_#{overlay}_overlay() {\n        #{overlay}_overlay.show($('#{overlay}'), { position : 'center',\n                                                   modal : true,\n                                                   animate : #{animate},\n                                                   animation_duration : 150,\n                                                   auto_hide : false,\n                                                   click_hide : #{click_hide}, \n                                                   opacity : 1.0,\n                                                   bckg_opacity : 0.7 });\n      };\n      \n      function hide_#{overlay}_overlay() {\n        #{overlay}_overlay.hide();\n      };\n    \"\n    end\n  end\n````\n\nCode generated was:\n\n````javascript\n<script type=\"text/javascript\">\n//<![CDATA[\n\n      var modal_typ_standard_overlay = new Overlay();\n      \n      function show_modal_typ_standard_overlay() {\n        modal_typ_standard_overlay.show($('modal_typ_standard'), { position : 'center',\n                                                   modal : true,\n                                                   animate : false,\n                                                   animation_duration : 150,\n                                                   auto_hide : false,\n                                                   click_hide : true, \n                                                   opacity : 1.0,\n                                                   bckg_opacity : 0.7 });\n      };\n      \n      function hide_modal_typ_standard_overlay() {\n        modal_typ_standard_overlay.hide();\n      };\n    \n//]]>\n</script>\n````\n\nStarting with Rails 3.0.17, single quotes are rendered oddly:\n\n````javascript\n<script type=\"text/javascript\">\n//<![CDATA[\n\n      var modal_typ_standard_overlay = new Overlay();\n      \n      function show_modal_typ_standard_overlay() {\n        modal_typ_standard_overlay.show($(&#x27;modal_typ_standard&#x27;), { position : &#x27;center&#x27;,\n                                                   modal : true,\n                                                   animate : false,\n                                                   animation_duration : 150,\n                                                   auto_hide : false,\n                                                   click_hide : true, \n                                                   opacity : 1.0,\n                                                   bckg_opacity : 0.7 });\n      };\n      \n      function hide_modal_typ_standard_overlay() {\n        modal_typ_standard_overlay.hide();\n      };\n    \n//]]>\n</script>\n````\n\nI can see in Chrome Javascript Console: \"Uncaught SyntaxError: Unexpected token & \". \n\nAny idea which Rails 3.0.17 change triggers this problem?",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "needs feedback",
        "url": "https://api.github.com/repos/rails/rails/labels/needs+feedback",
        "color": "ededed"
      },
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "0157def628fa9a2d7dbd44a1f26f8f3e",
      "login": "plang",
      "avatar_url": "https://secure.gravatar.com/avatar/0157def628fa9a2d7dbd44a1f26f8f3e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/plang",
      "id": 323260
    },
    "closed_at": "2012-08-10T20:10:46Z",
    "created_at": "2012-08-10T08:36:58Z",
    "comments": 4,
    "title": "javascript_tag in helper & single quote escaping bug with 3.0.17",
    "html_url": "https://github.com/rails/rails/issues/7320",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7320,
    "updated_at": "2012-08-10T20:10:46Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7320",
    "id": 6146043
  },
  {
    "body": "Hello,\n\nI don't think it's an issue on my computer but if it is, sorry for this pull request. When I want to start the console typing `rails c`, I have a LoadError like this one:\n\n```\n/home/robin/.gem/ruby/1.9.1/gems/activesupport-3.2.6/lib/active_support/dependencies.rb:251:in `require': cannot load such file -- minitest/unit (LoadError)\n```\n\nSo I think we can add `minitest` by default in the Gemfile ?\n\nHave a nice day.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2d27b53e2eeb6a053552332020628029",
      "login": "robin850",
      "avatar_url": "https://secure.gravatar.com/avatar/2d27b53e2eeb6a053552332020628029?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/robin850",
      "id": 354185
    },
    "closed_at": "2012-08-10T14:29:16Z",
    "created_at": "2012-08-10T08:35:01Z",
    "comments": 10,
    "title": "Add minitest to the Gemfile template",
    "html_url": "https://github.com/rails/rails/issues/7319",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7319",
      "patch_url": "https://github.com/rails/rails/pull/7319.patch",
      "diff_url": "https://github.com/rails/rails/pull/7319.diff"
    },
    "number": 7319,
    "updated_at": "2012-08-14T14:59:38Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7319",
    "id": 6146016
  },
  {
    "body": "It fixes #3047, #2483.\n\n@rafaelfranca I've backported two commits, first to support jar options on all stores and second to fix issue with re-streaming of cookie jar with the same value. Also I've found that one of the tests in the second commit was wrongly written, so I've corrected that as well.\n\nAll tests pass.",
    "milestone": null,
    "assignee": {
      "gravatar_id": "0525b332aafb83307b32d9747a93de03",
      "login": "rafaelfranca",
      "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rafaelfranca",
      "id": 47848
    },
    "labels": [

    ],
    "user": {
      "gravatar_id": "254513687a01330ba0ae676538de459b",
      "login": "brainopia",
      "avatar_url": "https://secure.gravatar.com/avatar/254513687a01330ba0ae676538de459b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/brainopia",
      "id": 386
    },
    "closed_at": "2012-08-11T19:57:44Z",
    "created_at": "2012-08-10T06:08:00Z",
    "comments": 13,
    "title": "Backport of \"Support cookie jar options for all cookie stores\" for 3.2-stable",
    "html_url": "https://github.com/rails/rails/issues/7316",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7316",
      "patch_url": "https://github.com/rails/rails/pull/7316.patch",
      "diff_url": "https://github.com/rails/rails/pull/7316.diff"
    },
    "number": 7316,
    "updated_at": "2012-08-11T19:57:44Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7316",
    "id": 6144145
  },
  {
    "body": "Currently\n  `assert response.cookies, 'user_name' => 'Jamie'`\nonly tests whether cookies are present or not instead of checking value.\n\nChanging `assert` to `assert_equal` fixes it.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "254513687a01330ba0ae676538de459b",
      "login": "brainopia",
      "avatar_url": "https://secure.gravatar.com/avatar/254513687a01330ba0ae676538de459b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/brainopia",
      "id": 386
    },
    "closed_at": "2012-08-10T06:06:23Z",
    "created_at": "2012-08-10T05:56:03Z",
    "comments": 0,
    "title": "Fix mistake in assertion about content of permanent cookie",
    "html_url": "https://github.com/rails/rails/issues/7315",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7315",
      "patch_url": "https://github.com/rails/rails/pull/7315.patch",
      "diff_url": "https://github.com/rails/rails/pull/7315.diff"
    },
    "number": 7315,
    "updated_at": "2012-08-10T06:06:23Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7315",
    "id": 6144058
  },
  {
    "body": "If nil or an empty array is passed into `form_for` you get a horrible error message, this one is much more indicative of what the programmer needs to know to fix the problem.\n\n\nATP in actionpack\n\nScreenshot goodness:  \n\n![](http://f.cl.ly/items/1R323K2e1u2k1u2E3N0u/Screen%20Shot%202012-08-10%20at%2012.08.24%20AM.png)",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "db953d125f5cc49756edb6149f1b813e",
      "login": "schneems",
      "avatar_url": "https://secure.gravatar.com/avatar/db953d125f5cc49756edb6149f1b813e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/schneems",
      "id": 59744
    },
    "closed_at": "2012-08-11T03:09:30Z",
    "created_at": "2012-08-10T05:06:51Z",
    "comments": 12,
    "title": "Check for Blank Record in form_for",
    "html_url": "https://github.com/rails/rails/issues/7314",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7314",
      "patch_url": "https://github.com/rails/rails/pull/7314.patch",
      "diff_url": "https://github.com/rails/rails/pull/7314.diff"
    },
    "number": 7314,
    "updated_at": "2012-08-11T03:09:30Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7314",
    "id": 6143654
  },
  {
    "body": "Missed this in the changelogs.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "627f0a46a5ea5729951b8224833ca653",
      "login": "amerine",
      "avatar_url": "https://secure.gravatar.com/avatar/627f0a46a5ea5729951b8224833ca653?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/amerine",
      "id": 1016
    },
    "closed_at": "2012-08-09T23:57:50Z",
    "created_at": "2012-08-09T23:56:35Z",
    "comments": 0,
    "title": "Add html_escape note to CHANGELOG",
    "html_url": "https://github.com/rails/rails/issues/7310",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7310",
      "patch_url": "https://github.com/rails/rails/pull/7310.patch",
      "diff_url": "https://github.com/rails/rails/pull/7310.diff"
    },
    "number": 7310,
    "updated_at": "2012-08-09T23:57:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7310",
    "id": 6140632
  },
  {
    "body": "Missed this in the changelogs.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "627f0a46a5ea5729951b8224833ca653",
      "login": "amerine",
      "avatar_url": "https://secure.gravatar.com/avatar/627f0a46a5ea5729951b8224833ca653?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/amerine",
      "id": 1016
    },
    "closed_at": "2012-08-09T23:57:38Z",
    "created_at": "2012-08-09T23:53:05Z",
    "comments": 0,
    "title": "Add html_escape note to CHANGELOG",
    "html_url": "https://github.com/rails/rails/issues/7309",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7309",
      "patch_url": "https://github.com/rails/rails/pull/7309.patch",
      "diff_url": "https://github.com/rails/rails/pull/7309.diff"
    },
    "number": 7309,
    "updated_at": "2012-08-09T23:57:38Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7309",
    "id": 6140588
  },
  {
    "body": "Missed this in the changelogs.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "627f0a46a5ea5729951b8224833ca653",
      "login": "amerine",
      "avatar_url": "https://secure.gravatar.com/avatar/627f0a46a5ea5729951b8224833ca653?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/amerine",
      "id": 1016
    },
    "closed_at": "2012-08-09T23:57:31Z",
    "created_at": "2012-08-09T23:51:46Z",
    "comments": 0,
    "title": "Add html_escape note to CHANGELOG",
    "html_url": "https://github.com/rails/rails/issues/7308",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7308",
      "patch_url": "https://github.com/rails/rails/pull/7308.patch",
      "diff_url": "https://github.com/rails/rails/pull/7308.diff"
    },
    "number": 7308,
    "updated_at": "2012-08-09T23:57:31Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7308",
    "id": 6140574
  },
  {
    "body": "Right now if you include url_helpers the host, port and scheme aren't\nset which gives you an exception or the wrong url when included in\nplaces other than controller and views (where we have access to the\nrequest). This adds that missing information in Thread.current via\na middleware and thus allows access which works.\n\nWhat do you think? Wanted to get opinions before I dig into figuring out how to add a middleware to the default stack (and test that it's in the default stack).\n\nWithout the fix we get things like:\n\n    ArgumentError: Missing host to link to! Please provide the :host parameter, set default_url_options[:host], or set :only_path to true\n\nAnd end up with ugly app code, with workarounds that look like this:\n\n    class RailsAndUrlHelpersHowDoTheyWork\n      include Rails.application.routes.url_helpers\n      def initialize(request)\n        default_url_options[:host] = request.host\n        default_url_options[:protocol] = request.scheme\n        default_url_options[:port] = request.port\n      end\n    end\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d6566c8ab911742cfe124b96c44503fe",
      "login": "ey-pairing",
      "avatar_url": "https://secure.gravatar.com/avatar/d6566c8ab911742cfe124b96c44503fe?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ey-pairing",
      "id": 296012
    },
    "closed_at": "2012-08-10T00:57:58Z",
    "created_at": "2012-08-09T23:39:17Z",
    "comments": 3,
    "title": "More useful Rails.application.routes.url_helpers",
    "html_url": "https://github.com/rails/rails/issues/7307",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7307",
      "patch_url": "https://github.com/rails/rails/pull/7307.patch",
      "diff_url": "https://github.com/rails/rails/pull/7307.diff"
    },
    "number": 7307,
    "updated_at": "2012-08-10T17:05:48Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7307",
    "id": 6140397
  },
  {
    "body": "Rails 3.2.8 breaks several tests we had around ActiveRecord increment / decrement.  Specifically we aren't seeing a before_update callback triggered when we call `record.increment!(:quantity, 1)`.  The documentation says that it skips validation but says nothing about callbacks in general.",
    "milestone": {
      "due_on": null,
      "creator": {
        "gravatar_id": "0525b332aafb83307b32d9747a93de03",
        "login": "rafaelfranca",
        "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "url": "https://api.github.com/users/rafaelfranca",
        "id": 47848
      },
      "closed_issues": 2,
      "description": null,
      "created_at": "2012-08-12T00:25:49Z",
      "title": "3.2.9",
      "state": "open",
      "number": 20,
      "url": "https://api.github.com/repos/rails/rails/milestones/20",
      "id": 159647,
      "open_issues": 1
    },
    "assignee": {
      "gravatar_id": "0525b332aafb83307b32d9747a93de03",
      "login": "rafaelfranca",
      "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rafaelfranca",
      "id": 47848
    },
    "labels": [
      {
        "name": "regression",
        "url": "https://api.github.com/repos/rails/rails/labels/regression",
        "color": "e10c02"
      },
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "af54a0871600db7fbdbb5c558a6e29a3",
      "login": "mperham",
      "avatar_url": "https://secure.gravatar.com/avatar/af54a0871600db7fbdbb5c558a6e29a3?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/mperham",
      "id": 2911
    },
    "closed_at": "2012-08-15T15:01:12Z",
    "created_at": "2012-08-09T23:03:22Z",
    "comments": 8,
    "title": "increment! doesn't call before_update callback",
    "html_url": "https://github.com/rails/rails/issues/7306",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7306,
    "updated_at": "2012-08-15T15:04:54Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7306",
    "id": 6139866
  },
  {
    "body": "Rails escapes HTML entities in erb files. This is great, because it prevents Cross Site Scripting and other evil attacks. However there is one case, where this behavior leads to undesired effects.\n\nRails escapes HTML entities in plain text mails. When I am using a `message.text.erb` file, `ActionMailer` correctly detects that the mail contains plain text and sets a `text/plain` mime type. However, ERB still handles this as an html file and escapes HTML entities.\n\nFor example, if my template contains `Dear <%= @customer_name %>, ...` and `@customer_name` is *Foobar & Partner*, then the mail will contain *Dear Foobar <b>&amp;amp;</b> Partner*.\n\nThe following commit just disables HTML escaping in text templates. A text erb template is every file that has `.text` in the file name and is handled by erb.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "43b39b50295b675199c4d037321619ae",
      "login": "iblue",
      "avatar_url": "https://secure.gravatar.com/avatar/43b39b50295b675199c4d037321619ae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/iblue",
      "id": 93362
    },
    "closed_at": "2012-08-09T22:43:15Z",
    "created_at": "2012-08-09T22:20:44Z",
    "comments": 2,
    "title": "Do not escape HTML entities in text files",
    "html_url": "https://github.com/rails/rails/issues/7305",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7305",
      "patch_url": "https://github.com/rails/rails/pull/7305.patch",
      "diff_url": "https://github.com/rails/rails/pull/7305.diff"
    },
    "number": 7305,
    "updated_at": "2012-08-09T22:43:16Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7305",
    "id": 6139161
  },
  {
    "body": "My app has a slow query ..on account of it being huge.\nThe logfile shows the explain attempt as (snippet):\nEXPLAIN SELECT `table1`.* FROM `table1` where `table1`.`column1` in\n(1559, 1693, 1963, 445, 448, 452, 454, 456, 458, 1483, 460, 461, 463, 465, 1490, 467, 1491, 1767,\n.... # many lines later\n 13485, 13742, 13232, 13743, 13745, 13...\nMysql2::Error: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..' at line 1: EXPLAIN SELECT ....\n\nWhat's important to notice (above) is how the last line of the attempted Explain actually includes an ellipse (...).\n\nApparently it is attempting to explain a truncated version of the original query.\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "cf68a0fe4901556a1665e4e154bfe7c8",
      "login": "JayTeeSF",
      "avatar_url": "https://secure.gravatar.com/avatar/cf68a0fe4901556a1665e4e154bfe7c8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/JayTeeSF",
      "id": 83524
    },
    "closed_at": "2012-08-11T05:07:16Z",
    "created_at": "2012-08-09T21:17:44Z",
    "comments": 4,
    "title": "EXPLAIN tries to explain a partial query",
    "html_url": "https://github.com/rails/rails/issues/7304",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7304,
    "updated_at": "2012-08-11T05:07:16Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7304",
    "id": 6137788
  },
  {
    "body": "In several places in Rails (e.g., ActiveRecord `find_by_#{attr2}_and_#{att2}` methods), you override `method_missing` to provide functionality. In all of those places, you follow the sane approach of handling `respond_to?` as well as actually defining the method body for future callers.\n\nI've abstracted this logic out into a project called [def_method_missing](https://github.com/stouset/def_method_missing). Examples:\n\n```ruby\nclass Foo\n  # regexp matchers yield the MatchData to the block, so you can modify the method\n  # body based on the regexp\n  def_method_missing /bar/ do |match|\n    -> { match.pre_match }\n  end\n\n  # without a regexp matcher, the name of the method is passed to the block, allowing\n  # you to decide whether or not to implement the method\n  def_method_missing do |name|\n    -> { name } if name.length == 4\n    -> { \"bang!\" } if name[-1] == '!'\n  end\nend\n\nfoo = Foo.new\n\n# regexp-based method_missing\nfoo.respond_to?(:bazbar)      # => true\nfoo.bazbar                    # => \"baz\"\nfoo.methods.include? /bazbaz/ # => true\n\n# arbitrary Ruby method_missing\nfoo.respond_to?(:wat)       # => false\nfoo.respond_to?(:what)      # => true\nfoo.what                    # => :what\nfoo.methods.include?(:what) # => true\n\nfoo.bang  # => :bang # matches four-character method name\nfoo.bang! # => \"bang!\" # matches last-character bang\nfoo.wat!  # => :wat! # matches four-character method name first\n```\n\nIs this something you'd be willing to consider including in ActiveSupport? Obviously, I'll have to put the logic into its own Module to avoid polluting default `Object`s and `Module`s. Plus documentation/tests. The current implementation was just a concept I threw together a few months back and promptly forgot about.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9ff064364151151cbce108b869e6e62d",
      "login": "stouset",
      "avatar_url": "https://secure.gravatar.com/avatar/9ff064364151151cbce108b869e6e62d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/stouset",
      "id": 4338
    },
    "closed_at": "2012-08-09T14:55:39Z",
    "created_at": "2012-08-09T14:49:47Z",
    "comments": 2,
    "title": "Include def_method_missing in ActiveSupport",
    "html_url": "https://github.com/rails/rails/issues/7303",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7303,
    "updated_at": "2012-08-09T14:56:13Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7303",
    "id": 6128576
  },
  {
    "body": "4.0 feature, everybody agreed to merge it.\nDefault headers are really useful for various security options and mitigations.\n\ndiscuss: should we add \"Sniff content type\" header ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "d2881b5d4c082996a62f23055b61956d",
      "login": "homakov",
      "avatar_url": "https://secure.gravatar.com/avatar/d2881b5d4c082996a62f23055b61956d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/homakov",
      "id": 174693
    },
    "closed_at": "2012-08-09T20:38:29Z",
    "created_at": "2012-08-09T13:50:09Z",
    "comments": 41,
    "title": "Introduce default_headers. closes #6311 #6515",
    "html_url": "https://github.com/rails/rails/issues/7302",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7302",
      "patch_url": "https://github.com/rails/rails/pull/7302.patch",
      "diff_url": "https://github.com/rails/rails/pull/7302.diff"
    },
    "number": 7302,
    "updated_at": "2012-08-29T05:08:02Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7302",
    "id": 6127186
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activesupport",
        "url": "https://api.github.com/repos/rails/rails/labels/activesupport",
        "color": "FC9300"
      }
    ],
    "user": {
      "gravatar_id": "f3ebc1f56421482200a561a312206cec",
      "login": "dziulius",
      "avatar_url": "https://secure.gravatar.com/avatar/f3ebc1f56421482200a561a312206cec?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/dziulius",
      "id": 63702
    },
    "closed_at": "2012-09-08T21:07:35Z",
    "created_at": "2012-08-09T13:06:41Z",
    "comments": 8,
    "title": "Add method Numeric#limit, to return value limited by minimum and maximum values",
    "html_url": "https://github.com/rails/rails/issues/7300",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7300",
      "patch_url": "https://github.com/rails/rails/pull/7300.patch",
      "diff_url": "https://github.com/rails/rails/pull/7300.diff"
    },
    "number": 7300,
    "updated_at": "2012-09-08T21:07:35Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7300",
    "id": 6126256
  },
  {
    "body": "Hi guys,\n\n#4856 was committed to master, but never backported to 3-2-stable. I only realised when I upgraded Rails to the latest 3-2 version and it broke my app. I'd been using a patched version locally. My fail. \n\nThe files that were updated on master haven't changed on 3-2-stable, so it should be very straightforward.\n\nThanks,\niHiD",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "955103d80e386882143a78875fb727bf",
      "login": "iHiD",
      "avatar_url": "https://secure.gravatar.com/avatar/955103d80e386882143a78875fb727bf?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/iHiD",
      "id": 286476
    },
    "closed_at": "2012-08-09T17:01:15Z",
    "created_at": "2012-08-09T11:51:20Z",
    "comments": 5,
    "title": "Ported PR #4856 to 3-2-stable.",
    "html_url": "https://github.com/rails/rails/issues/7299",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7299",
      "patch_url": "https://github.com/rails/rails/pull/7299.patch",
      "diff_url": "https://github.com/rails/rails/pull/7299.diff"
    },
    "number": 7299,
    "updated_at": "2012-08-09T23:07:18Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7299",
    "id": 6124988
  },
  {
    "body": "We have the following routes setup:\n\n```\nMyApp::Application.routes.draw do\n  scope \"/:locale\" do    \n    ...other routes\n    root :to => 'home#index'\n  end\n  root :to => 'application#detect_language'\nend\n```\n\nWhich gives us this:\n\n```\nroot      /:locale(.:format)    home#index\nroot      /                     application#detect_language\n```\n\nwhich is fine.\n\nHowever, when we want to generate a route with the locale we hitting trouble:\n\n`root_path` generates `/` which is correct.\n\n`root_path(:locale => :en)` generates `/?locale=en` which is undesirable - we want `/en`\n\nIs this a bug, or am I missing something?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f8b75a99bfbe0583cc9b6ca57c899031",
      "login": "neilmiddleton",
      "avatar_url": "https://secure.gravatar.com/avatar/f8b75a99bfbe0583cc9b6ca57c899031?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/neilmiddleton",
      "id": 60786
    },
    "closed_at": "2012-08-09T12:54:56Z",
    "created_at": "2012-08-09T11:39:12Z",
    "comments": 2,
    "title": "Potential routing bug when using scopes?",
    "html_url": "https://github.com/rails/rails/issues/7298",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7298,
    "updated_at": "2012-08-09T12:54:56Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7298",
    "id": 6124795
  },
  {
    "body": "I've install ruby 1.9.3 and rails 2.3.8pre。\nWhen I run \"rails new blog\",it shows the following message in the terminal.I tried recompile ruby but it didn't work.So,could anyone tell me why it happens and help me to resolve it.\n\nFetching gem metadata from rubygems.org/.\nCould not load OpenSSL.\nYou must recompile Ruby with OpenSSL support or change the sources in your\nGemfile from 'https' to 'http'. Instructions for compiling with OpenSSL\nusing RVM are available at rvm.io/packages/openssl",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "362933bde955f8768df1bfffa2b47381",
      "login": "TroyZhu",
      "avatar_url": "https://secure.gravatar.com/avatar/362933bde955f8768df1bfffa2b47381?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/TroyZhu",
      "id": 432582
    },
    "closed_at": "2012-08-09T04:39:35Z",
    "created_at": "2012-08-09T04:15:49Z",
    "comments": 2,
    "title": "I got a problem when I run \"rails new blog\"",
    "html_url": "https://github.com/rails/rails/issues/7296",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7296,
    "updated_at": "2012-08-09T04:39:35Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7296",
    "id": 6119312
  },
  {
    "body": "This feels like the same issue as reported in #4632 (I could not reopen, said I did not have permission)\n\nFull details of rails env can be found here: https://gist.github.com/3299864\n\nOther info:\n\nruby info:\n    ruby 1.8.7 (2011-12-28 patchlevel 357) [i686-darwin11.2.0]\n\nmysql:\n    mysql  Ver 14.14 Distrib 5.5.27, for osx10.6 (i386) using readline 5.1\n\nstack trace:\n    rake aborted!\n    undefined method `accept' for nil:NilClass\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/connection_adapters/abstract/database_statements.rb:7:in `to_sql'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/connection_adapters/abstract/database_statements.rb:38:in `select_values'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/migration.rb:587:in `get_all_versions'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/migration.rb:745:in `migrated'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/migration.rb:668:in `current_version'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activerecord-3.2.7/lib/active_record/migration.rb:685:in `migrate'\n    /Users/nick/.rvm/gems/ruby-1.8.7-p357@slr/gems/activesupport-3.2.7/lib/active_support/callbacks.rb:400:in `detect",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "4a4037b040705e8848fba57d0ba4aba8",
      "login": "nstuart",
      "avatar_url": "https://secure.gravatar.com/avatar/4a4037b040705e8848fba57d0ba4aba8?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nstuart",
      "id": 1160241
    },
    "closed_at": "2012-08-09T20:51:38Z",
    "created_at": "2012-08-09T00:22:58Z",
    "comments": 9,
    "title": "MySQL: undefined method `accept' for nil:NilClass",
    "html_url": "https://github.com/rails/rails/issues/7295",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7295,
    "updated_at": "2012-08-09T21:50:41Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7295",
    "id": 6116939
  },
  {
    "body": "Follow-up: fix the fix.\n\nDidn't fail the test because adapter#query happens to\nnot call raw connection's #query, but don't want to count\non that and have a fragile test.\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "4f6079564f02b87e4c0989585439eb39",
      "login": "stevecj",
      "avatar_url": "https://secure.gravatar.com/avatar/4f6079564f02b87e4c0989585439eb39?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/stevecj",
      "id": 388671
    },
    "closed_at": "2012-08-08T23:05:26Z",
    "created_at": "2012-08-08T21:53:17Z",
    "comments": 0,
    "title": "Fix only-once stub logic.",
    "html_url": "https://github.com/rails/rails/issues/7294",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7294",
      "patch_url": "https://github.com/rails/rails/pull/7294.patch",
      "diff_url": "https://github.com/rails/rails/pull/7294.diff"
    },
    "number": 7294,
    "updated_at": "2012-08-08T23:05:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7294",
    "id": 6114416
  },
  {
    "body": "Hi,\n\nI refactored a piece of the `ActiveModel::Naming` module. In the part of the code that tries to find the `model_name` for the passed argument, I changed the implementation from \"type based\" (checking for Class) to \"behavior based\" (checking for method)\n\nThis change behaves almost 100% the same as the previous implementation.\n\n* Makes the same assumptions as old code. If argument responds to `to_model`, then `.to_model.class.model_name` can be called.\n* If argument it is not a `Class`, call `.class.model_name`\n* This version however allows the argument to directly respond to `model_name` if it can.\n\nThis gives a (very minor) speed boost if a class is passed, but more importantly; it allows an instance to define its \"name\". \n\nWe use one class to store most of our data. However, how this class should behave, depends on it's configuration. Routing, human names, partials all depend on this configuration. By allowing the instance to respond to model_name, we can easily take advantage of all `ActiveModel` based code.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f80b5bd87ed2e62e1c3fd52e90ee7563",
      "login": "Bertg",
      "avatar_url": "https://secure.gravatar.com/avatar/f80b5bd87ed2e62e1c3fd52e90ee7563?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Bertg",
      "id": 1434
    },
    "closed_at": "2012-08-08T23:09:40Z",
    "created_at": "2012-08-08T21:18:09Z",
    "comments": 2,
    "title": "Naming helpers should first check if passed object responds to model_name",
    "html_url": "https://github.com/rails/rails/issues/7293",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7293",
      "patch_url": "https://github.com/rails/rails/pull/7293.patch",
      "diff_url": "https://github.com/rails/rails/pull/7293.diff"
    },
    "number": 7293,
    "updated_at": "2012-08-08T23:21:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7293",
    "id": 6113652
  },
  {
    "body": "Full test requiring manual intervention was fine, but w/ simulated disconnect, assertion was backward & still passing. Was several kinds of wrong.\n\nPlease accept my fix before I die of embarrassment for contributing negatively to the quality of the Rails core <g>.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "4f6079564f02b87e4c0989585439eb39",
      "login": "stevecj",
      "avatar_url": "https://secure.gravatar.com/avatar/4f6079564f02b87e4c0989585439eb39?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/stevecj",
      "id": 388671
    },
    "closed_at": "2012-08-08T21:09:25Z",
    "created_at": "2012-08-08T21:06:29Z",
    "comments": 0,
    "title": "Fix just-plain-wrongness of psql auto-reconnect test.",
    "html_url": "https://github.com/rails/rails/issues/7292",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7292",
      "patch_url": "https://github.com/rails/rails/pull/7292.patch",
      "diff_url": "https://github.com/rails/rails/pull/7292.diff"
    },
    "number": 7292,
    "updated_at": "2012-08-08T21:09:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7292",
    "id": 6113396
  },
  {
    "body": "Given the following select element:\n\n```ruby\nf.select(:industries, Distribution::INDUSTRIES, {}, { multiple: true, selected: @distribution.industries })\n```\n\nWhether or not options are selected, an empty element is sent in the params.\n\nIf there a no selected options, the array has just the blank element:\n\n```ruby\nparams[:distribution][:industries] #=> ['']\n```\n\nIf there are selected options, the array has the blank element in addition to the selected options:\n\n```ruby\nparams[:distribution][:industries] #=> ['option1','option2','']\n```\n\nThe issue is best demonstrated in [this example app](https://github.com/robmclarty/Select-Multiple-Empty-Element#readme), which uses 3.2.0.rc2, but this happens in 3.2.6 as well\n\nIs this expected behavior? \n\nCurrently the only work-around is to remove the empty element from the params prior to instantiation of the object that requires it, to avoid it being added.\n\nThank you for your attention to this matter.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "4489691805af60f36fbb9116cbcd3e15",
      "login": "phudgins",
      "avatar_url": "https://secure.gravatar.com/avatar/4489691805af60f36fbb9116cbcd3e15?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/phudgins",
      "id": 302965
    },
    "closed_at": "2012-08-08T19:04:11Z",
    "created_at": "2012-08-08T16:49:26Z",
    "comments": 4,
    "title": "ActionView::FormOptionsHelper#select multiple adds empty element",
    "html_url": "https://github.com/rails/rails/issues/7289",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7289,
    "updated_at": "2012-08-08T19:18:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7289",
    "id": 6107506
  },
  {
    "body": "I'm using Rails 3.2.7 and PostgreSQL 9.1.4 with pg gem 0.14.0. When chaining delete_all with the joins method the generated SQL does not include the joins table resulting in an error.\n\n    User.joins(:posts).where(:posts => {:title => 'delete'}).delete_all\n\n    ActiveRecord::StatementInvalid: PG::Error: ERROR:  missing FROM-clause entry for table \"posts\"\n    LINE 1: DELETE FROM \"users\" WHERE \"posts\".\"title\" = 'delete'\n    \nI can see that there's a previous issue #5649 for the same problem so I have created a striped down application to ensure that my issue isn't a result of any other gems I'm using but I still get the same result.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "e25f4f46e2fe66953bcaecd209a0e4ba",
      "login": "chrismhilton",
      "avatar_url": "https://secure.gravatar.com/avatar/e25f4f46e2fe66953bcaecd209a0e4ba?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/chrismhilton",
      "id": 449774
    },
    "closed_at": "2012-08-11T19:42:10Z",
    "created_at": "2012-08-08T08:21:06Z",
    "comments": 3,
    "title": "delete_all with joins gives error missing from clause",
    "html_url": "https://github.com/rails/rails/issues/7287",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7287,
    "updated_at": "2012-08-11T20:02:39Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7287",
    "id": 6097714
  },
  {
    "body": "Please see #7191. If target is equal to record or target and record are nil, we should not use transaction.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-10T16:25:34Z",
    "created_at": "2012-08-08T02:15:56Z",
    "comments": 0,
    "title": "Fix #7191. Remove unnecessary transaction when assigning has_one associations.",
    "html_url": "https://github.com/rails/rails/issues/7286",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7286",
      "patch_url": "https://github.com/rails/rails/pull/7286.patch",
      "diff_url": "https://github.com/rails/rails/pull/7286.diff"
    },
    "number": 7286,
    "updated_at": "2012-08-10T16:25:34Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7286",
    "id": 6093897
  },
  {
    "body": "I believe I have found a bug with routing\n\n```ruby\nTodoApp::Application.routes.draw do\n  constraints :subdomain => 'api', :format => :json do\n    scope :module => \"api\" do\n      namespace :v1 do\n        resources :checking_account do\n          resources :todos, :controller => \"CheckingAccountTodos\"\n        end\n      end\n    end\n  end\nend\n```\n\nWhen I make a get request like the following:\n\n```ruby\nrequire 'net/http'\nrequire 'json'\n\n@host = 'api.todoapp.local'\n@port = '3000'\n\nrequest = Net::HTTP::Get.new(\"/v1/checking_accounts/4/todos.json?persistence_token=#{token}\", initheader = {'Content-Type' =>'application/json'})\nresponse = Net::HTTP.new(@host, @port).start {|http| http.request(request) }\n```\n\nHere is the error/stacktrace I get:\n```\nActionController::RoutingError (uninitialized constant Api::V1::CheckingaccounttodosController):\n  activesupport (3.2.1) lib/active_support/inflector/methods.rb:229:in `block in constantize'\n  activesupport (3.2.1) lib/active_support/inflector/methods.rb:228:in `each'\n  activesupport (3.2.1) lib/active_support/inflector/methods.rb:228:in `constantize'\n  actionpack (3.2.1) lib/action_dispatch/routing/route_set.rb:62:in `controller_reference'\n  actionpack (3.2.1) lib/action_dispatch/routing/route_set.rb:47:in `controller'\n  actionpack (3.2.1) lib/action_dispatch/routing/route_set.rb:26:in `call'\n  journey (1.0.3) lib/journey/router.rb:68:in `block in call'\n  journey (1.0.3) lib/journey/router.rb:56:in `each'\n  journey (1.0.3) lib/journey/router.rb:56:in `call'\n  actionpack (3.2.1) lib/action_dispatch/routing/route_set.rb:589:in `call'\n  airbrake (3.0.9) lib/airbrake/rack.rb:27:in `call'\n  pdfkit (0.5.2) lib/pdfkit/middleware.rb:16:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/best_standards_support.rb:17:in `call'\n  rack (1.4.1) lib/rack/etag.rb:23:in `call'\n  rack (1.4.1) lib/rack/conditionalget.rb:25:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/head.rb:14:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/params_parser.rb:21:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/flash.rb:242:in `call'\n  rack (1.4.1) lib/rack/session/abstract/id.rb:205:in `context'\n  rack (1.4.1) lib/rack/session/abstract/id.rb:200:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/cookies.rb:338:in `call'\n  activerecord (3.2.1) lib/active_record/query_cache.rb:64:in `call'\n  activerecord (3.2.1) lib/active_record/connection_adapters/abstract/connection_pool.rb:443:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/callbacks.rb:28:in `block in call'\n  activesupport (3.2.1) lib/active_support/callbacks.rb:405:in `_run__315116652__call__683693185__callbacks'\n  activesupport (3.2.1) lib/active_support/callbacks.rb:405:in `__run_callback'\n  activesupport (3.2.1) lib/active_support/callbacks.rb:385:in `_run_call_callbacks'\n  activesupport (3.2.1) lib/active_support/callbacks.rb:81:in `run_callbacks'\n  actionpack (3.2.1) lib/action_dispatch/middleware/callbacks.rb:27:in `call'\n  rack (1.4.1) lib/rack/sendfile.rb:102:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/remote_ip.rb:31:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/debug_exceptions.rb:16:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/show_exceptions.rb:56:in `call'\n  railties (3.2.1) lib/rails/rack/logger.rb:26:in `call_app'\n  railties (3.2.1) lib/rails/rack/logger.rb:16:in `call'\n  actionpack (3.2.1) lib/action_dispatch/middleware/request_id.rb:22:in `call'\n  rack (1.4.1) lib/rack/methodoverride.rb:21:in `call'\n  rack (1.4.1) lib/rack/runtime.rb:17:in `call'\n  activesupport (3.2.1) lib/active_support/cache/strategy/local_cache.rb:72:in `call'\n  rack (1.4.1) lib/rack/lock.rb:15:in `call'\n  rack-cache (1.2) lib/rack/cache/context.rb:136:in `forward'\n  rack-cache (1.2) lib/rack/cache/context.rb:245:in `fetch'\n  rack-cache (1.2) lib/rack/cache/context.rb:185:in `lookup'\n  rack-cache (1.2) lib/rack/cache/context.rb:66:in `call!'\n  rack-cache (1.2) lib/rack/cache/context.rb:51:in `call'\n  airbrake (3.0.9) lib/airbrake/user_informer.rb:12:in `call'\n  railties (3.2.1) lib/rails/engine.rb:479:in `call'\n  railties (3.2.1) lib/rails/application.rb:220:in `call'\n  railties (3.2.1) lib/rails/railtie/configurable.rb:30:in `method_missing'\n  /usr/libexec/passenger/lib/phusion_passenger/rack/request_handler.rb:96:in `process_request'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_request_handler.rb:513:in `accept_and_process_next_request'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_request_handler.rb:274:in `main_loop'\n  /usr/libexec/passenger/lib/phusion_passenger/rack/application_spawner.rb:206:in `start_request_handler'\n  /usr/libexec/passenger/lib/phusion_passenger/rack/application_spawner.rb:171:in `block in handle_spawn_application'\n  /usr/libexec/passenger/lib/phusion_passenger/utils.rb:479:in `safe_fork'\n  /usr/libexec/passenger/lib/phusion_passenger/rack/application_spawner.rb:166:in `handle_spawn_application'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server.rb:357:in `server_main_loop'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server.rb:206:in `start_synchronously'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server.rb:180:in `start'\n  /usr/libexec/passenger/lib/phusion_passenger/rack/application_spawner.rb:129:in `start'\n  /usr/libexec/passenger/lib/phusion_passenger/spawn_manager.rb:253:in `block (2 levels) in spawn_rack_application'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server_collection.rb:132:in `lookup_or_add'\n  /usr/libexec/passenger/lib/phusion_passenger/spawn_manager.rb:246:in `block in spawn_rack_application'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server_collection.rb:82:in `block in synchronize'\n  <internal:prelude>:10:in `synchronize'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server_collection.rb:79:in `synchronize'\n  /usr/libexec/passenger/lib/phusion_passenger/spawn_manager.rb:244:in `spawn_rack_application'\n  /usr/libexec/passenger/lib/phusion_passenger/spawn_manager.rb:137:in `spawn_application'\n  /usr/libexec/passenger/lib/phusion_passenger/spawn_manager.rb:275:in `handle_spawn_application'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server.rb:357:in `server_main_loop'\n  /usr/libexec/passenger/lib/phusion_passenger/abstract_server.rb:206:in `start_synchronously'\n  /usr/libexec/passenger/bin/passenger-spawn-server:101:in `<main>'\n```\n\nThere seems to be a capitalization error in the controller call for some reason,\n\nIf I change the routes before to the below code, everything is fine. I can write a patch/test if desired.\n\n```ruby\nTodoApp::Application.routes.draw do\n  constraints :subdomain => 'api', :format => :json do\n    scope :module => \"api\" do\n      namespace :v1 do\n        resources :checking_account do\n          resources :todos, :controller => \"checking_account_todos\"\n        end\n      end\n    end\n  end\nend\n```\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "a5d8d99e66b5fece463f18c980461fb6",
      "login": "caseyprovost",
      "avatar_url": "https://secure.gravatar.com/avatar/a5d8d99e66b5fece463f18c980461fb6?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/caseyprovost",
      "id": 210048
    },
    "closed_at": "2012-08-08T02:03:28Z",
    "created_at": "2012-08-08T01:16:43Z",
    "comments": 1,
    "title": "Routing Issue",
    "html_url": "https://github.com/rails/rails/issues/7285",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7285,
    "updated_at": "2012-08-08T02:03:28Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7285",
    "id": 6093235
  },
  {
    "body": "Follow up #7283\n\nIt was a bug/coincidence that the extensionless lookups worked before.\n\nThey are only supported from within the context of another asset of the same type.\n\n/cc @dhh @tenderlove @guilleiguaran",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "bbe5dc8dcf248706525ab76f46185520",
      "login": "josh",
      "avatar_url": "https://secure.gravatar.com/avatar/bbe5dc8dcf248706525ab76f46185520?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/josh",
      "id": 137
    },
    "closed_at": "2012-08-07T19:30:14Z",
    "created_at": "2012-08-07T19:29:08Z",
    "comments": 2,
    "title": "Fix asset integration test (3-2-stable)",
    "html_url": "https://github.com/rails/rails/issues/7284",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7284",
      "patch_url": "https://github.com/rails/rails/pull/7284.patch",
      "diff_url": "https://github.com/rails/rails/pull/7284.diff"
    },
    "number": 7284,
    "updated_at": "2012-08-07T20:37:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7284",
    "id": 6086419
  },
  {
    "body": "Theres a ton of new bug fixes in the newer releases of sprockets. Rails is still locked to a really old version that I'm not backporting fixes for.\n\nWhatever regression 2.2+ caused needs to be addressed.\n\nThis change still allows 2.1.x so people can just stay on the version they are now if its working for them.\n\n/cc @dhh ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "bbe5dc8dcf248706525ab76f46185520",
      "login": "josh",
      "avatar_url": "https://secure.gravatar.com/avatar/bbe5dc8dcf248706525ab76f46185520?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/josh",
      "id": 137
    },
    "closed_at": "2012-08-07T16:11:07Z",
    "created_at": "2012-08-07T16:07:03Z",
    "comments": 6,
    "title": "Allow newer versions of Sprockets",
    "html_url": "https://github.com/rails/rails/issues/7283",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7283",
      "patch_url": "https://github.com/rails/rails/pull/7283.patch",
      "diff_url": "https://github.com/rails/rails/pull/7283.diff"
    },
    "number": 7283,
    "updated_at": "2012-08-07T19:24:43Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7283",
    "id": 6081667
  },
  {
    "body": "I'd find it useful if the generic tag helper functions allowed ids & classes to be specified inline using the standard CSS-style notation - any chance of this making it in?\n\n    content_tag(\"p#foo\", \"Blah\")\n\nis quicker and clearer when reading code than\n\n    content_tag(:p, \"Blah\", :id => \"foo\")",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionview",
        "url": "https://api.github.com/repos/rails/rails/labels/actionview",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "132ef4c367de54cc8c5b0f3e0376a33f",
      "login": "geoffyoungs",
      "avatar_url": "https://secure.gravatar.com/avatar/132ef4c367de54cc8c5b0f3e0376a33f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/geoffyoungs",
      "id": 139634
    },
    "closed_at": "2012-08-11T18:24:00Z",
    "created_at": "2012-08-07T11:15:45Z",
    "comments": 4,
    "title": "Allow tag/content_tag helpers to accept tag names in the form \"name#foo.bar\"",
    "html_url": "https://github.com/rails/rails/issues/7281",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7281",
      "patch_url": "https://github.com/rails/rails/pull/7281.patch",
      "diff_url": "https://github.com/rails/rails/pull/7281.diff"
    },
    "number": 7281,
    "updated_at": "2012-08-11T18:24:00Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7281",
    "id": 6073751
  },
  {
    "body": "When I run: \n\n`render_to_string(\"session/index\",:formats => [:json] , :layout => false)`\n\nfrom my controller, as a side effect `content_type` is set to json. \n\nI need the ability to just render chunks of json arbitrarily in my master layout, and would like to reuse the views I already have in place in various controllers. \n\nTo work around this I can either force the `content_type` earlier, before calling these methods on the controller. Or create a weird shielded class to protect me from side effects: \n\n```ruby\nclass CustomRenderer < AbstractController::Base\n  include ActiveSupport::Configurable\n  include AbstractController::Rendering\n  include AbstractController::Helpers\n  include AbstractController::Translation\n  include AbstractController::AssetPaths\n  include Rails.application.routes.url_helpers\n  helper ApplicationHelper\n  self.view_paths = \"app/views\"\n  include MultiTenant\n\n  def action_name\n    \"\"\n  end\n\n  def controller_name\n    \"\"\n  end\n\n  def cookies\n    @parent.send(:cookies)\n  end\n\n  def session\n    @parent.send(:session)\n  end\n\n  def initialize(parent)\n    @parent = parent\n  end\nend\n```\n\nShould there be a way to have a properly shielded `render_to_string` that does not much with `ENV`",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3dcae8378d46c244172a115c28ca49ce",
      "login": "SamSaffron",
      "avatar_url": "https://secure.gravatar.com/avatar/3dcae8378d46c244172a115c28ca49ce?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/SamSaffron",
      "id": 5213
    },
    "closed_at": "2012-08-07T05:01:18Z",
    "created_at": "2012-08-07T02:54:37Z",
    "comments": 3,
    "title": "There should be a cleaner way to do a render without side effects",
    "html_url": "https://github.com/rails/rails/issues/7279",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7279,
    "updated_at": "2012-08-07T06:11:30Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7279",
    "id": 6067366
  },
  {
    "body": "Now that ActiveRecord supports uuid datatypes (#6713) I suspect that having UUID instead of auto-incrementing primary keys will become fairly popular. It's already possible to do this yourself but perhaps it should be built into ActiveRecord?\n\nI'm happy to contribute a patch but was wanting to solicit feedback on wether this is wanted and if anybody had ideas on how the configuration should go.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "08f077ea061585744ee080824f5a8e65",
      "login": "chrislloyd",
      "avatar_url": "https://secure.gravatar.com/avatar/08f077ea061585744ee080824f5a8e65?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/chrislloyd",
      "id": 718
    },
    "closed_at": "2012-08-07T05:00:51Z",
    "created_at": "2012-08-07T00:40:59Z",
    "comments": 3,
    "title": "UUID primary keys for ActiveRecord",
    "html_url": "https://github.com/rails/rails/issues/7278",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7278,
    "updated_at": "2012-08-24T23:09:19Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7278",
    "id": 6066146
  },
  {
    "body": "Rails were including 'application.js' to the pack when using `javascript_include_tag :all` even there's no `application.js` in the public directory.\n\nThis is for `master`",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f1c4a3bb1606cc4a61711e61e2fe6146",
      "login": "sikachu",
      "avatar_url": "https://secure.gravatar.com/avatar/f1c4a3bb1606cc4a61711e61e2fe6146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sikachu",
      "id": 4912
    },
    "closed_at": "2012-08-06T20:49:00Z",
    "created_at": "2012-08-06T20:47:32Z",
    "comments": 0,
    "title": "Do not include application.js if it doesn't exists",
    "html_url": "https://github.com/rails/rails/issues/7277",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7277",
      "patch_url": "https://github.com/rails/rails/pull/7277.patch",
      "diff_url": "https://github.com/rails/rails/pull/7277.diff"
    },
    "number": 7277,
    "updated_at": "2012-08-06T20:49:00Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7277",
    "id": 6061957
  },
  {
    "body": "Rails were including 'application.js' to the pack when using `javascript_include_tag :all` even there's no application.js in the public directory.\n\nThis is for `3-2-stable`",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f1c4a3bb1606cc4a61711e61e2fe6146",
      "login": "sikachu",
      "avatar_url": "https://secure.gravatar.com/avatar/f1c4a3bb1606cc4a61711e61e2fe6146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sikachu",
      "id": 4912
    },
    "closed_at": "2012-08-06T20:41:32Z",
    "created_at": "2012-08-06T20:30:54Z",
    "comments": 0,
    "title": "Do not include application.js if it doesn't exists",
    "html_url": "https://github.com/rails/rails/issues/7276",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7276",
      "patch_url": "https://github.com/rails/rails/pull/7276.patch",
      "diff_url": "https://github.com/rails/rails/pull/7276.diff"
    },
    "number": 7276,
    "updated_at": "2012-08-06T20:41:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7276",
    "id": 6061511
  },
  {
    "body": "Forgotten change log entry",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f4ba063457702c78a7fce6a3529aedb0",
      "login": "asanghi",
      "avatar_url": "https://secure.gravatar.com/avatar/f4ba063457702c78a7fce6a3529aedb0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/asanghi",
      "id": 762
    },
    "closed_at": "2012-08-06T18:52:48Z",
    "created_at": "2012-08-06T18:46:29Z",
    "comments": 0,
    "title": "add changelog for #7202",
    "html_url": "https://github.com/rails/rails/issues/7275",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7275",
      "patch_url": "https://github.com/rails/rails/pull/7275.patch",
      "diff_url": "https://github.com/rails/rails/pull/7275.diff"
    },
    "number": 7275,
    "updated_at": "2012-08-06T18:52:48Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7275",
    "id": 6059090
  },
  {
    "body": "Am interested in the new PATCH method that will be included in Rails 4, but have a question/concern, and forgive me if I'm misunderstanding it.\n\nSo, if the request parameter _method is set to \"patch\", the update is processed as a patch.\n\nBut, let's say you have a model called Airplane and Airplane has a collection of FlightCrewMembers which it accepts_nested_attributes_for. You get the Airplane resource via a RESTful call to Rails that contains the FlightCrewMembers list. Then something needs to make a PATCH to this resource and change both an attribute called autopilot_engaged on the Airplane while only changing the active_pilot flag of one of the FlightCrewMembers. You send this together to ensure that a single transaction is wrapped around both the update to autopilot_engaged on the Airplane and the active_pilot flag of one of the FlightCrewMembers.\n\nWhen you send the Airplane resource from the client to the RESTful service, you specify one or more FlightCrewMembers in the resource. If you truly wanted to patch, you should only have to specify the one FlightCrewMember in the Airplane's list of FlightCrewMembers and only specify the active_pilot flag on that FlightCrewMember. However, this could also indicate that the other 4 of the 5 FlightCrewMembers are no longer on the plane if the patch is also allowed to change which FlightCrewMembers are assocated with the Airplane. But that would mean you'd have to specify the list of ids of FlightCrewMembers in the patch request, which could have the unintended result of altering the list of members if one member had really left the plain at the same time (perhaps they are still on the ground and one just left the Airplane to run up the jetway).\n\nSo, does there need to be new attributes on the Airplane resource that is passed in by the client to indicate whether the membership list of FlightCrewMembers is being altered on Airplane? And instead of just passing in a list of objects that only specify the id of the associated object to update the list, shouldn't the client (since they are providing a patch) be able to only specify which members are be deleted?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "8838005371ab9c0b1d40f0504bf8832a",
      "login": "garysweaver",
      "avatar_url": "https://secure.gravatar.com/avatar/8838005371ab9c0b1d40f0504bf8832a?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/garysweaver",
      "id": 92330
    },
    "closed_at": "2012-08-07T04:56:34Z",
    "created_at": "2012-08-06T12:56:26Z",
    "comments": 3,
    "title": "Question about PATCH method, accepts_nested_attributes_for, and updates to association lists (has_many, HABTM)",
    "html_url": "https://github.com/rails/rails/issues/7274",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7274,
    "updated_at": "2012-08-13T22:02:08Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7274",
    "id": 6049202
  },
  {
    "body": "Consistently with #method_missing",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5187030ec0cd68b5026199e9e4054dda",
      "login": "lexmag",
      "avatar_url": "https://secure.gravatar.com/avatar/5187030ec0cd68b5026199e9e4054dda?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/lexmag",
      "id": 248290
    },
    "closed_at": "2012-08-06T16:24:37Z",
    "created_at": "2012-08-05T19:31:17Z",
    "comments": 3,
    "title": "Add AS::StringInquirer#respond_to? method",
    "html_url": "https://github.com/rails/rails/issues/7272",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7272",
      "patch_url": "https://github.com/rails/rails/pull/7272.patch",
      "diff_url": "https://github.com/rails/rails/pull/7272.diff"
    },
    "number": 7272,
    "updated_at": "2012-08-06T16:24:37Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7272",
    "id": 6039143
  },
  {
    "body": "COUNT(*) queries can be slow in PostgreSQL, #exists? avoids this by selecting a single record. @jonleighton suggested in issue #3179 that #empty? should be patched to use #exists? for the same benefit. I couldn't think of a great way to test it since the external behavior is not changing. If anyone has any suggestions for tests though, I would be more than happy to add them.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "45b75f9f866d240362c0d7fa125025ba",
      "login": "beerlington",
      "avatar_url": "https://secure.gravatar.com/avatar/45b75f9f866d240362c0d7fa125025ba?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/beerlington",
      "id": 77580
    },
    "closed_at": "2012-08-05T15:57:59Z",
    "created_at": "2012-08-05T15:42:07Z",
    "comments": 4,
    "title": "Changing AR:CollectionAssociation#empty? to use #exists?",
    "html_url": "https://github.com/rails/rails/issues/7270",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7270",
      "patch_url": "https://github.com/rails/rails/pull/7270.patch",
      "diff_url": "https://github.com/rails/rails/pull/7270.diff"
    },
    "number": 7270,
    "updated_at": "2012-09-10T13:04:39Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7270",
    "id": 6037854
  },
  {
    "body": "I have a search form written with Rails 3.2.7 when I query it everything works fine as long as I do not put a point in my query. Eg:\n```\nhttp://localhost:3000/en/job/search/q/test     - WORKS \nhttp://localhost:3000/en/job/search/q/test.    - DOES NOT WORK \n```\n\nURL with point at the end gives a \n```Routing Error: No route matches [GET] \"/en/job/search/q/test. ```\n\nHow can I solve this?\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "7489f5247aa029b55fa9afa81d7cef92",
      "login": "nicksnels",
      "avatar_url": "https://secure.gravatar.com/avatar/7489f5247aa029b55fa9afa81d7cef92?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/nicksnels",
      "id": 2098376
    },
    "closed_at": "2012-08-05T19:19:51Z",
    "created_at": "2012-08-05T13:06:27Z",
    "comments": 1,
    "title": "Rails 3.2.7 gives routing error with point in URL",
    "html_url": "https://github.com/rails/rails/issues/7269",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7269,
    "updated_at": "2012-08-05T19:19:51Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7269",
    "id": 6036726
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "ee85853909657f47c8a68e8a9bc7d992",
      "login": "arunagw",
      "avatar_url": "https://secure.gravatar.com/avatar/ee85853909657f47c8a68e8a9bc7d992?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/arunagw",
      "id": 3948
    },
    "closed_at": "2012-08-05T14:58:08Z",
    "created_at": "2012-08-05T12:43:04Z",
    "comments": 0,
    "title": "Remove warning: `*' interpreted as argument prefix",
    "html_url": "https://github.com/rails/rails/issues/7268",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7268",
      "patch_url": "https://github.com/rails/rails/pull/7268.patch",
      "diff_url": "https://github.com/rails/rails/pull/7268.diff"
    },
    "number": 7268,
    "updated_at": "2012-08-05T14:58:08Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7268",
    "id": 6036588
  },
  {
    "body": "I'm following this guide: http://guides.rubyonrails.org/action_mailer_basics.html\n\nRunning `rails generate mailer UserMailer` outputs a file at `app/mailers/user_mailer.rb` with contents:\n\n```ruby\nclass UserMailer < ActionMailer::Base\n  default from: \"from@example.com\"\nend\n```\n\nWhere it should be (as per the linked guide):\n\n```ruby\nclass UserMailer < ActionMailer::Base\n  default :from => \"from@example.com\"\nend\n```\n\n`ruby -v` outputs `ruby 1.9.2p180 (2011-02-18 revision 30909) [x86_64-darwin10.8.0]`, `rails -v` outputs `Rails 3.2.7`, and I'm on OS X 10.6.8.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "667a89c636d358aa02a045e0f2fe5968",
      "login": "ghiculescu",
      "avatar_url": "https://secure.gravatar.com/avatar/667a89c636d358aa02a045e0f2fe5968?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ghiculescu",
      "id": 509837
    },
    "closed_at": "2012-08-05T10:21:29Z",
    "created_at": "2012-08-05T09:31:36Z",
    "comments": 3,
    "title": "\"rails generate mailer UserMailer\" generates a class with incorrect syntax",
    "html_url": "https://github.com/rails/rails/issues/7266",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7266,
    "updated_at": "2012-08-05T10:23:13Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7266",
    "id": 6035778
  },
  {
    "body": "Although `helper.asset_paths.compute_public_path` is publicly available, it won't actually return the right value for the asset.\n\nIt is used by helpers like `image_tag`, but `sprockets` is actually overriding these methods.\n\nI'm probably not being super clear. In any case, it makes it very difficult to know what's going on, and very hard to add your own type of asset, as I'm doing in my gem `swf_fu`. See https://github.com/marcandre/swf_fu/issues/8\n\nI'm not expecting much by opening this issue, but my feeling is that it would be best if Rails could cooperate nicely with the gems it uses out of the box so that methods are not overriden by the gems, especially not in an incompatible way.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b06d8e26b92456b228d3c77b66397534",
      "login": "marcandre",
      "avatar_url": "https://secure.gravatar.com/avatar/b06d8e26b92456b228d3c77b66397534?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/marcandre",
      "id": 33770
    },
    "closed_at": "2012-08-05T02:42:22Z",
    "created_at": "2012-08-05T02:31:15Z",
    "comments": 1,
    "title": "compute_public_path and sprockets",
    "html_url": "https://github.com/rails/rails/issues/7265",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7265,
    "updated_at": "2012-08-05T02:42:22Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7265",
    "id": 6034305
  },
  {
    "body": "strip_heredoc strips all leading spaces/tabs from a heredoc.\n\nBut there are situations when you want to retain a certain indent, for instance, when inserting something in config/environments/production.rb\n\nExample:\n```ruby\nmodule Module\n  class Creator < Thor\n    desc \"dostuff NAME\", \"do stuff to NAME\"\n    def dostuff(name)\n      insert_into_file \"config/environments/production.rb\", <<-HEREDOC.strip_heredoc(2), :before => \"end\\n\"\n        # mailer settings\n        config.action_mailer.smtp_settings = {\n          :address => 'YOURMAILSERVER',\n          :enable_starttls_auto => true,\n          :password => 'YOURPASSWORD',\n          :user_name => 'YOURUSERNAME'\n        }\n\n      HEREDOC\n    end   \n  end   \nend   \n```ruby\n\nThe result is that the inserted text is indented by 2 spaces, to align with the rest of production.rb.\n\nCheers\nace\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3dfc4136712f120023f092004f062cc4",
      "login": "acesuares",
      "avatar_url": "https://secure.gravatar.com/avatar/3dfc4136712f120023f092004f062cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acesuares",
      "id": 2784
    },
    "closed_at": "2012-08-07T14:59:24Z",
    "created_at": "2012-08-04T16:59:59Z",
    "comments": 13,
    "title": "added with_indent parameter to strip_heredoc",
    "html_url": "https://github.com/rails/rails/issues/7263",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7263",
      "patch_url": "https://github.com/rails/rails/pull/7263.patch",
      "diff_url": "https://github.com/rails/rails/pull/7263.diff"
    },
    "number": 7263,
    "updated_at": "2012-08-07T14:59:24Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7263",
    "id": 6031090
  },
  {
    "body": "Remove some unneeded complexity in RouteSet url helpers generation.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-08-04T14:30:36Z",
    "created_at": "2012-08-04T12:14:19Z",
    "comments": 2,
    "title": "Refator route set",
    "html_url": "https://github.com/rails/rails/issues/7262",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7262",
      "patch_url": "https://github.com/rails/rails/pull/7262.patch",
      "diff_url": "https://github.com/rails/rails/pull/7262.diff"
    },
    "number": 7262,
    "updated_at": "2012-08-04T14:30:36Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7262",
    "id": 6029790
  },
  {
    "body": "Would it be ok to allow formats with a dot in routing requests, like \"`http://example.com/users.xml.zip`\"?\n\nIf i am not mistaken, currently rails is only trying to match \"zip\" for format.  I doubt many people are using such routes now because the controller part is not correctly recognized and the route is not matched automatically at all.\n\nI can think about a PR if i have time (i would appreciate at least an indication which file to look at).\n\nP.S. It wouldn't bother me to write\n\n```ruby\nrespond_to do |format|\n  format.public_send(:'xml.zip') { render :'xml.zip' => @users}\nend\n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "63c72161fba6e27cb05c078651c5e969",
      "login": "alexeymuranov",
      "avatar_url": "https://secure.gravatar.com/avatar/63c72161fba6e27cb05c078651c5e969?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/alexeymuranov",
      "id": 712698
    },
    "closed_at": "2012-08-04T15:13:59Z",
    "created_at": "2012-08-04T10:38:45Z",
    "comments": 3,
    "title": "Routing: feature request to allow formats with dot, like '/users.xml.zip'",
    "html_url": "https://github.com/rails/rails/issues/7261",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7261,
    "updated_at": "2012-08-04T17:30:51Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7261",
    "id": 6029374
  },
  {
    "body": "A Boolean field will accept `true` or `false` as defaults instead of `0` / `1`.\n\nAs shown in the [Rails Migration Guides](http://guides.rubyonrails.org/migrations.html) right in the second box.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f27f3cb5efa4481b71db7f28dae9ac64",
      "login": "thomasklemm",
      "avatar_url": "https://secure.gravatar.com/avatar/f27f3cb5efa4481b71db7f28dae9ac64?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/thomasklemm",
      "id": 1100176
    },
    "closed_at": "2012-08-04T09:12:01Z",
    "created_at": "2012-08-04T08:09:57Z",
    "comments": 0,
    "title": "Update Migration Docs: Defaults for Boolean Fields",
    "html_url": "https://github.com/rails/rails/issues/7260",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7260",
      "patch_url": "https://github.com/rails/rails/pull/7260.patch",
      "diff_url": "https://github.com/rails/rails/pull/7260.diff"
    },
    "number": 7260,
    "updated_at": "2012-08-04T09:12:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7260",
    "id": 6028806
  },
  {
    "body": "Generating an URL with an array of records is now able to build a query\nstring if the last item of the array is a hash.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0e1f9a3f4fd8b96d5683a4c859ed2db9",
      "login": "Sephi-Chan",
      "avatar_url": "https://secure.gravatar.com/avatar/0e1f9a3f4fd8b96d5683a4c859ed2db9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Sephi-Chan",
      "id": 88009
    },
    "closed_at": "2012-08-04T10:35:31Z",
    "created_at": "2012-08-04T08:09:56Z",
    "comments": 9,
    "title": "polymorphic_url with an array generates a query string",
    "html_url": "https://github.com/rails/rails/issues/7259",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7259",
      "patch_url": "https://github.com/rails/rails/pull/7259.patch",
      "diff_url": "https://github.com/rails/rails/pull/7259.diff"
    },
    "number": 7259,
    "updated_at": "2012-08-04T18:05:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7259",
    "id": 6028805
  },
  {
    "body": "In 2fe70c180351e87801179e8404d1582d7da25645, rails changed from a static list of `assets.paths` to automatically register any path under `assets/*`. In my opinion, this creates confusion for trying to organize third-party bundles of js/css/images.\n\nTake for example a typical frontend widget I might want to download and install:\n\n```\nfoo/widget.js\nfoo/styles.css\nfoo/images/click.png\n```\n\nIf I want to keep this in a namespaced asset bundle, I can't just drop the folder into `vendor/assets`, as the asset paths will swallow the \"foo\" directory name, leaving the files naked in `public/assets`. In my manifests, these also automatically become available directly as \"styles.css\" and \"widget.js\" without a \"foo/\" prefix.\n\nI could arbitrarily put it into `vendor/assets/javascripts/foo`, but that makes no sense: it's not all javascripts, it's a whole package. Are there any established usage patterns I'm missing, or should Rails consider something to organize this better by default?\n\nIdeally I think the way to handle such packages is to define a \"foo.js\" and \"foo.css\" manifest to wrap the vendored package, and keep all its files scoped under its own directory, e.g.\n\n```\nvendor/assets/foo.css             # manifest file: //= require 'foo/widget.css'\nvendor/assets/foo.js              # manifest file: //= require 'foo/widget.js'\nvendor/assets/foo/widget.js\nvendor/assets/foo/styles.css\nvendor/assets/foo/images/click.png\n```\n\nThese would correspond to the public paths:\n\n```\n/assets/foo/styles.css  # not used directly when included through a manifest\n/assets/foo/widget.js   # not used directly when included through a manifest\n/assets/foo/images/click.png\n```\n\nThis would make the package available in `application.(css|js)` as a simple \"require foo\"\n\nHow best to configure rails for this? Should `assets/(stylesheets|javascripts|images)` be magically considered \"global\" or should sub-paths under `assets` be dropped altogether, leaving it to the user to organize assets how they see fit?\n\n(Also, currently there's a confusing mismatch between `app/assets` and `public/assets`, where app/assets is organized into subdirectories for javascripts & stylesheets, and public is not -- defaulting to just `assets` as the config path instead of `assets/*` could fix that.)",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "asset pipeline",
        "url": "https://api.github.com/repos/rails/rails/labels/asset+pipeline",
        "color": "d7e102"
      }
    ],
    "user": {
      "gravatar_id": "f0987c97234fa9c6b26f796bdbdab037",
      "login": "avit",
      "avatar_url": "https://secure.gravatar.com/avatar/f0987c97234fa9c6b26f796bdbdab037?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/avit",
      "id": 4278
    },
    "closed_at": "2012-08-04T15:10:24Z",
    "created_at": "2012-08-04T06:51:45Z",
    "comments": 5,
    "title": "Automatic asset paths prevent logical asset organization",
    "html_url": "https://github.com/rails/rails/issues/7258",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7258,
    "updated_at": "2012-08-05T06:29:22Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7258",
    "id": 6028466
  },
  {
    "body": "On an item page, there is a sidebar that consists of only one thing, a 'back to search' link. \n\nThis has always seemed a mis-use of space to me (and in our local implementation we've overridden it). \n\nSuggest that the item detail page should have no sidebar, it should take up full width (which will require some CSS overrides of some kind of maybe? In my local implementation I actually did it with rails code that makes the layout do something differnet when a controller tells it to with an ivar like @fullpage = true or something. Various ways to do this. )\n\nAnd the 'back to search' link should be next to the echo'd \"search context\" where it belongs -- same place you're telling someone what they searched for is the place to put the 'back to search results' link. \n\nJust a suggestion. ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "6a13e655e637138f8d571cec3f9cea76",
      "login": "jrochkind",
      "avatar_url": "https://secure.gravatar.com/avatar/6a13e655e637138f8d571cec3f9cea76?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jrochkind",
      "id": 149304
    },
    "closed_at": "2012-08-04T00:40:30Z",
    "created_at": "2012-08-04T00:32:45Z",
    "comments": 3,
    "title": "sidebar containing only 'back to search'",
    "html_url": "https://github.com/rails/rails/issues/7257",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7257,
    "updated_at": "2012-08-04T00:41:09Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7257",
    "id": 6026817
  },
  {
    "body": "ActiveRecord doesn't seem to understand that, given a set of params for an existing record with nested attributes, it can create a new nested record that itself has a nested _existing_ record.  (Relations tree: `Existing -> New -> Existing`)\n\nIs this a bug, or am I missing something?\n\nLet me show you a simple example.\n\nHere are my models:\n\n    class User < ActiveRecord::Base\n      has_many :posts\n      attr_accessible :name, :posts_attributes\n      accepts_nested_attributes_for :posts\n    end\n\n    class Post < ActiveRecord::Base\n      belongs_to :group\n      belongs_to :user\n      attr_accessible :content, :title, :group_attributes\n      accepts_nested_attributes_for :group\n    end\n\n    class Group < ActiveRecord::Base\n      has_many :posts\n      attr_accessible :name\n    end\n\nI've made one record in each table, and related them accordingly, so each table has a record in it with an `id=1`--this is known.  Now, if I have an existing User, a new Post, and an existing Group, and try to update that record using `accepts_nested_attributes_for`, it doesn't like it:\n\n    1.9.3-p125 :044 > params\n    {\n                      :id => 1,\n                    :name => \"Billy\",\n        :posts_attributes => [\n            [0] {\n                              :title => \"Title\",\n                            :content => \"Some magnificent content for you!\",\n                :group_attributes => {\n                      :id => 1,\n                    :name => \"Group 1\"\n                }\n            }\n        ]\n    }\n    1.9.3-p125 :045 > u\n    #<User:0x00000002f7f380> {\n                :id => 1,\n              :name => \"Billy\",\n        :created_at => Fri, 03 Aug 2012 20:21:37 UTC +00:00,\n        :updated_at => Fri, 03 Aug 2012 20:21:37 UTC +00:00\n    }\n    1.9.3-p125 :046 > u.update_attributes params\n       (0.1ms)  begin transaction\n       (0.1ms)  rollback transaction\n    ActiveRecord::RecordNotFound: Couldn't find Group with ID=1 for Post with ID=\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:462:in `raise_nested_attributes_record_not_found'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:332:in `assign_nested_attributes_for_one_to_one_association'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:288:in `group_attributes='\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:94:in `block in assign_attributes'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:93:in `each'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:93:in `assign_attributes'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/base.rb:498:in `initialize'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/reflection.rb:183:in `new'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/reflection.rb:183:in `build_association'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/associations/association.rb:233:in `build_record'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/associations/collection_association.rb:112:in `build'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:405:in `block in assign_nested_attributes_for_collection_association'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:400:in `each'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:400:in `assign_nested_attributes_for_collection_association'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:288:in `posts_attributes='\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:85:in `block in assign_attributes'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:78:in `each'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/attribute_assignment.rb:78:in `assign_attributes'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/persistence.rb:216:in `block in update_attributes'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/transactions.rb:295:in `block in with_transaction_returning_status'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/connection_adapters/abstract/database_statements.rb:192:in `transaction'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/transactions.rb:208:in `transaction'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/transactions.rb:293:in `with_transaction_returning_status'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/activerecord-3.2.7/lib/active_record/persistence.rb:215:in `update_attributes'\n      from (irb):15\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/railties-3.2.7/lib/rails/commands/console.rb:47:in `start'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/railties-3.2.7/lib/rails/commands/console.rb:8:in `start'\n      from /home/trevor/.rvm/gems/ruby-1.9.3-p125/gems/railties-3.2.7/lib/rails/commands.rb:41:in `<top (required)>'\n      from script/rails:6:in `require'\n      from script/rails:6:in `<main>'1.9.3-p125 :047 > \n\nIt thinks it can't find a group (with a known ID), related to a new Post.\nIt works when I remove the ID from the `group_attributes` (but it creates a new group record).\nIt works when I give the `posts_attributes` an ID, and remove the id from the `group_attributes` (and again creates a new group).\nIt also works when they all have IDs.\n\n  The relationship is working:\n\n    1.9.3-p125 :059 > p = Post.new( { group_attributes: { name: 'Testing' } } )\n    #<Post:0x00000004212380> {\n                :id => nil,\n             :title => nil,\n           :content => nil,\n          :group_id => nil,\n           :user_id => nil,\n        :created_at => nil,\n        :updated_at => nil\n    }\n    1.9.3-p125 :060 > p.group\n    [\n        [0] #<Group:0x00000004211868> {\n                    :id => nil,\n                  :name => \"Testing\",\n            :created_at => nil,\n            :updated_at => nil\n        }\n    ]\n\nIt also completely works when using `posts_attributes` and `group_attributes` during `User` creation, if all of the records are new.\n\nShouldn't it work still in the first example?  ActiveRecord should be smart enough to figure this out...!",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "858ee199c1521089a7e03841bbb4f743",
      "login": "wulftone",
      "avatar_url": "https://secure.gravatar.com/avatar/858ee199c1521089a7e03841bbb4f743?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/wulftone",
      "id": 142784
    },
    "closed_at": "2012-09-04T19:57:29Z",
    "created_at": "2012-08-03T21:37:00Z",
    "comments": 10,
    "title": "AcitveRecord won't accepts_nested_attributes_for new associated records with nested existing records",
    "html_url": "https://github.com/rails/rails/issues/7256",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7256,
    "updated_at": "2012-09-04T19:57:29Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7256",
    "id": 6024587
  },
  {
    "body": "Just upgraded my rails app from 2.3.14 to 3.2.7 on ruby-1.9.3-p194.\n\nI noticed the memory footprint when running tests now goes through the roof, 8gigs+.  I thought there was something wrong with my app, so I decided to spin up a new empty app:\n\n```bash\n$ rails new test-3.2.7\n$ rails g model user\n$ rake db:migrate\n$ rake db:test:prepare\n```\n\ntest/test_helper.rb\n```ruby\n# ...\nclass ActiveSupport::TestCase\n  # ...\n\n  def teardown\n    GC.start\n    count = 0\n    ObjectSpace.each_object(User) { count += 1 }\n    puts \"User object count: #{count}\"\n  end\nend\n```\n\ntest/unit/user_test.rb\n```ruby\nrequire 'test_helper'\n\nclass UserTest < ActiveSupport::TestCase\n  1.upto(100) do |n|\n    define_method(\"test_foo#{n}\") do\n      User.create!\n    end\n  end\nend\n```\n\nWhen you run the test, you'll see `User object count: 100` at the end. Understandable, this isn't much memory for this test app. But in my real app, when many objects accumulated over time over the span of all the tests, it will have a crazy huge memory footprint.\n\nKeep in mind that 99% of these tests were working fine in rails 2.3 (REE-1.8.7).\n\nAny insights would be much appreciated, thanks!",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b5af854560a1f83413ce4f27596ed231",
      "login": "ngan",
      "avatar_url": "https://secure.gravatar.com/avatar/b5af854560a1f83413ce4f27596ed231?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ngan",
      "id": 16579
    },
    "closed_at": "2012-08-07T23:30:47Z",
    "created_at": "2012-08-03T18:49:24Z",
    "comments": 4,
    "title": "Memory Leak in TestUnit",
    "html_url": "https://github.com/rails/rails/issues/7255",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7255,
    "updated_at": "2012-08-07T23:31:28Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7255",
    "id": 6021081
  },
  {
    "body": "errors_options is calculated for every *CHECKS* but it could be\ncalculated one time  because options and RESERVED_OPTIONS\nnot change during this cycle",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd98f4e263d306bc455ca750c31443f",
      "login": "acapilleri",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd98f4e263d306bc455ca750c31443f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acapilleri",
      "id": 46208
    },
    "closed_at": "2012-08-03T16:57:38Z",
    "created_at": "2012-08-03T15:15:40Z",
    "comments": 0,
    "title": "calculate errors_options one time in validate_each",
    "html_url": "https://github.com/rails/rails/issues/7253",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7253",
      "patch_url": "https://github.com/rails/rails/pull/7253.patch",
      "diff_url": "https://github.com/rails/rails/pull/7253.diff"
    },
    "number": 7253,
    "updated_at": "2012-08-03T16:57:38Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7253",
    "id": 6016858
  },
  {
    "body": "Running rake db:migrate to bring my machine's schema up to date with my team's just resulted in the following diff to db/schema.rb:\n\n    --- a/db/schema.rb\n    +++ b/db/schema.rb\n    @@ -1046,7 +1046,7 @@\n         t.float    \"max_hr\"\n         t.float    \"calories\"\n         t.float    \"average_speed\"\n    -    t.text     \"raw_data\",         :limit => 16777215\n    +    t.text     \"raw_data\",         :limit => 2147483647\n         t.float    \"avg_cadence\"\n         t.binary   \"log_data\",         :limit => 16777215\n         t.integer  \"challenge_id\"\n\nThe last developer to make changes to the schema file has mysql version: \"mysql Ver 14.14 Distrib 5.1.55, for apple-darwin10.6.0 (i386) using readline 6.1\", and I have  \"mysql  Ver 14.14 Distrib 5.1.51, for apple-darwin10.4.0 (i386) using readline 6.1\". I'm trying to find a simpler way to reproduce the issue, but this is as far as I've got in investigating it so far.",
    "milestone": null,
    "assignee": {
      "gravatar_id": "b14001f2b40640dd6cb63f0e8f1f4869",
      "login": "pixeltrix",
      "avatar_url": "https://secure.gravatar.com/avatar/b14001f2b40640dd6cb63f0e8f1f4869?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/pixeltrix",
      "id": 6321
    },
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "adcd8d8f37a83e7ed102cd1df3e95298",
      "login": "mortice",
      "avatar_url": "https://secure.gravatar.com/avatar/adcd8d8f37a83e7ed102cd1df3e95298?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/mortice",
      "id": 60826
    },
    "closed_at": "2012-08-04T07:27:02Z",
    "created_at": "2012-08-03T14:55:53Z",
    "comments": 6,
    "title": "Text field limits in schema.rb changing on db:migrate with different machines",
    "html_url": "https://github.com/rails/rails/issues/7252",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7252,
    "updated_at": "2012-08-04T07:41:46Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7252",
    "id": 6016445
  },
  {
    "body": "I created example rails project with bug https://github.com/vad4msiu/rails-bug.git\nIn project is two models:\n```ruby\nclass Catalog < ActiveRecord::Base\n  has_one :product\n  attr_accessible :name, :product_attributes\n\n  accepts_nested_attributes_for :product\nend\n```\n\n```ruby\nclass Product < ActiveRecord::Base\n  belongs_to :catalog, :inverse_of => :product\n  attr_accessible :name, :catalog_id\n\n  after_save do\n    catalog.update_attributes! :name => name\n  end\nend\n```\n\nIn rails console:\n<pre>\nLoading development environment (Rails 3.2.7)\n1.9.3p125 :001 > p = Product.first; p.name = 'asd'; p.save!\n  Product Load (0.1ms)  SELECT \"products\".* FROM \"products\" LIMIT 1\n   (0.0ms)  begin transaction\n  Catalog Load (0.1ms)  SELECT \"catalogs\".* FROM \"catalogs\" WHERE \"catalogs\".\"id\" = 1 LIMIT 1\n   (0.1ms)  rollback transaction\nSystemStackError: stack level too deep\n\tfrom /Users/vad4msiu/.rvm/rubies/ruby-1.9.3-p125/lib/ruby/1.9.1/irb/workspace.rb:80\nMaybe IRB bug!\n1.9.3p125 :002 >\n</pre>\n\nIf in model Product remove  **:inverse_of => :product** :\n```ruby\nclass Product < ActiveRecord::Base\n  belongs_to :catalog\n  attr_accessible :name, :catalog_id\n\n  after_save do\n    catalog.update_attributes! :name => name\n  end\nend\n```\n\nIt all works well. In rails console:\n<pre>\nLoading development environment (Rails 3.2.7)\n1.9.3p125 :001 > p = Product.first; p.name = 'asd'; p.save!\n  Product Load (0.1ms)  SELECT \"products\".* FROM \"products\" LIMIT 1\n   (0.0ms)  begin transaction\n  Catalog Load (0.1ms)  SELECT \"catalogs\".* FROM \"catalogs\" WHERE \"catalogs\".\"id\" = 1 LIMIT 1\n   (0.0ms)  commit transaction\n => true \n1.9.3p125 :002 >\n</pre>\n\nI'm doing something wrong?",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "9f9ceb41d3220663fe4e3139ba628baf",
      "login": "vad4msiu",
      "avatar_url": "https://secure.gravatar.com/avatar/9f9ceb41d3220663fe4e3139ba628baf?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/vad4msiu",
      "id": 576091
    },
    "closed_at": "2012-08-09T18:18:59Z",
    "created_at": "2012-08-03T13:40:40Z",
    "comments": 5,
    "title": "accepts_nested_attributes_for and inverse_of",
    "html_url": "https://github.com/rails/rails/issues/7250",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7250,
    "updated_at": "2012-08-09T18:18:59Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7250",
    "id": 6014887
  },
  {
    "body": "resolve old browser (IE6/IE7) line height issue",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "748dfca10db6ade9156d9377fc05def7",
      "login": "quake",
      "avatar_url": "https://secure.gravatar.com/avatar/748dfca10db6ade9156d9377fc05def7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/quake",
      "id": 8990
    },
    "closed_at": "2012-08-03T14:17:01Z",
    "created_at": "2012-08-03T12:30:55Z",
    "comments": 1,
    "title": "change form div css display attribute to 'none' ",
    "html_url": "https://github.com/rails/rails/issues/7249",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7249",
      "patch_url": "https://github.com/rails/rails/pull/7249.patch",
      "diff_url": "https://github.com/rails/rails/pull/7249.diff"
    },
    "number": 7249,
    "updated_at": "2012-08-03T14:17:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7249",
    "id": 6013677
  },
  {
    "body": "To build a URL like `/some_objects/42?foo=bar` we can not use the array notation.\n\n``` ruby\n<%= link_to @some_object.name, [ @some_object, { foo: 'bar' } ] %>\n```\n\nWould you Rails team be interested in such a patch to `url_for` ?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0e1f9a3f4fd8b96d5683a4c859ed2db9",
      "login": "Sephi-Chan",
      "avatar_url": "https://secure.gravatar.com/avatar/0e1f9a3f4fd8b96d5683a4c859ed2db9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Sephi-Chan",
      "id": 88009
    },
    "closed_at": "2012-08-03T23:21:50Z",
    "created_at": "2012-08-03T06:54:24Z",
    "comments": 4,
    "title": "Generate URL with array notation might accept a hash to build the query string",
    "html_url": "https://github.com/rails/rails/issues/7246",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7246,
    "updated_at": "2012-08-04T08:10:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7246",
    "id": 6008996
  },
  {
    "body": "If you have an error page that shows lines 8-12 for example, the source would not be aligned properly from line 10 onwards.\n\nThis commit fixes that.\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "864ae2178a21699972a64f5262b62b00",
      "login": "lucasuyezu",
      "avatar_url": "https://secure.gravatar.com/avatar/864ae2178a21699972a64f5262b62b00?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/lucasuyezu",
      "id": 26002
    },
    "closed_at": "2012-08-15T16:15:32Z",
    "created_at": "2012-08-03T00:30:06Z",
    "comments": 9,
    "title": "Indentation should consider line number character count.",
    "html_url": "https://github.com/rails/rails/issues/7244",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7244",
      "patch_url": "https://github.com/rails/rails/pull/7244.patch",
      "diff_url": "https://github.com/rails/rails/pull/7244.diff"
    },
    "number": 7244,
    "updated_at": "2012-08-15T16:15:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7244",
    "id": 6005731
  },
  {
    "body": "This method is very helpful when inspecting and debug the code. So, instead of you having to do this:\n\n    @user.tap{ |u| puts u.inspect }.activate!\n\nNow you can do:\n\n    @user.peek.activate!",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f1c4a3bb1606cc4a61711e61e2fe6146",
      "login": "sikachu",
      "avatar_url": "https://secure.gravatar.com/avatar/f1c4a3bb1606cc4a61711e61e2fe6146?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/sikachu",
      "id": 4912
    },
    "closed_at": "2012-08-03T01:44:36Z",
    "created_at": "2012-08-03T00:16:04Z",
    "comments": 6,
    "title": "Add Object#peek as helper method to inspect object",
    "html_url": "https://github.com/rails/rails/issues/7243",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7243",
      "patch_url": "https://github.com/rails/rails/pull/7243.patch",
      "diff_url": "https://github.com/rails/rails/pull/7243.diff"
    },
    "number": 7243,
    "updated_at": "2012-08-03T01:44:36Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7243",
    "id": 6005554
  },
  {
    "body": "Following http://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html, I got al the way to \n\n```\nbundle exec rake mysql:build_databases\n```\nbut then an error occurs:\n```\nERROR 1045 (28000): Access denied for user 'rails'@'localhost' (using password: YES)\n```\nThe docs say:\n*If you’re using another database, check the files under activerecord/test/connections for default connection information.*\nbut there is no such file.\n\nThe docs also say\n*The Active Record test suite requires a custom config file: activerecord/test/config.yml. An example is provided in activerecord/test/config.example.yml which can be copied and used as needed for your environment.*\nbut I already had a file activerecord/test/config.yml (didn't have to copy it).\n\nI also followed the instructions for setting up postgresql and ran the tests, they worked fine\n```\nFinished tests in 182.825627s, 20.1777 tests/s, 59.1274 assertions/s.\n3689 tests, 10810 assertions, 0 failures, 0 errors, 18 skips\n```\nTests for sqllite worked fine:\n```\nFinished tests in 172.813646s, 20.5019 tests/s, 59.8043 assertions/s.\n3543 tests, 10335 assertions, 0 failures, 0 errors, 22 skips\n```\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3dfc4136712f120023f092004f062cc4",
      "login": "acesuares",
      "avatar_url": "https://secure.gravatar.com/avatar/3dfc4136712f120023f092004f062cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acesuares",
      "id": 2784
    },
    "closed_at": "2012-08-03T03:48:57Z",
    "created_at": "2012-08-03T00:10:15Z",
    "comments": 9,
    "title": "bundle exec rake mysql:build_databases gives error ERROR 1045 (28000): Access denied for user 'rails'@'localhost' (using password: YES)",
    "html_url": "https://github.com/rails/rails/issues/7242",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7242,
    "updated_at": "2012-08-03T03:48:57Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7242",
    "id": 6005476
  },
  {
    "body": "attr_accessible is a very confusing name. \n\nFirst, it has nothing to do with the other attr_* macros, which deal with Ruby instance-variable-based getters and setters, not Rails attributes. \n\nSecond, the term \"access\" is generally understood to refer to reading a value, viz. accessor vs. mutator. Yet this macro is about the *opposite* of reading; instead, it determines whether an attribute can be *written*, aka assigned.\n\nThird, this is in a module called Mass Assignment, and this macro is literally specifying which values can be mass assigned. So why be so mysterious? Let's just call it mass_assignable and get on with our lives. It will make this feature more understandable to every Rails programmer who has had to figure out what that line is doing there, especially now that it's in every generated model class -- and rightly so, since it's an important and useful feature and deserves to be embraced and understood by all.\n\nThis patch is just to show the (trivial) implementation; changes to documentation and to the generators will follow if people agree it's worth doing.\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "5a0d7f0cb2fac7858d234de7f7f01491",
      "login": "alexch",
      "avatar_url": "https://secure.gravatar.com/avatar/5a0d7f0cb2fac7858d234de7f7f01491?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/alexch",
      "id": 8524
    },
    "closed_at": "2012-08-03T00:47:34Z",
    "created_at": "2012-08-02T23:40:33Z",
    "comments": 12,
    "title": "alias attr_accessible to mass_assignable",
    "html_url": "https://github.com/rails/rails/issues/7241",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7241",
      "patch_url": "https://github.com/rails/rails/pull/7241.patch",
      "diff_url": "https://github.com/rails/rails/pull/7241.diff"
    },
    "number": 7241,
    "updated_at": "2012-08-03T06:53:16Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7241",
    "id": 6005063
  },
  {
    "body": "This is a rebase of #2323. Tests pass.\n\nFixes #2301.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "233c279c012ebac792aaa805f966cbc7",
      "login": "steveklabnik",
      "avatar_url": "https://secure.gravatar.com/avatar/233c279c012ebac792aaa805f966cbc7?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/steveklabnik",
      "id": 27786
    },
    "closed_at": "2012-08-02T20:50:55Z",
    "created_at": "2012-08-02T19:25:36Z",
    "comments": 12,
    "title": "Fix for digest authentication bug - issue #2301 in rails/rails",
    "html_url": "https://github.com/rails/rails/issues/7240",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7240",
      "patch_url": "https://github.com/rails/rails/pull/7240.patch",
      "diff_url": "https://github.com/rails/rails/pull/7240.diff"
    },
    "number": 7240,
    "updated_at": "2012-08-02T21:06:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7240",
    "id": 6000077
  },
  {
    "body": "I initially filed bug with ruby-lang with all the details and test case explanation here:\nhttp://bugs.ruby-lang.org/issues/6825\nAlso: https://github.com/brianmario/mysql2/issues/281\n\nSame behavior seems to be shared by mysql gem, but not sqlite3.\nThis bug seems to be specific to ruby 1.9.3 / OS X 10.6 combination (confirmed on another Snow Leopard, not confirmed on everything else I tried).\n\nI also fill bug here because same code rewritten with `sequel` does not crash.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "third party issue",
        "url": "https://api.github.com/repos/rails/rails/labels/third+party+issue",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "9b8d8a5d9d726e6875e7d34d1d743eae",
      "login": "markiz",
      "avatar_url": "https://secure.gravatar.com/avatar/9b8d8a5d9d726e6875e7d34d1d743eae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/markiz",
      "id": 53611
    },
    "closed_at": "2012-08-02T18:12:59Z",
    "created_at": "2012-08-02T17:44:19Z",
    "comments": 9,
    "title": "Crash on OS X 10.6 / ruby 1.9.3 when forking and threading: [BUG] pthread_cond_timedwait: Invalid argument (EINVAL)",
    "html_url": "https://github.com/rails/rails/issues/7239",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7239,
    "updated_at": "2012-08-02T20:27:03Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7239",
    "id": 5997817
  },
  {
    "body": "After upgrading from Rails 3.2.6 to 3.2.7, encountered a test failure when evaluating an integer attribute that contained a zero value as changed.  Tested other non-integer values and the _changed? status was correct.  The following is a quick test to reproduce the problem:\n\nFirst obtain an integer attribute from the database table (using postgres in my case):\nr=Review.find_by_issue(11)\nr.issue\n => 11\nr.changes\n => {}\nr.issue = 11\n => 11\nr.changed?\n => false\nr.changes\n => {}\n\nThe above works as it did before in Rails 3.2.6.  The next test using zero has a different behavior:\n\nr=Review.find_by_issue(0)\nr.issue\n => 0\nr.changes\n => {}\nr.issue = 0\n => 0\nr.changed?\n => true\nr.changes\n => {\"issue\"=>[0,0]}\n\nIt now treats a zero value to the same zero value as a change in Rails 3.2.7.   I also tested this against Rails 3.2.8rc1 and encountered the same problem.",
    "milestone": {
      "due_on": null,
      "creator": {
        "gravatar_id": "0525b332aafb83307b32d9747a93de03",
        "login": "rafaelfranca",
        "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "url": "https://api.github.com/users/rafaelfranca",
        "id": 47848
      },
      "closed_issues": 2,
      "description": null,
      "created_at": "2012-07-27T03:02:23Z",
      "title": "3.2.8",
      "state": "closed",
      "number": 19,
      "url": "https://api.github.com/repos/rails/rails/milestones/19",
      "id": 152538,
      "open_issues": 0
    },
    "assignee": {
      "gravatar_id": "0525b332aafb83307b32d9747a93de03",
      "login": "rafaelfranca",
      "avatar_url": "https://secure.gravatar.com/avatar/0525b332aafb83307b32d9747a93de03?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rafaelfranca",
      "id": 47848
    },
    "labels": [
      {
        "name": "regression",
        "url": "https://api.github.com/repos/rails/rails/labels/regression",
        "color": "e10c02"
      },
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
      "gravatar_id": "96ac662a9cb0673cd032adf5f43de118",
      "login": "timedimension",
      "avatar_url": "https://secure.gravatar.com/avatar/96ac662a9cb0673cd032adf5f43de118?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/timedimension",
      "id": 2084333
    },
    "closed_at": "2012-08-02T17:12:26Z",
    "created_at": "2012-08-02T15:42:22Z",
    "comments": 0,
    "title": "Incorrect integer status using {attribute}_changed? in Rails 3.2.7 ",
    "html_url": "https://github.com/rails/rails/issues/7237",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7237,
    "updated_at": "2012-08-02T17:12:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7237",
    "id": 5995155
  },
  {
    "body": "Here is a strange issue with duplicating an AR class.  The actual situation is more or less the following: i extend my models to be more friendly, like to know which fields to show and how to sort their records.  These extensions are different in different controllers.  To not worry about possible violations of Open/closed principle, i've decided to duplicate the model classes instead of inheriting from them, something like:\n\n~~~ruby\nclass UsersController < ApplicationController\n  User = ::User.dup\n  class User\n  end\nend\n~~~\n\ninstead of\n\n~~~ruby\nclass UsersController < ApplicationController\n  class User < ::User\n  end\nend\n~~~\n\nThen i started getting an error, apparently caused by a wrong model class being used, which *depended on the order in which i visited pages of my application*!\n\nHere is a script to reproduce.  I do not know if this should be considered a bug, but to me this behavior is strange:\n\n~~~ruby\ngem 'activerecord', '3.2.7'\nrequire 'active_record'\n# require 'logger'\n\n# Print out what version we're running\nputs \"Active Record #{ActiveRecord::VERSION::STRING}\"\n\n# ActiveRecord::Base.logger = Logger.new(STDOUT)\n\n# Connect to an in-memory sqlite3 database (more on this in a moment)\nActiveRecord::Base.establish_connection( :adapter  => 'sqlite3',\n                                         :database => ':memory:' )\n\n# Create the minimal database schema necessary to reproduce the bug\nActiveRecord::Schema.define do\n  create_table \"users\", :force => true do |t|\n  end\nend\n\n# Create the minimal set of models to reproduce the bug\nclass User < ActiveRecord::Base\nend\n\n# Create some test data\nUser.create # XXX: this line is important\n\nmodule M\n  User = ::User.dup\n  class User\n  end\nend\n\n# Create some test data\nUser.create\n\n# Reproduce the actual bug!\np M::User.first.class # => User (expected M::User)\n~~~\n\nCommenting or uncommenting the line marked with *XXX* changes the class of the record returned.  I think it has to always be `M::User`.\n\n*Update:* Same with `clone` instead of `dup`.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "63c72161fba6e27cb05c078651c5e969",
      "login": "alexeymuranov",
      "avatar_url": "https://secure.gravatar.com/avatar/63c72161fba6e27cb05c078651c5e969?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/alexeymuranov",
      "id": 712698
    },
    "closed_at": "2012-08-02T17:14:06Z",
    "created_at": "2012-08-02T14:45:49Z",
    "comments": 16,
    "title": "Active Record: if an AR class is duplicated, records can be returned with incorrect class",
    "html_url": "https://github.com/rails/rails/issues/7236",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7236,
    "updated_at": "2012-08-02T17:59:34Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7236",
    "id": 5993806
  },
  {
    "body": "Mocha 0.12.2 renames the Integration module to\nMonkeyPatching. This breaks the code Rails uses\nto retrieve the assertion counter from Mocha.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "a54251b745d59735ea5e9f0656a5d58d",
      "login": "ffmike",
      "avatar_url": "https://secure.gravatar.com/avatar/a54251b745d59735ea5e9f0656a5d58d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ffmike",
      "id": 2514
    },
    "closed_at": "2012-08-02T12:08:51Z",
    "created_at": "2012-08-02T11:45:31Z",
    "comments": 1,
    "title": "Fix ActiveSupport integration with Mocha > 0.12.1",
    "html_url": "https://github.com/rails/rails/issues/7235",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7235",
      "patch_url": "https://github.com/rails/rails/pull/7235.patch",
      "diff_url": "https://github.com/rails/rails/pull/7235.diff"
    },
    "number": 7235,
    "updated_at": "2012-08-02T12:09:00Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7235",
    "id": 5990249
  },
  {
    "body": "Just had an issue where nginx + puma sockets resulted in a broken remote_it, this falls back to local ips if forced ",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "3dcae8378d46c244172a115c28ca49ce",
      "login": "SamSaffron",
      "avatar_url": "https://secure.gravatar.com/avatar/3dcae8378d46c244172a115c28ca49ce?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/SamSaffron",
      "id": 5213
    },
    "closed_at": "2012-08-02T11:36:21Z",
    "created_at": "2012-08-02T08:29:16Z",
    "comments": 0,
    "title": "Update actionpack/lib/action_dispatch/middleware/remote_ip.rb",
    "html_url": "https://github.com/rails/rails/issues/7233",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7233",
      "patch_url": "https://github.com/rails/rails/pull/7233.patch",
      "diff_url": "https://github.com/rails/rails/pull/7233.diff"
    },
    "number": 7233,
    "updated_at": "2012-08-02T11:36:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7233",
    "id": 5987178
  },
  {
    "body": "Please see #7200 (postgresql_adapter.rb ignores NULLS while creating distincts in 3.2.7).",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-02T14:53:48Z",
    "created_at": "2012-08-02T01:13:06Z",
    "comments": 3,
    "title": "Fix #7200. Backport #5168 to 3-2-stable",
    "html_url": "https://github.com/rails/rails/issues/7232",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7232",
      "patch_url": "https://github.com/rails/rails/pull/7232.patch",
      "diff_url": "https://github.com/rails/rails/pull/7232.diff"
    },
    "number": 7232,
    "updated_at": "2012-08-02T14:53:48Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7232",
    "id": 5982823
  },
  {
    "body": "Rails included a single character response body to work around an old Safari bug where headers were ignored if no content was sent.\n\nThis patch brings the behavior slightly closer to spec if :no_content/204 is explicity requested via a head only response by sending a no content in the response body. \n\nThe single character body breaks especially JSON parsers on iOS etc that sees it as invalid content. By localising the change to only 204 responses this should allow API implementers to use the 204 status code when no content is sent back.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "79cdbc1957aee2a63e336001df89f195",
      "login": "armanddp",
      "avatar_url": "https://secure.gravatar.com/avatar/79cdbc1957aee2a63e336001df89f195?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/armanddp",
      "id": 6898
    },
    "closed_at": "2012-08-03T01:50:27Z",
    "created_at": "2012-08-01T21:53:29Z",
    "comments": 4,
    "title": "Remove single character body in head(:no_content) response ",
    "html_url": "https://github.com/rails/rails/issues/7231",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7231",
      "patch_url": "https://github.com/rails/rails/pull/7231.patch",
      "diff_url": "https://github.com/rails/rails/pull/7231.diff"
    },
    "number": 7231,
    "updated_at": "2012-08-03T01:50:27Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7231",
    "id": 5979481
  },
  {
    "body": "Many named routes have keys that are required to successfully resolve. If a key is left off like this:\n\n    <%= link_to 'user', user_path %>\n\nAn error will be raised like this:\n\n    No route matches {:action=>\"show\", :controller=>\"users\"}\n\nSince Journey know's that the `:id` is missing, we can add extra debugging information to the error message.\n\n    No route matches {:action=>\"show\", :controller=>\"users\"} missing required keys: [:id]\n\n\nThis will help new and seasoned developers look closer at their parameters. I've also subclassed the routing error to be clear that this error is a result of attempting to generate a url and not because the user is trying to visit a bad url. \n\nThe current error message is misleading and confuses most developers. The important part isn't what's in the options, the important part is that we are missing keys. Adding this information to the error message will make debugging much more obvious. \n\nThis is the sister pull request of https://github.com/rails/journey/pull/44 which will be required to get they missing keys into the correct error message. Opening both issues at the same time to start a dialog. \n\nExample Development Error in Rails: http://cl.ly/image/3S0T0n1T3421\n\ncc/ @pixeltrix",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "db953d125f5cc49756edb6149f1b813e",
      "login": "schneems",
      "avatar_url": "https://secure.gravatar.com/avatar/db953d125f5cc49756edb6149f1b813e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/schneems",
      "id": 59744
    },
    "closed_at": "2012-08-29T19:03:07Z",
    "created_at": "2012-08-01T20:40:36Z",
    "comments": 12,
    "title": "Add Missing Keys from Journey on Failed URL Format",
    "html_url": "https://github.com/rails/rails/issues/7230",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7230",
      "patch_url": "https://github.com/rails/rails/pull/7230.patch",
      "diff_url": "https://github.com/rails/rails/pull/7230.diff"
    },
    "number": 7230,
    "updated_at": "2012-08-29T22:30:43Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7230",
    "id": 5977906
  },
  {
    "body": "sorry, I missed this change.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-01T17:12:28Z",
    "created_at": "2012-08-01T16:46:34Z",
    "comments": 0,
    "title": "Change AR's CHANGELOG, because it is related to e35c67ae0f920011a2440210041e96659a8de985",
    "html_url": "https://github.com/rails/rails/issues/7228",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7228",
      "patch_url": "https://github.com/rails/rails/pull/7228.patch",
      "diff_url": "https://github.com/rails/rails/pull/7228.diff"
    },
    "number": 7228,
    "updated_at": "2012-08-01T17:12:28Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7228",
    "id": 5972583
  },
  {
    "body": "First, I don't know if it's a Rails issue or an RSpec problem, I'm posting here because I found the commit on Rails that introduced this new behavior or bug.\n\nI'm used to just run: `rake` or  `rake spec` to run the tests, running every time the tasks necessary for the test environment.\n\nBut, right now, with Rails 3.2.7 when running `rake spec` it doesn't set the RAILS_ENV to test, throwing some errors because it doesn't include the necessary list for the test env.\n\nSo, we have to either set the RAILS_ENV explicit to \"test\" before `rake spec` or use `rspec spec/` and run db:prepare manually.\n\nThe commit I mentioned that introduced this was: https://github.com/caironoleto/rails/commit/f8df3f332da50fb7b284b170283711e2b6891d67\n\nEnvironment:\n\nRails 3.2.7\nruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.0]\n",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e68278c0366608ccf088b7b67cd8d566",
      "login": "krsmurata",
      "avatar_url": "https://secure.gravatar.com/avatar/e68278c0366608ccf088b7b67cd8d566?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/krsmurata",
      "id": 4591
    },
    "closed_at": "2012-08-01T17:19:44Z",
    "created_at": "2012-08-01T16:40:16Z",
    "comments": 3,
    "title": "rake spec not loading RAILS_ENV=test",
    "html_url": "https://github.com/rails/rails/issues/7227",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7227,
    "updated_at": "2012-08-01T18:32:39Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7227",
    "id": 5972462
  },
  {
    "body": "update_attribute worked on new records, after upgrading to 3.2.7 and changing to update_column per the deprecation warning I have failing specs because I'm now calling update_column on new records.  Is there a reason update_column(s) shouldn't set the attribute for new records instead of raising and error?  I've been searching for the discussion on this matter but haven't been able to find anything so I'm opening this issue.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "b62104e36c39144c7a29658122ab6c83",
      "login": "jnimety",
      "avatar_url": "https://secure.gravatar.com/avatar/b62104e36c39144c7a29658122ab6c83?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jnimety",
      "id": 70484
    },
    "closed_at": "2012-08-01T15:59:50Z",
    "created_at": "2012-08-01T14:44:50Z",
    "comments": 22,
    "title": "update_column(s) doesn't work on new records",
    "html_url": "https://github.com/rails/rails/issues/7226",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7226,
    "updated_at": "2012-08-01T22:26:07Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7226",
    "id": 5969591
  },
  {
    "body": "Today, eager loading an application is coupled with the config.cache_classes configuration. This means that every time we cache classes, we eager load the app. This is not necessarily true, for example in test environment an application could benefit of not eager loading the whole application when running a single test file, [as the results reported here](https://gist.github.com/2947894).\n\nThis proposal discuss some changes for Rails 4 to make booting more flexible and consistent.\n\n## config.eager_load\n\nThe first part of the proposal is to add a config.eager_load that says when to eager load the application. By default, we want these settings to be:\n\n    # development\n    config.cache_classes = false\n    config.eager_load = false\n\n    # test\n    config.cache_classes = true\n    config.eager_load = false # you may want to turn this to true if using spork\n\n    # production\n    config.cache_classes = true\n    config.eager_load = true\n\nNotice that running a rake task **always** disables eager load (this is hardcoded in rails source today).\n\n## config.eager_load_namespaces\n\nRails also has a boolean configuration named `config.preload_frameworks` that preloads frameworks. I don't like this configuration because it is very tied to Rails and its frameworks. I propose instead `config.eager_load_namespaces` as a configuration generic enough not only to support Rails frameworks, but any gem or extension. We should be able to eager load any namespace by adding it to the list:\n\n    config.eager_load_namespaces << DataMapper\n\nAnd now, whenever `config.eager_load` is true, we will invoke `DataMapper.eager_load!` to do the proper setup.\n\nThe idea of registering namespaces (and not lambdas) is that a user should be able to remove a namespace of the list if it is causing problems (or if they don't really need to eager load it).\n\nAnother nice thing about this approach is that all engines (and therefore any Rails application) already implements the `eager_load!` method, so they could be added by default to the `config.eager_load_namespaces` array, unifying both preload frameworks and eager load approaches.\n\n**NOTE**: We are pending some hax to ensure production still work with webrick. At the worst scenario, bring the Rack::Lock option back.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e837f6b7fd146ab16ed3d663476c063e",
      "login": "josevalim",
      "avatar_url": "https://secure.gravatar.com/avatar/e837f6b7fd146ab16ed3d663476c063e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/josevalim",
      "id": 9582
    },
    "closed_at": "2012-08-21T19:58:25Z",
    "created_at": "2012-08-01T14:38:52Z",
    "comments": 0,
    "title": "Improve eager load on Rails",
    "html_url": "https://github.com/rails/rails/issues/7225",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7225",
      "patch_url": "https://github.com/rails/rails/pull/7225.patch",
      "diff_url": "https://github.com/rails/rails/pull/7225.diff"
    },
    "number": 7225,
    "updated_at": "2012-08-21T19:58:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7225",
    "id": 5969467
  },
  {
    "body": "Please see 0da12df2608969330bd47c543866f79ff8ca9edd.\n\ncc/ @josevalim",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "1f0b221851379759360d7130dabdfa53",
      "login": "kennyj",
      "avatar_url": "https://secure.gravatar.com/avatar/1f0b221851379759360d7130dabdfa53?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/kennyj",
      "id": 13426
    },
    "closed_at": "2012-08-01T15:52:32Z",
    "created_at": "2012-08-01T14:36:47Z",
    "comments": 4,
    "title": "The use_schema_cache_dump configuration moved to ActiveRecord.",
    "html_url": "https://github.com/rails/rails/issues/7224",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7224",
      "patch_url": "https://github.com/rails/rails/pull/7224.patch",
      "diff_url": "https://github.com/rails/rails/pull/7224.diff"
    },
    "number": 7224,
    "updated_at": "2012-08-01T15:52:32Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7224",
    "id": 5969422
  },
  {
    "body": "Hi all!\n\nJust want to understand why using `pluck` in `scope` causes 2 queries on DB, is this an issue?\n\nExamples:\n```ruby\nclass AdoptionDepartment < ActiveRecord::Base\n  belongs_to :user\n  attr_accessible :name, :term\n\n  scope :get_terms, lambda { |user| where(user_id: user).uniq.pluck(:term) }\n  # alternative:\n  scope :get_terms_with_select, lambda { |user| select(:term).where(user_id: user).uniq } \n\n  validates_presence_of :name\nend\n```\n\nConsole:\n```\n> AdoptionDepartment.get_terms(user)\n   (0.6ms)  SELECT DISTINCT term FROM `adoption_departments` WHERE `adoption_departments`.`user_id` = 7\n  AdoptionDepartment Load (0.4ms)  SELECT `adoption_departments`.* FROM `adoption_departments` \n => [] \n> AdoptionDepartment.get_terms_with_select(user)\n  AdoptionDepartment Load (0.9ms)  SELECT DISTINCT term FROM `adoption_departments` WHERE `adoption_departments`.`user_id` = 7\n => [#<AdoptionDepartment term: \"Summer 2012\">] \n```",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "89f29e4d92ebe80ff0b62f151361a00b",
      "login": "emeraldMaster",
      "avatar_url": "https://secure.gravatar.com/avatar/89f29e4d92ebe80ff0b62f151361a00b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/emeraldMaster",
      "id": 1543930
    },
    "closed_at": "2012-08-01T21:51:12Z",
    "created_at": "2012-08-01T13:31:35Z",
    "comments": 3,
    "title": "pluck in scope = unexpected result?",
    "html_url": "https://github.com/rails/rails/issues/7223",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7223,
    "updated_at": "2012-08-01T21:51:12Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7223",
    "id": 5967862
  },
  {
    "body": "Given a class that include ActiveModel::Validations with a validation like the following:\nvalidates_length_of(:title, :minimum => 0, :allow_nil => false).\nThis makes incosistent the validation because it not raise error when\ntitle is *nil*.It should accepts only the empty string\nWith this patch title is *nil* is handled and the validation accepts only the empty string *\"\"*",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd98f4e263d306bc455ca750c31443f",
      "login": "acapilleri",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd98f4e263d306bc455ca750c31443f?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acapilleri",
      "id": 46208
    },
    "closed_at": "2012-08-01T12:33:46Z",
    "created_at": "2012-08-01T12:09:49Z",
    "comments": 5,
    "title": "validates_length with minimum 0 and allow_nil: false accept nil",
    "html_url": "https://github.com/rails/rails/issues/7222",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7222",
      "patch_url": "https://github.com/rails/rails/pull/7222.patch",
      "diff_url": "https://github.com/rails/rails/pull/7222.diff"
    },
    "number": 7222,
    "updated_at": "2012-08-02T06:11:37Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7222",
    "id": 5966406
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "652cc4410d04b690807fc39449837664",
      "login": "jasonm23",
      "avatar_url": "https://secure.gravatar.com/avatar/652cc4410d04b690807fc39449837664?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jasonm23",
      "id": 71587
    },
    "closed_at": "2012-08-01T05:12:47Z",
    "created_at": "2012-08-01T04:19:14Z",
    "comments": 1,
    "title": "ActiveRecord error.add :base / ERROR NoMethodError: undefined method `bytesize' for :base:Symbol",
    "html_url": "https://github.com/rails/rails/issues/7220",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7220,
    "updated_at": "2012-08-01T12:06:20Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7220",
    "id": 5959548
  },
  {
    "body": "I am restoring documentation for env_config as discussed in issue #7070.\n\ncc @vijaydev @fxn",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "583c3d751af6c13d910b4fa8c6ef065d",
      "login": "jmazzi",
      "avatar_url": "https://secure.gravatar.com/avatar/583c3d751af6c13d910b4fa8c6ef065d?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jmazzi",
      "id": 2273
    },
    "closed_at": "2012-08-01T13:06:25Z",
    "created_at": "2012-08-01T02:28:44Z",
    "comments": 2,
    "title": "Restoring documentation for env_config",
    "html_url": "https://github.com/rails/rails/issues/7219",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7219",
      "patch_url": "https://github.com/rails/rails/pull/7219.patch",
      "diff_url": "https://github.com/rails/rails/pull/7219.diff"
    },
    "number": 7219,
    "updated_at": "2012-08-01T13:06:31Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7219",
    "id": 5958596
  },
  {
    "body": "A pull request was recently merged that allows the has_secure_password to bypass the included password validations. See: https://github.com/rails/rails/commit/0e1e527654f286452fa6f86f5d229f278435319a\n\nHowever, the same commit raises an explicit error if the password_digest is blank even if validations are disabled. I have altered this behavior to raise the error only if validations are enabled.\n\nAn example where the existing version is undesirable is if a user account model is created after an oauth sign in. In that case, a user may be created from Twitter/Facebook/Google/etc. credentials without ever creating a password. I believe this use case should work by default and not require catching an exception.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activemodel",
        "url": "https://api.github.com/repos/rails/rails/labels/activemodel",
        "color": "00E5FF"
      }
    ],
    "user": {
      "gravatar_id": "57d877dc036790f1c88a394628b598b2",
      "login": "freerobby",
      "avatar_url": "https://secure.gravatar.com/avatar/57d877dc036790f1c88a394628b598b2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/freerobby",
      "id": 115826
    },
    "closed_at": "2012-08-01T18:32:57Z",
    "created_at": "2012-07-31T20:22:16Z",
    "comments": 1,
    "title": "has_secure_password should not raise a 'digest missing' error if the calling class has specified for validations to be skipped.",
    "html_url": "https://github.com/rails/rails/issues/7217",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7217",
      "patch_url": "https://github.com/rails/rails/pull/7217.patch",
      "diff_url": "https://github.com/rails/rails/pull/7217.diff"
    },
    "number": 7217,
    "updated_at": "2012-08-01T18:33:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7217",
    "id": 5952829
  },
  {
    "body": "Hello,\n\nI've noticed today that the [html_escape](https://github.com/rails/rails/blob/master/activesupport/lib/active_support/core_ext/string/output_safety.rb) function does not encode single quote contrary to [OWASP recommendations](https://www.owasp.org/index.php/XSS_%28Cross_Site_Scripting%29_Prevention_Cheat_Sheet#RULE_.231_-_HTML_Escape_Before_Inserting_Untrusted_Data_into_HTML_Element_Content).\n\nIt raised some security problems in my web application and thus I think it would be better to escape single quote by default.  Have I missed something ?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "f8b1fffa46bf8cdc52ca692598c2c863",
      "login": "Nbblrr",
      "avatar_url": "https://secure.gravatar.com/avatar/f8b1fffa46bf8cdc52ca692598c2c863?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/Nbblrr",
      "id": 737741
    },
    "closed_at": "2012-07-31T19:56:04Z",
    "created_at": "2012-07-31T19:47:45Z",
    "comments": 2,
    "title": "html_escape does not escape single quote",
    "html_url": "https://github.com/rails/rails/issues/7215",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7215,
    "updated_at": "2012-07-31T21:47:53Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7215",
    "id": 5952071
  },
  {
    "body": "This was changed to use 1.9 String#encode method, however under the initial commit (https://github.com/rails/rails/commit/63cd9432265a32d222353b535d60333c2a6a5125#activesupport/lib/active_support/core_ext/string/output_safety.rb) there was a performance test done (https://gist.github.com/50ec9ab8ae1e223f3b75) by @seanwalbran and I have verified that the results for myself (including our team and server boxes) are consistent with him (results here: https://gist.github.com/3218839).\n\nThis issue was found on a project upgrade from 3.0.12 to 3.2.6 making our site 100x slower rendering views. After profiling and such we patched back this method and have got our performance.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "c4aaee371503ba4eb27788dc6744503c",
      "login": "cbarton",
      "avatar_url": "https://secure.gravatar.com/avatar/c4aaee371503ba4eb27788dc6744503c?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/cbarton",
      "id": 396486
    },
    "closed_at": "2012-08-01T01:41:11Z",
    "created_at": "2012-07-31T18:19:32Z",
    "comments": 3,
    "title": "Revert to gsub from encode for faster html escaping",
    "html_url": "https://github.com/rails/rails/issues/7214",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7214",
      "patch_url": "https://github.com/rails/rails/pull/7214.patch",
      "diff_url": "https://github.com/rails/rails/pull/7214.diff"
    },
    "number": 7214,
    "updated_at": "2012-08-01T01:41:11Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7214",
    "id": 5950102
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e44d4c2f385f19db99813306456f5bee",
      "login": "accessd",
      "avatar_url": "https://secure.gravatar.com/avatar/e44d4c2f385f19db99813306456f5bee?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/accessd",
      "id": 592430
    },
    "closed_at": "2012-07-31T13:41:50Z",
    "created_at": "2012-07-31T13:41:05Z",
    "comments": 3,
    "title": "small fix typo in collection proxy",
    "html_url": "https://github.com/rails/rails/issues/7212",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7212",
      "patch_url": "https://github.com/rails/rails/pull/7212.patch",
      "diff_url": "https://github.com/rails/rails/pull/7212.diff"
    },
    "number": 7212,
    "updated_at": "2012-07-31T14:12:51Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7212",
    "id": 5943373
  },
  {
    "body": "To keep my code DRY I tend to reuse my scopes from my associated models in that way :\n\n```ruby\nclass ArticleType < ActiveRecord::Base\n  scope :blogable, where(:blogable => true)\nend\n````\n\n```ruby\nclass Article < ActiveRecord::Base\n  belongs_to :article_type\n\n  scope :blogable, lambda { includes(:article_type).merge ArticleType.blogable        }\nend\n````\n\nI like to use *includes* in each and every scope like that for performance reasons, as the associated article_type is often needed in the views.\n\nAnyway, I then decided that the blogable scope needed to be more specific, leading to a bit more complex condition :\n\n```ruby\nclass ArticleType < ActiveRecord::Base\n  scope :blogable, where('NOT blogable AND title != ?', 'NotBlog')\nend\n````\n\nAnd then ... Errr (same with MySQL) :\n\n````\nSQLite3::SQLException: no such column: blogable: SELECT \"articles\".* FROM \"articles\"  WHERE (NOT blogable)\n````\n\nI tweaked things bit a realized that this scope works when using *joins* and not *includes* in the Article class.\n\nSo to me it appears there is a bug when using includes while merging a scope with custom SQL condition.\n\nHere is a sample app showing the issue : https://github.com/jerefrer/cross_model_scope_bug\n\nWhat do you think ?",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "164578b8d21de6e92453bbbfa17260ba",
      "login": "jerefrer",
      "avatar_url": "https://secure.gravatar.com/avatar/164578b8d21de6e92453bbbfa17260ba?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/jerefrer",
      "id": 140954
    },
    "closed_at": "2012-07-31T12:28:36Z",
    "created_at": "2012-07-31T11:09:39Z",
    "comments": 2,
    "title": "Issue with includes and merging associated model scope",
    "html_url": "https://github.com/rails/rails/issues/7211",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7211,
    "updated_at": "2012-07-31T12:35:13Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7211",
    "id": 5940782
  },
  {
    "body": "After yet another rebase I feel like we can solve the problem by split changelog into individual files and concatenate them programmatically.\n\nThis PR is just a concept showing a sample how it could be done for activerecord.\n\n```\nactiverecord/changelog\n└── Rails 4.0.0 (unreleased)\n    ├── 2012-07-24-deprecate-update-column.md\n    └── 2012-07-27-model-all.md\n└── Rails 4.1.0 (unreleased)\n    └── 2012-07-27-super-great-feature.md\n```\n\n\n\nIf everyone agree that it is a good idea I can expand this feature to every Rails library.\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "91913f6ab8085bab0f2aa43995ba8ca2",
      "login": "bogdan",
      "avatar_url": "https://secure.gravatar.com/avatar/91913f6ab8085bab0f2aa43995ba8ca2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/bogdan",
      "id": 122436
    },
    "closed_at": "2012-09-03T13:24:34Z",
    "created_at": "2012-07-31T08:12:33Z",
    "comments": 8,
    "title": "New rails changelog mechanism sample",
    "html_url": "https://github.com/rails/rails/issues/7210",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7210",
      "patch_url": "https://github.com/rails/rails/pull/7210.patch",
      "diff_url": "https://github.com/rails/rails/pull/7210.diff"
    },
    "number": 7210,
    "updated_at": "2012-09-03T13:24:34Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7210",
    "id": 5937806
  },
  {
    "body": "Hi, I am very new to Ruby on Rails and I recently installed it onto my Windows 7 OS. I was trying to go through a tutorial when I got an issue when I input \n\nrails g controller welcome index\n\nand it says it could not find a Javascript runtime with a bunch of other errors. I have tried to look online for everything, but it seems as if everything requires Ubuntu or a Linux machine. For example, I have tried doing\n\ngem install execjs \n\nbut after it installs, I'm not sure what to do. I ran the command rails g controller welcome index again but it didn't work.\n\nI've also tried installing gem install 'therubyracer' but I get an error saying: Failed to build gem native extention. \n\nThe sudo command also does not work. Can anyone help me fix this? Thanks",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "2fa3f222196d7bf53f2c3b6380bf8259",
      "login": "schan93",
      "avatar_url": "https://secure.gravatar.com/avatar/2fa3f222196d7bf53f2c3b6380bf8259?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/schan93",
      "id": 1704125
    },
    "closed_at": "2012-07-31T12:07:59Z",
    "created_at": "2012-07-31T04:23:56Z",
    "comments": 3,
    "title": "'Could not find a Javascript runtime.'",
    "html_url": "https://github.com/rails/rails/issues/7209",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7209,
    "updated_at": "2012-07-31T12:07:59Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7209",
    "id": 5935408
  },
  {
    "body": "I have an ActiveRecord with an attribute called \"message\".  It works fine till 3.2.6.\n\nWith 3.2.7, I see this error:\n\n    private method `message' called for #<OutgoingMessageRecipient:0x105cf1da8>\n\nLooks like one of its ascendants has added this attribute.\n\nThese are the ancestors:\n\n```\n2197982780: DEBUG [2012-07-31T07:50:20.646365 ] AdminController ***** Ancestors is [OutgoingMessageRecipient(id: integer, recipient: string, created_at: datetime, number_retries: integer, request_arrived_at_gateway_at: datetime, request_submitted_to_carrier_at: datetime, delivery_status: string, gateway_message_id: string, send_at: datetime, actual_send_at: datetime, status: integer, outgoing_message_id: integer, error_codes: string, status_codes: string, force_send: boolean), OutgoingMessageRecipient::GeneratedFeatureMethods, #<Module:0x10434f058>, ActiveRecord::Base, ActiveRecord::Aggregations, ActiveRecord::Transactions, ActiveRecord::Reflection, ActiveRecord::Serialization, ActiveModel::Serializers::Xml, ActiveModel::Serializers::JSON, ActiveModel::Serialization, ActiveRecord::Store, ActiveRecord::AutosaveAssociation, ActiveRecord::NestedAttributes, ActiveModel::SecurePassword, ActiveRecord::IdentityMap, ActiveRecord::Associations, ActiveModel::Validations::Callbacks, ActiveRecord::Callbacks, ActiveModel::Observing, ActiveRecord::Timestamp, ActiveRecord::AttributeMethods::DeprecatedUnderscoreRead, ActiveRecord::AttributeMethods::Serialization, ActiveRecord::AttributeMethods::Dirty, ActiveModel::Dirty, ActiveRecord::AttributeMethods::TimeZoneConversion, ActiveRecord::AttributeMethods::PrimaryKey, ActiveRecord::AttributeMethods::Query, ActiveRecord::AttributeMethods::BeforeTypeCast, #<Module:0x104557418>, ActiveRecord::AttributeMethods::Write, ActiveRecord::AttributeMethods::Read, ActiveRecord::AttributeMethods, ActiveModel::AttributeMethods, ActiveRecord::Locking::Optimistic, ActiveRecord::Locking::Pessimistic, ActiveRecord::Validations, ActiveModel::Validations::HelperMethods, ActiveModel::Validations, ActiveSupport::Callbacks, ActiveRecord::Integration, ActiveModel::Conversion, ActiveRecord::AttributeAssignment, ActiveModel::MassAssignmentSecurity, ActiveRecord::Sanitization, ActiveRecord::Scoping::Named, ActiveRecord::Scoping::Default, ActiveRecord::Scoping, ActiveRecord::Inheritance, ActiveRecord::ModelSchema, ActiveRecord::ReadonlyAttributes, ActiveRecord::Persistence, Object, ActiveMessaging::MessageSender, Ferret::Analysis, REXML, Ferret, Loggable, ActiveSupport::Dependencies::Loadable, RSpec::Core::SharedExampleGroup, Rake::DeprecatedObjectDSL, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Base64::Deprecated, Base64, Kernel]\n```\n\nAnd yes, one of them is adding a private method called \"message\":\n\n```\n2197982780: DEBUG [2012-07-31T07:50:20.648017 ] AdminController ***** private methods is [\"Array\", \"BigDecimal\", \"Complex\", \"DelegateClass\", \"Digest\", \"DomainName\", \"FCSV\", \"FasterCSV\", \"Float\", \"Hpricot\", \"Integer\", \"JSON\", \"Nokogiri\", \"Pathname\", \"Rational\", \"String\", \"URI\", \"__method__\", \"_merge_attributes\", \"_run_commit_callbacks\", \"_run_create_callbacks\", \"_run_destroy_callbacks\", \"_run_find_callbacks\", \"_run_initialize_callbacks\", \"_run_rollback_callbacks\", \"_run_save_callbacks\", \"_run_touch_callbacks\", \"_run_update_callbacks\", \"_run_validate_callbacks\", \"_run_validation_callbacks\", \"abort\", \"all_timestamp_attributes\", \"all_timestamp_attributes_in_model\", \"append_library\", \"arg_config\", \"assign_multiparameter_attributes\", \"assign_nested_attributes_for_collection_association\", \"assign_nested_attributes_for_one_to_one_association\", \"assign_to_or_mark_for_destruction\", \"associated_records_to_validate_or_save\", \"association_instance_get\", \"association_instance_set\", \"association_valid?\", \"at_exit\", \"attribute\", \"attribute=\", \"attribute?\", \"attribute_before_type_cast\", \"attribute_change\", \"attribute_changed?\", \"attribute_was\", \"attribute_will_change!\", \"autoload\", \"autoload?\", \"before_save_collection_association\", \"binding\", \"block_given?\", \"call_reject_if\", \"callcc\", \"caller\", \"catch\", \"cc_command\", \"changes_from_nil_to_empty_string?\", \"changes_from_zero_to_string?\", \"check_sizeof\", \"checking_for\", \"checking_message\", \"chomp\", \"chomp!\", \"chop\", \"chop!\", \"clear_timestamp_attributes\", \"clone_with_time_zone_conversion_attribute?\", \"config_string\", \"configuration\", \"convert_number_column_value\", \"cpp_command\", \"cpp_include\", \"create\", \"create_header\", \"create_makefile\", \"create_or_update\", \"create_tmpsrc\", \"current_time_from_proper_timezone\", \"destroy_associations\", \"dir_config\", \"dir_re\", \"dummy_makefile\", \"egrep_cpp\", \"enable_config\", \"ensure_proper_type\", \"eval\", \"exec\", \"execute_callstack_for_multiparameter_attributes\", \"exit\", \"exit!\", \"extract_callstack_for_multiparameter_attributes\", \"extract_max_param_for_multiparameter_attributes\", \"fail\", \"field_changed?\", \"find_executable\", \"find_executable0\", \"find_header\", \"find_library\", \"find_parameter_position\", \"find_type\", \"fork\", \"format\", \"gem_original_require\", \"getc\", \"gets\", \"global_variables\", \"gsub\", \"gsub!\", \"halted_callback_hook\", \"has_destroy_flag?\", \"have_const\", \"have_func\", \"have_header\", \"have_library\", \"have_macro\", \"have_struct_member\", \"have_type\", \"have_var\", \"increment_lock\", \"init_mkmf\", \"initialize\", \"initialize_copy\", \"install_dirs\", \"install_files\", \"install_rb\", \"instantiate_time_object\", \"iterator?\", \"j\", \"jj\", \"key?\", \"key_taken?\", \"lambda\", \"libpathflag\", \"link_command\", \"local_variables\", \"log_src\", \"loop\", \"macro_defined?\", \"map_dir\", \"match_attribute_method?\", \"merge_libs\", \"message\", \"missing_attribute\", \"mkintpath\", \"mkmf_failed\", \"modified?\", \"nested_records_changed_for_autosave?\", \"not_implemented\", \"notify_observers\", \"open\", \"p\", \"pkg_config\", \"pp\", \"print\", \"printf\", \"proc\", \"putc\", \"puts\", \"quote_value\", \"raise\", \"raise_key_taken\", \"raise_name_error\", \"raise_nested_attributes_record_not_found\", \"rand\", \"read_date_parameter_value\", \"read_other_parameter_value\", \"read_time_parameter_value\", \"read_value_from_parameter\", \"readline\", \"readlines\", \"reject_new_record?\", \"remove_instance_variable\", \"require_rspec\", \"reset_attribute!\", \"rm_f\", \"rubygems_require\", \"save_belongs_to_association\", \"save_collection_association\", \"save_has_one_association\", \"scalar_ptr_type?\", \"scalar_type?\", \"scan\", \"select\", \"serializable_add_includes\", \"set_trace_func\", \"should_record_timestamps?\", \"singleton_method_added\", \"singleton_method_removed\", \"singleton_method_undefined\", \"sleep\", \"split\", \"sprintf\", \"srand\", \"sub\", \"sub!\", \"syscall\", \"system\", \"test\", \"throw\", \"timeout\", \"timestamp_attributes_for_create\", \"timestamp_attributes_for_create_in_model\", \"timestamp_attributes_for_update\", \"timestamp_attributes_for_update_in_model\", \"to_ary\", \"trace_var\", \"trap\", \"try_compile\", \"try_const\", \"try_constant\", \"try_cpp\", \"try_do\", \"try_func\", \"try_link\", \"try_link0\", \"try_run\", \"try_static_assert\", \"try_type\", \"try_var\", \"type_cast_attribute_value\", \"unassignable_keys\", \"untrace_var\", \"update\", \"validate_collection_association\", \"validate_single_association\", \"what_type?\", \"winsep\", \"with_cflags\", \"with_config\", \"with_cppflags\", \"with_destdir\", \"with_ldflags\", \"write_attribute\", \"xpopen\", \"xsystem\", \"y\"]\n```\n\nI will try to track down the commit as well.",
    "milestone": null,
    "assignee": null,
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
      "gravatar_id": "e0f7b3c0fdd85c1f0a68f10b26980c52",
      "login": "obelix74",
      "avatar_url": "https://secure.gravatar.com/avatar/e0f7b3c0fdd85c1f0a68f10b26980c52?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/obelix74",
      "id": 458859
    },
    "closed_at": "2012-08-01T02:33:38Z",
    "created_at": "2012-07-31T03:18:00Z",
    "comments": 18,
    "title": "Rails 3.2.7, existing ActiveRecord with an attribute called \"message\" fails",
    "html_url": "https://github.com/rails/rails/issues/7208",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7208,
    "updated_at": "2012-08-01T04:18:27Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7208",
    "id": 5934843
  },
  {
    "body": "Has there been any discussion or development to parallelize the compilation of asset pipeline assets? All assets get built serially, and this seems like an obvious candidate for parallelization. What are the major complexities here? Has this been attempted already? Thanks.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "e4f80e42794094c98a40bfebef4ec292",
      "login": "ajsharp",
      "avatar_url": "https://secure.gravatar.com/avatar/e4f80e42794094c98a40bfebef4ec292?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/ajsharp",
      "id": 12774
    },
    "closed_at": "2012-07-31T01:50:41Z",
    "created_at": "2012-07-31T01:09:41Z",
    "comments": 2,
    "title": "Asset compilation parallelization",
    "html_url": "https://github.com/rails/rails/issues/7206",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7206,
    "updated_at": "2012-07-31T02:21:56Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7206",
    "id": 5933632
  },
  {
    "body": "Fix http://edgeapi.rubyonrails.org/classes/ActionController/Live/Response/Header.html",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-07-30T23:50:55Z",
    "created_at": "2012-07-30T23:35:06Z",
    "comments": 1,
    "title": "fix nodoc in metal/live",
    "html_url": "https://github.com/rails/rails/issues/7205",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7205",
      "patch_url": "https://github.com/rails/rails/pull/7205.patch",
      "diff_url": "https://github.com/rails/rails/pull/7205.diff"
    },
    "number": 7205,
    "updated_at": "2012-07-30T23:51:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7205",
    "id": 5932497
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionpack",
        "url": "https://api.github.com/repos/rails/rails/labels/actionpack",
        "color": "FFF700"
      }
    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-08-01T01:40:10Z",
    "created_at": "2012-07-30T22:08:53Z",
    "comments": 5,
    "title": "Follow code conventions in metal/live",
    "html_url": "https://github.com/rails/rails/issues/7204",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7204",
      "patch_url": "https://github.com/rails/rails/pull/7204.patch",
      "diff_url": "https://github.com/rails/rails/pull/7204.diff"
    },
    "number": 7204,
    "updated_at": "2012-08-01T02:34:01Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7204",
    "id": 5931020
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "0cd9079e8f5b64c6e9b6a3ad2ade0a5e",
      "login": "frodsan",
      "avatar_url": "https://secure.gravatar.com/avatar/0cd9079e8f5b64c6e9b6a3ad2ade0a5e?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/frodsan",
      "id": 840464
    },
    "closed_at": "2012-07-30T21:58:06Z",
    "created_at": "2012-07-30T21:57:30Z",
    "comments": 0,
    "title": "fix typo in metal/live [ci skip]",
    "html_url": "https://github.com/rails/rails/issues/7203",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7203",
      "patch_url": "https://github.com/rails/rails/pull/7203.patch",
      "diff_url": "https://github.com/rails/rails/pull/7203.diff"
    },
    "number": 7203,
    "updated_at": "2012-07-30T21:58:06Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7203",
    "id": 5930764
  },
  {
    "body": "It was found that there were some good use cases where it was prudent to ````prevent_deliveries```` even if ````prevent_deliveries```` was globally set to true for e.g. you wish to not send emails to users who are unsubscribed or users who are blocked or unconfirmed. \n\nThere are other use cases as well, such as spam detection within the body should prevent delivery.\n\nThis currently requires a common pattern which goes something like this\n\n````ruby\nSomeMailer.someemail(user).deliver if user.sendable?\n````\nWith this change it can be written alternatively as \n\n````ruby\ndef somemail(user)\n  mail :to => user.email, :subject => ... , :perform_deliveries => user.sendable?\nend\nSomeMailer.somemail(user).deliver # expect no delivery if user was unsendable\n````\n\nThis allows for conditional deliveries based on user's own logic.\n\nThe way I've implemented this, ensures that if ````perform_deliveries```` is switched_off globally, then it cant be switched on by the mail message instance.\n\nAfter checking further it was found that ````perform_deliveries```` could be overridden in interceptors but at that stage you do not always have access to the underlying models used for decisions.\n\n/cc @schneems / @josevalim / @mikel",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "actionmailer",
        "url": "https://api.github.com/repos/rails/rails/labels/actionmailer",
        "color": "8B00FC"
      }
    ],
    "user": {
      "gravatar_id": "f4ba063457702c78a7fce6a3529aedb0",
      "login": "asanghi",
      "avatar_url": "https://secure.gravatar.com/avatar/f4ba063457702c78a7fce6a3529aedb0?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/asanghi",
      "id": 762
    },
    "closed_at": "2012-08-04T11:15:07Z",
    "created_at": "2012-07-30T18:39:13Z",
    "comments": 10,
    "title": "Allow perform_deliveries to be set within mailer action",
    "html_url": "https://github.com/rails/rails/issues/7202",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7202",
      "patch_url": "https://github.com/rails/rails/pull/7202.patch",
      "diff_url": "https://github.com/rails/rails/pull/7202.diff"
    },
    "number": 7202,
    "updated_at": "2012-08-17T08:08:05Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7202",
    "id": 5925362
  },
  {
    "body": "fix wrong method name 'update_columns' on 'update_column'",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "960dfd1d957f4f82e9072543ffd0f6fb",
      "login": "gururuby",
      "avatar_url": "https://secure.gravatar.com/avatar/960dfd1d957f4f82e9072543ffd0f6fb?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/gururuby",
      "id": 853829
    },
    "closed_at": "2012-07-30T12:09:23Z",
    "created_at": "2012-07-30T11:57:00Z",
    "comments": 0,
    "title": "3.2 stable fixed CHANGELOG",
    "html_url": "https://github.com/rails/rails/issues/7201",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7201",
      "patch_url": "https://github.com/rails/rails/pull/7201.patch",
      "diff_url": "https://github.com/rails/rails/pull/7201.diff"
    },
    "number": 7201,
    "updated_at": "2012-07-30T12:09:23Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7201",
    "id": 5915982
  },
  {
    "body": "postgresql_adapter.rb ignores NULLS while creating distincts and lets search fail:\n\nActiveRecord::StatementInvalid (PG::Error: ERROR:  syntax error at or near \"FIRST\"\nLINE 1: ...LECT  DISTINCT \"permissions\".id, groups.nameNULLS FIRST AS a...\n                                                             ^\n: SELECT  DISTINCT \"permissions\".id, groups.nameNULLS FIRST AS alias_0, vendors.nameNULLS FIRST AS alias_1, products.nameNULLS FIRST AS alias_2, media.nameNULLS FIRST AS alias_3 FROM \"permissions\" LEFT OUTER JOIN \"groups\" ON \"groups\".\"id\" = \"permissions\".\"group_id\" LEFT OUTER JOIN \"products\" ON \"products\".\"id\" = \"permissions\".\"product_id\" LEFT OUTER JOIN \"vendors\" ON \"vendors\".\"id\" = \"permissions\".\"vendor_id\" LEFT OUTER JOIN \"media\" ON \"media\".\"id\" = \"permissions\".\"medium_id\" LEFT OUTER JOIN \"media_systems\" ON \"media_systems\".\"medium_id\" = \"media\".\"id\" LEFT OUTER JOIN \"systems\" ON \"systems\".\"id\" = \"media_systems\".\"system_id\" LEFT OUTER JOIN \"languages_media\" ON \"languages_media\".\"medium_id\" = \"media\".\"id\" LEFT OUTER JOIN \"languages\" ON \"languages\".\"id\" = \"languages_media\".\"language_id\" ORDER BY groups.name asc NULLS FIRST, vendors.name asc NULLS FIRST, products.name asc NULLS FIRST, media.name asc NULLS FIRST LIMIT 25 OFFSET 0):\n\n\nsolution: change line 1111 in activerecord-3.2.7/lib/active_record/connection_adapters/postgresql_adapter.rb\nfrom:  order_columns = orders.collect { |s| s.gsub(/\\s+(ASC|DESC)\\s*/i, '') }\nto: order_columns = orders.collect { |s| s.gsub(/\\s+(ASC|DESC)\\s*(NULLS\\s+(FIRST|LAST)\\s*)?/i, '') }",
    "milestone": null,
    "assignee": null,
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
      "gravatar_id": "1df393852f37c35c69fbe2da7e0de287",
      "login": "matrol26",
      "avatar_url": "https://secure.gravatar.com/avatar/1df393852f37c35c69fbe2da7e0de287?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/matrol26",
      "id": 1469661
    },
    "closed_at": "2012-08-02T14:53:50Z",
    "created_at": "2012-07-30T08:21:23Z",
    "comments": 5,
    "title": "postgresql_adapter.rb ignores NULLS while creating distincts in 3.2.7",
    "html_url": "https://github.com/rails/rails/issues/7200",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7200,
    "updated_at": "2012-08-02T14:53:50Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7200",
    "id": 5912608
  },
  {
    "body": "404 for the `Learn more` link under each code block.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "docs",
        "url": "https://api.github.com/repos/rails/rails/labels/docs",
        "color": "02d7e1"
      }
    ],
    "user": {
      "gravatar_id": "c7b8c0b4ef05e68e2c92cd912eca414b",
      "login": "linjunpop",
      "avatar_url": "https://secure.gravatar.com/avatar/c7b8c0b4ef05e68e2c92cd912eca414b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/linjunpop",
      "id": 214616
    },
    "closed_at": "2012-08-15T15:15:26Z",
    "created_at": "2012-07-30T07:18:57Z",
    "comments": 4,
    "title": "Document: Wrong `Learn more` link in ActionPack's README",
    "html_url": "https://github.com/rails/rails/issues/7199",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7199,
    "updated_at": "2012-08-15T15:15:26Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7199",
    "id": 5911835
  },
  {
    "body": "Just changed it a little to be more readable.",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "78d112452f1c6e30dfb7103d968cc439",
      "login": "cfcosta",
      "avatar_url": "https://secure.gravatar.com/avatar/78d112452f1c6e30dfb7103d968cc439?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/cfcosta",
      "id": 14752
    },
    "closed_at": "2012-07-30T05:48:21Z",
    "created_at": "2012-07-30T05:47:15Z",
    "comments": 0,
    "title": "Refactor ActionDispatch::Http::Cache::Response#cache_control_headers",
    "html_url": "https://github.com/rails/rails/issues/7198",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7198",
      "patch_url": "https://github.com/rails/rails/pull/7198.patch",
      "diff_url": "https://github.com/rails/rails/pull/7198.diff"
    },
    "number": 7198,
    "updated_at": "2012-07-30T05:48:21Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7198",
    "id": 5911089
  },
  {
    "body": "The Inflector is currently not very supportive of internationalized\nwebsites. If a user wants to singularize and/or pluralize words based on\nany locale other than English, they must define each case in locale\nfiles. Rather than create large locale files with mappings between\nsingular and plural words, why not allow the Inflector to accept a\nlocale?\n\nThis patch makes ActiveSupport::Inflector locale aware and uses the\napplication's `I18n.default_locale` unless otherwise specified. Users\nwill still be provided a list of English (:en) inflections, but they may\nadditionally define inflection rules for other locales. Each list is\nkept separately and permanently. There is no reason to limit users to\none list of inflections:\n\n```ruby\nActiveSupport::Inflector.inflections(:es) do |inflect|\n  inflect.plural(/$/, 's')\n  inflect.plural(/([^aeéiou])$/i, '\\1es')\n  inflect.plural(/([aeiou]s)$/i, '\\1')\n  inflect.plural(/z$/i, 'ces')\n  inflect.plural(/á([sn])$/i, 'a\\1es')\n  inflect.plural(/é([sn])$/i, 'e\\1es')\n  inflect.plural(/í([sn])$/i, 'i\\1es')\n  inflect.plural(/ó([sn])$/i, 'o\\1es')\n  inflect.plural(/ú([sn])$/i, 'u\\1es')\n\n  inflect.singular(/s$/, '')\n  inflect.singular(/es$/, '')\n\n  inflect.irregular('el', 'los')\nend\n\n'ley'.pluralize(:es)   # => \"leyes\"\n'ley'.pluralize(:en)   # => \"leys\"\n'avión'.pluralize(:es) # => \"aviones\"\n'avión'.pluralize(:en) # => \"avións\"\n```\n\nA multilingual Inflector should be of use to anybody that is tasked with\ninternationalizing their Rails application.\n\nSigned-off-by: David Celis <david@davidcelis.com>",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "9b0144a16ba125a94460c5d45f07efb9",
      "login": "davidcelis",
      "avatar_url": "https://secure.gravatar.com/avatar/9b0144a16ba125a94460c5d45f07efb9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/davidcelis",
      "id": 36873
    },
    "closed_at": "2012-07-31T12:46:25Z",
    "created_at": "2012-07-30T04:04:01Z",
    "comments": 10,
    "title": "Make ActiveSupport::Inflector locale aware and multilingual",
    "html_url": "https://github.com/rails/rails/issues/7197",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7197",
      "patch_url": "https://github.com/rails/rails/pull/7197.patch",
      "diff_url": "https://github.com/rails/rails/pull/7197.diff"
    },
    "number": 7197,
    "updated_at": "2012-07-31T12:46:25Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7197",
    "id": 5910410
  },
  {
    "body": "`require mysql` used here for the 6 **hard** mysql-spesifics tests only (see [MysqlDBCreateAsRootTest](https://github.com/rimidl/rails/pull/new/fix-incorrect-require-mysql-in-mysql_rake_test#L0R46)). But we don't should run it for the sqlite or postgresql database contexts. And of course we don't should `require mysql`, when we run tests only for sqlite (`ARCONN=sqlite3 ruby -Itest .../mysql_rake_test.rb`), for example.\n\n\\+ if we follow the guides [Set up and Run the Tests](http://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html#set-up-and-run-the-tests) ,\nwe naturally catch error bellow:\n\n```\nrails/ $ rm .bundle/config\nrails/ $ bundle install --without db\nrails/ $ cd activerecord\nactiverecord/ $ ARCONN=mysql ruby -Itest test/cases/tasks/mysql_rake_test.rb\n...\n(mysql is not part of the bundle. Add it to Gemfile.) (LoadError)\n...\n```\n\nThis pull-request fix this error.\n\n_Note:_ `MysqlDBCreateAsRootTest` don't pass with mysql2 adapter, only with mysql.",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "2e27cd545ce610495006fbbc54c3f1a2",
      "login": "rimidl",
      "avatar_url": "https://secure.gravatar.com/avatar/2e27cd545ce610495006fbbc54c3f1a2?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/rimidl",
      "id": 421183
    },
    "closed_at": "2012-07-29T18:15:14Z",
    "created_at": "2012-07-29T17:35:08Z",
    "comments": 0,
    "title": "Fix incorrect usage `require mysql` in the activerecord/.../mysql_rake_test",
    "html_url": "https://github.com/rails/rails/issues/7196",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7196",
      "patch_url": "https://github.com/rails/rails/pull/7196.patch",
      "diff_url": "https://github.com/rails/rails/pull/7196.diff"
    },
    "number": 7196,
    "updated_at": "2012-07-29T18:15:14Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7196",
    "id": 5906552
  },
  {
    "body": "```ruby\nclass Category < ActiveRecord::Base\n  has_and_belongs_to_many :works\nend\n\nclass Work < ActiveRecord::Base\n  has_and_belongs_to_many :categories\nend\n\nw=Work.new\nw.association(:category_id)\n=> NoMethodError: undefined method `association_class' for nil:NilClass\n```\n\nShould the method not just give nil if there is no such association?\n\n",
    "milestone": null,
    "assignee": null,
    "labels": [
      {
        "name": "activerecord",
        "url": "https://api.github.com/repos/rails/rails/labels/activerecord",
        "color": "0b02e1"
      }
    ],
    "user": {
      "gravatar_id": "3dfc4136712f120023f092004f062cc4",
      "login": "acesuares",
      "avatar_url": "https://secure.gravatar.com/avatar/3dfc4136712f120023f092004f062cc4?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/acesuares",
      "id": 2784
    },
    "closed_at": "2012-07-29T17:42:08Z",
    "created_at": "2012-07-29T17:34:30Z",
    "comments": 9,
    "title": "#assiciation(:name) gives NoMethodError: undefined method `association_class' for nil:NilClass",
    "html_url": "https://github.com/rails/rails/issues/7195",
    "state": "closed",
    "pull_request": {
      "html_url": null,
      "patch_url": null,
      "diff_url": null
    },
    "number": 7195,
    "updated_at": "2012-07-30T01:48:11Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7195",
    "id": 5906551
  },
  {
    "body": "",
    "milestone": null,
    "assignee": null,
    "labels": [

    ],
    "user": {
      "gravatar_id": "641db8edc1a8f38ee0d2e5b221d40bb9",
      "login": "alexandrz",
      "avatar_url": "https://secure.gravatar.com/avatar/641db8edc1a8f38ee0d2e5b221d40bb9?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
      "url": "https://api.github.com/users/alexandrz",
      "id": 81225
    },
    "closed_at": "2012-07-29T17:23:02Z",
    "created_at": "2012-07-29T16:45:30Z",
    "comments": 1,
    "title": "DRY class_attribute",
    "html_url": "https://github.com/rails/rails/issues/7194",
    "state": "closed",
    "pull_request": {
      "html_url": "https://github.com/rails/rails/pull/7194",
      "patch_url": "https://github.com/rails/rails/pull/7194.patch",
      "diff_url": "https://github.com/rails/rails/pull/7194.diff"
    },
    "number": 7194,
    "updated_at": "2012-07-29T17:24:58Z",
    "url": "https://api.github.com/repos/rails/rails/issues/7194",
    "id": 5906292
  }
]
}
