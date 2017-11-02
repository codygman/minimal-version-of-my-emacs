install with:

```
git clone git@github.com:codygman/minimal-version-of-my-emacs.git /tmp/minimal-version-of-my-emacs/
```

Run with:

```
cd /tmp/minimal-version-of-my-emacs/ && emacs -Q --load /tmp/minimal-version-of-my-emacs/dot-emacs.el
```

Current issues:

[] "No snippets tables active!". Reproduce by opening test.org, `M-x yas-visit-snippet-file`, get error "No snippets tables active!"

Ideas:
[] Go to end of results after tabbing out of source block
