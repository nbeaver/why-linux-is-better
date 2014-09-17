.. -*- coding: utf-8 -*-

===================================================
Rational reasons for preferring Linux to Windows NT
===================================================

There are plenty of opinions about why Linux is a better operating system than Windows NT,
but precious few clear examples.
With the caveat that both Windows and Linux are moving target,
here are some practical reasons to prefer Linux.

++++++++++++++++++
Technical reasons.
++++++++++++++++++

---------------------
Maximum path lengths.
---------------------

Windows path lengths are limited to 260 characters, including filename[#]_.
This is not a flaw in NTFS, but in the Windows OS itself.[#]_ [#]_ [#]_ [#]_ [#]_ 

.. [#] http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx#maxpath
.. [#] http://msdn.microsoft.com/en-us/library/ee681827%28VS.85%29.aspx#limits
.. [#] http://stackoverflow.com/questions/265769/maximum-filename-length-in-ntfs-windows-xp-and-windows-vista
.. [#] http://stackoverflow.com/questions/1065993/has-windows-7-fixed-the-255-character-file-path-limit
.. [#] http://www.codinghorror.com/blog/2006/11/filesystem-paths-how-long-is-too-long.html
.. [#] http://blogs.msdn.com/b/bclteam/archive/2007/02/13/long-paths-in-net-part-1-of-3-kim-hamilton.aspx

Does this cause real problems in real software? `Yes`_.

.. _Yes: https://github.com/joyent/node/issues/6960

----------------------
NTFS case-sensitivity.
----------------------

NTFS on Windows cannot be case sensitive because Windows is not case sensitive[#]_ [#]_, though it is case-preserving.[#]_

.. [#] http://support.microsoft.com/kb/100625
.. [#] http://www.sevenforums.com/general-discussion/278918-making-windows-7-case-sensitive-possible.html
.. [#] http://en.wikipedia.org/wiki/Case_preservation

------------------------------
Limited choice in filesystems.
------------------------------

Windows NT has no built-in support for any filesystems but NTFS and FAT16/FAT32/exFAT.
Linux can mount any file system that can be legally mounted without paying patent fees,
and the ones it uses by default (ext2/ext3/ext4) are corruption-resistant and do not require defragmentation.

-----------------
UTF-16, not UTF-8
-----------------

UTF-16 is generally considered to be an inferior text encoding compared to UTF-8.
If the Windows NT API were designed today, it would most likely use UTF-8.
Some reasons:

- UTF-8 is a superset of ASCII, so it is backwards-compatible with existing text files.
- UTF-8 does not require a byte-order mark and is less likely to be mistaken for other encodings.

++++++++++++++++++++++
Architectural reasons.
++++++++++++++++++++++

----------------------------------
Ease of bug reporting and logging.
----------------------------------

On Windows, you can (ususally) use Ctrl-C when an error window pops up to copy the error message.
On Linux, you can attach gdb to a running process,
start a logfile that catches all output to stderr,
and run a backtrace when the program fails.
Or you can attach strace and see what system calls it makes,
and whether it receives the kill signals you send it or not.
There are similar programs for Windows,
but both strace and gdb come with a standard Linux install,
so you can rely on being able to use them on any Linux box you use.

--------------
Locking files.
--------------

Windows applications lock files they use by default, so misbehaving applications can be a serious unintentional nuisance.

https://en.wikipedia.org/wiki/File_locking#In_Microsoft_Windows

By contrast, on Linux it is not unusual to read from a file with two different programs at once.

----------------------------------------
Separation of window manager and kernel.
----------------------------------------

The Windows NT window manager/desktop and kernel are very tightly coupled.
Also, by design, multiple concurrent sessions are impossible on all but Windows server OS.
This is a licensing issue, not a technical limitation.

http://aplawrence.com/Reviews/tightvnc.html
http://blogs.msdn.com/b/rds/archive/2009/08/21/remote-desktop-connection-7-for-windows-7-windows-xp-windows-vista.aspx
https://www.nomachine.com/forums/topic/concurrent-session-limit-for-nx-4-free-version

In Linux, the X server and kernel are separate,
so the window manager can be restarted if necessary without a reboot.
Should it be necessary to restart the kernel,
one can do so cleanly without the aid of the X-server using the "Magic Alt-SysRq keys".

Multiple instances of the X server are possible,
so that two different users may work remotely at the same time on the same machine.
A single user may also run two different desktop environment at the same time,
or not use the X-server at all, but just a command-line TTY.

There are a plethora of window managers to choose from on Linux,
making it highly customizable to the sytem's resources and the user's wishes.

The X server has become so pervasive that versions of it power not only Linux but also OS X and Android,
and there are many options for running an X server on Windows.

+++++++++++++++++++++++++++++++++++++
Configuration and software packaging.
+++++++++++++++++++++++++++++++++++++

------------------------
Registries and dotfiles.
------------------------

On Windows, configuration files are not centralized in the user's home directory.
Most of the things that users care about --
not losing configuration between installs --
are scattered around in various directories or in the binary-only registry.

On Linux, system level configuration is stored in ``/etc/`` and user level configuration is stored in dotfiles (hidden folders or text files) in the user's home directory.
Want to back up your configuration or migrate it to a different Linux? Just copy over your dotfiles.
Want to save only some of your configuration? Just copy over the dotfiles your care about.

---------------------------------------------------------------
Package manager with signed binaries and easy backup/reinstall.
---------------------------------------------------------------

There are many Linux packaging systems,
including Fedora's rpm-based yum package manager,
Debian's apt and dpkg,
Arch Linux's pacman,
and so on.
This is the real reason Linux users are protected from viruses:
they use packages that are signed by the maintainers,
not any old .exe they download from a website.

This is has other tangible benefits such as avoiding DLL hell,
avoiding lost disk space due to duplication of libraries,
verifying that there are no backdoors in the code,
and upgrading all software at once with a single command.

Want to back up which programs you have installed without backing up every single binary?
Just save the output of `dpkg -L` or its equivalent.
If your disk crashes and your backup fails,
at least you can get back your packages with the package list and a good internet connection.

It also makes distributing programs with library dependencies much easier.
For example, installing python and matplotlib is simple on Linux,
but a pain in the neck on windows.
People have been `working on fixing this`_, but it's far from comprehensive.

.. _working on fixing this: http://chocolatey.org/

------------------------------------------------------------
Fixing configuration problems with commands instead of GUIs.
------------------------------------------------------------

GUIs are good for some applications,
but they are clumsy and error-prone for fixing configuration problems.
Many Linux config problems can be fixed by editing a line in a text file or running a few commands in a terminal.
Windows configuration generally requires navigating deeply nested GUIs and ticking various checkboxes.
This has the same security problems as blindly running commands in a terminal,
but is much less efficient.

For example, want to see which displays you're connected to? Run ``xrandr``.
Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.
