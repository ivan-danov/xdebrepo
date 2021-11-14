# XDebRepo

Custom signed debian repository organizer

## Create deb package
make deb

## Install deb package
apt install ./xdebrpo\_&lt;VERSION&gt;\_all.deb

## Use xdebrpo

**xdebrepo** init &lt;repo path&gt; &lt;conf path&gt;<br/>
Init xdebrpo. Create /etc/xdebrepo/xdebrepo.conf.

**xdebrepo** key gen &lt;gpg dir&gt; &lt;owner name&gt; &lt;owner email&gt;<br/>
Generate GnuPG key. &lt;gpg dir&gt; is relative to &lt;conf path&gt;.

**xdebrepo** key list &lt;gpg dir&gt;<br/>
List generated GnuPG key. &lt;gpg dir&gt; is relative to &lt;conf path&gt;.

**xdebrepo** repo create &lt;repodir&gt; &lt;gpg dir&gt; &lt;key&gt;<br/>
Create a new repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>
&lt;gpg dir&gt; is relative to &lt;conf path&gt;.<br/>
&lt;key&gt; is a GnuPG key id to sign repository.<br/>

**xdebrepo** repo repo destroy &lt;repodir&gt;<br/>
Destroy repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo** repo aptconf &lt;repodir&gt;"<br/>
Generate apt config file for repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo** repo pubkey &lt;repodir&gt;"<br/>
Show public key for repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo** repo add &lt;repodir&gt; &lt;distname&gt; &lt;deb file&gt;"<br/>
Add a deb file to repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo** repo del &lt;repodir&gt; &lt;distname&gt; &lt;package name&gt;"<br/>
Delete package from repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo** repo list &lt;repodir&gt; [distname]<br/>
List packages in repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>
