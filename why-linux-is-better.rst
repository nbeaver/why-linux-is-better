.. -*- coding: utf-8 -*-

====================================================
Objective reasons for preferring Linux to Windows NT
====================================================

It is easy to opine about one's preferred operating system,
but harder to give specific, objective examples.

With the caveat that both Windows NT and Linux are moving targets,
here are some practical reasons to prefer Linux.
They are by no means exhaustive,
but aim to be representative.

++++++++++++++++++
Technical reasons.
++++++++++++++++++

-------
LiveCDs
-------

Live versions of Linux are full operating systems,
able to mount and repartition disks,
connect to the internet and run a web browser,
and even (for persistent LiveUSBs) retain settings and data on the next boot-up.
Some live Linux distributions, such as Puppy Linux,
are lightweight enough to default to creating a RAM disk,
which generally runs faster than the OS installed on the disk.

Windows LiveCDs, while `they`_ `do`_ `exist`_,
are hampered by licensing and often lack the features of a live Linux distribution.

.. _they: http://en.wikipedia.org/wiki/BartPE
.. _do: http://en.wikipedia.org/wiki/Windows_Preinstallation_Environment
.. _exist: http://en.wikipedia.org/wiki/Windows_To_Go

---------------------
Maximum path lengths.
---------------------

Windows path lengths are limited to 260 characters, including filename [#]_.
This is not a flaw in NTFS or Windows NT per se, but in the non-Unicode version of the Windows API.
This problem can be avoided by using Unicode versions of the API calls,
but many applications (e.g. Windows Explorer, Powershell) have not done so. [#]_ [#]_ [#]_ [#]_ [#]_ [#]_ [#]_

.. [#] http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx#maxpath
.. [#] http://msdn.microsoft.com/en-us/library/ee681827%28VS.85%29.aspx#limits
.. [#] http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx
.. [#] http://stackoverflow.com/questions/265769/maximum-filename-length-in-ntfs-windows-xp-and-windows-vista
.. [#] http://stackoverflow.com/questions/1065993/has-windows-7-fixed-the-255-character-file-path-limit
.. [#] http://www.codinghorror.com/blog/2006/11/filesystem-paths-how-long-is-too-long.html
.. [#] http://blogs.msdn.com/b/bclteam/archive/2007/02/13/long-paths-in-net-part-1-of-3-kim-hamilton.aspx
.. [#] http://stackoverflow.com/questions/1880321/why-does-the-260-character-path-length-limit-exist-in-windows

Does this cause real problems in real software? `Yes`_.

.. _Yes: https://github.com/joyent/node/issues/6960

----------------------
NTFS case-sensitivity.
----------------------

NTFS on Windows `cannot be case-sensitive`_ because the Windows API for filenames `is not case-sensitive`_ for legacy reasons. 
However, it is `case-preserving`_.
This means that you can mount an NTFS partition with Linux and make a file called "Myfile.txt" in the same directory as "MYFILE.TXT".
However, you won't be able to access both those files using Windows NT.

.. _cannot be case-sensitive: http://www.sevenforums.com/general-discussion/278918-making-windows-7-case-sensitive-possible.html
.. _is not case-sensitive: http://support.microsoft.com/kb/100625
.. _case-preserving: http://en.wikipedia.org/wiki/Case_preservation

------------------------------
Limited choice in filesystems.
------------------------------

Windows NT has no built-in support for any filesystems but NTFS and the `patent-encumbered`_ FAT16/FAT32/exFAT family.
Linux can mount any file system that can be legally mounted without paying patent fees,
and the ones it uses by default (``ext2``/``ext3``/``ext4``) are corruption-resistant and do not require defragmentation.

.. _patent-encumbered: http://arstechnica.com/information-technology/2009/02/microsoft-sues-tomtom-over-fat-patents-in-linux-based-device/

-----------------
UTF-16, not UTF-8
-----------------

UTF-16 is generally considered to be an inferior text encoding compared to UTF-8.
If the Windows NT API were designed today, it would most likely use UTF-8.
Some reasons:

- UTF-8 is a superset of ASCII, so it is backwards-compatible with existing text files.
- UTF-8 does not require a byte-order mark and is less likely to be mistaken for other encodings.

----------------------------------------------------
File extensions are the sole determiner of filetype.
----------------------------------------------------

On Linux, filetypes are determined by a combination of filesystem metadata, heuristics, and file extension.
On Windows NT, the file extension is the sole determiner of filetype.
If the file extensions for different filetypes happen to collide,
one program must take default precedence over the other.

++++++++++++++++++++++
Architectural reasons.
++++++++++++++++++++++

----------------------------------
Ease of bug reporting and logging.
----------------------------------

On Windows, you can (usually) use Ctrl-C when an error window pops up to copy the error message.
On Linux, you can attach the debugger ``gdb`` to a running process,
start a logfile that catches all the output,
and run a backtrace when the program fails (it's better with debugging symbols, though).
If the process is already unresponsive, you can attach ``strace`` and see what system calls it makes,
and whether it receives the kill signals you send it or not.
There are `similar`_ `programs`_ `for`_ Windows,
but they don't come installed by default,
whereas both ``strace`` and ``gdb`` come with a standard Linux install,
so you can rely on being able to use them on almost any Linux box.

.. _similar: http://www.intellectualheaven.com/default.asp?BH=projects&H=strace.htm
.. _programs: http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx
.. _for: http://msdn.microsoft.com/en-us/library/windows/hardware/ff551063(v=vs.85).aspx

--------------
Locking files.
--------------

Windows applications lock files they use by default, so misbehaving applications can be a serious unintentional nuisance.

https://en.wikipedia.org/wiki/File_locking#In_Microsoft_Windows

By contrast, on Linux it is not unusual for two applications to share read access to a file,
since applications share file access by default.

----------------------------------------
Separation of window manager and kernel.
----------------------------------------

The Windows NT window manager/desktop and kernel are very tightly coupled.

Also, by design, multiple concurrent sessions are `impossible`_ on all but the server version of Windows NT.
(This is a licensing issue, not a technical limitation.
Third-party remote desktop software for Windows is `legally`_ `obligated`_ to not circumvent this limitation.)

.. _impossible: http://blogs.msdn.com/b/rds/archive/2009/08/21/remote-desktop-connection-7-for-windows-7-windows-xp-windows-vista.aspx
.. _legally: http://aplawrence.com/Reviews/tightvnc.html
.. _obligated: https://www.nomachine.com/forums/topic/concurrent-session-limit-for-nx-4-free-version

In Linux, the X server and kernel are separate,
so the window manager can be restarted if necessary without a reboot.
Should it be necessary to restart the kernel,
one can do so cleanly without the aid of the X-server using the "Magic Alt-SysRq keys".

Multiple instances of the X server are possible,
so that two different users may work remotely at the same time on the same machine.
A single user may also run two different desktop environment at the same time,
or not use the X-server at all, but just a command-line TTY.

There are a plethora of window managers to choose from on Linux,
making it highly customizable to the system's resources and the user's wishes.

The X server has become so pervasive that versions of it power not only Linux but also OS X (XQuartz),
and there are ways to run an X server on Windows or Android.

+++++++++++++++++++++++++++++++++++++
Configuration and software packaging.
+++++++++++++++++++++++++++++++++++++

----------------
Default software
----------------

Linux distributions have many powerful tools installed by default.
A C compiler (usually ``gcc``),
build system (``make``),
and several shells (e.g. ``bash``, ``dash``, ``csh``, ``zsh``)
In fact, they are required to do so by the `POSIX standard`_.

.. _POSIX standard: http://pubs.opengroup.org/onlinepubs/009696699/utilities/contents.html

On Windows NT, by contrast, a C compiler and build system are not installed by default,
and PowerShell must be installed separately.

------------------------
Registries and dotfiles.
------------------------

On Windows, configuration files are not centralized in the user's home directory.
Most of the things that users care about --
not losing configuration between installs --
are scattered around in various directories or in the binary-only registry.

On Linux, system level configuration is stored in ``/etc/``,
and user level configuration is stored in dotfiles (hidden folders or text files) in the user's home directory.
Want to back up your configuration or migrate it to a different Linux? Just copy over your dotfiles.
Want to save only some of your configuration? Just copy over the dotfiles your care about.

---------------------------------------------------------------
Package manager with signed binaries and easy backup/reinstall.
---------------------------------------------------------------

There are many Linux packaging systems,
including Fedora's rpm-based ``yum`` package manager,
Debian's ``apt`` and ``dpkg``,
Arch Linux's ``pacman``,
and so on.
This is the real reason Linux users are protected from viruses:
they use packages that are signed by the maintainers,
not an untrusted ``.exe`` from a website without secure HTTP.

This is has other tangible benefits such as avoiding DLL hell,
saving disk space due to duplication of libraries,
verifying that there are no backdoors in the code,
and upgrading all software at once with a single command.

Want to back up which programs you have installed without backing up every single binary?
Just save the output of `dpkg -L` or its equivalent.
If your disk crashes and your backup fails,
at least you can get back your packages with the package list and a good internet connection.

It also makes distributing programs with library dependencies easier.
For example, installing python and matplotlib is simple on Linux,
but a pain in the neck on Windows NT.
People have been `working on fixing this`_, but so far the repositories are not comprehensive.

.. _working on fixing this: http://chocolatey.org/


------------------------------------------------------------
Fixing configuration problems with commands instead of GUIs.
------------------------------------------------------------

GUIs are good for some applications,
but they are clumsy and error-prone for rapidly fixing configuration problems.
Many Linux config problems can be fixed by editing a line in a text file or running a few commands in a terminal.
Windows configuration generally requires navigating deeply nested GUIs and ticking various checkboxes.
This has equivalent security problems as blindly running commands in a terminal,
but is much less efficient.

In addition, using GUIs for configuration makes user support and documentation significantly more time-consuming.
Text is easier to store, transmit, and search for than screenshots or notations like Tools -> Options -> General Options -> ...

The emphasis on textuality also makes diagnosing problems easier.
For example, want to see which displays you're connected to? Run ``xrandr``.
Want to see what USB devices are connected? Run ``lsusb``.
Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.

Another benefit of textuality is ease of using search engines to find similar problems.

Finally, software configuration can be kept or removed easily.
For example, when uninstalling a software package on Debian Linux,
the user may either also remove the configuration (with ``apt-get purge``)
or leave the configuration in place when the application is installed again (with ``apt-get remove``).

++++++++++++++++++
Cultural problems.
++++++++++++++++++

----------
Debugging.
----------

By requiring frequent reboots,
Windows NT encourages resetting software when encountering a problem,
rather than diagnosing and reporting bugs.

--------
Malware.
--------

In theory, Linux and Windows are equally susceptible to malware.
In practice, Windows users often inadvertently install malware (cf. importance of software packaging, above).
This is has two repercussions:

#. Users must spend considerable time and effort detecting and removing malware.
#. Users may falsely attribute software misbehavior to malware.

Number 2 is particularly problematic.
Computer running slowly? Viruses.
Applications crashing? Viruses.
Random reboots? Viruses.
