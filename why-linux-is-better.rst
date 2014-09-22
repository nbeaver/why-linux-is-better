.. -*- coding: utf-8 -*-

============================================
Objective reasons to prefer Linux to Windows
============================================

:Author: Nathaniel Beaver
:Date: September 20, 2014
:Copyright: This document is released under a `Creative Commons Attribution 4.0 International License`_.

.. _Creative Commons Attribution 4.0 International License: http://creativecommons.org/licenses/by/4.0/

.. contents::

++++++++++++
Introduction
++++++++++++

"Linux is more stable and reliable."

"Linux is more secure and private."

"Linux is faster and less bloated."

"Linux is more flexible and customizable."

"Linux gives you more control over your computer."

Stop it.

Clichés like these are vague and wishy-washy,
and they rely mainly on anecdotes and hearsay.
They cause `endless, unnecessary debates`_ and make a muddle of the facts.

.. _endless, unnecessary debates: http://linux.slashdot.org/

It's easy to opine about one's preferred operating system,
but harder to give objective, concrete examples.

With the caveat that both Windows and Linux are moving targets,
this document describes some specific technical reasons to prefer using Linux as a desktop operating system.

These reasons are not exhaustive
--- and not meant to be ---
but aim to be representative.

These will not touch on closed vs. open source development,
but will instead focus on functionality.
There is plenty of discussion of the advantages and disadvantages of open source elsewhere.
Besides, what is there to discuss when we now know that `even Microsoft loves open source`_?

.. _even Microsoft loves open source: http://www.networkworld.com/article/2216878/windows/microsoft---we-love-open-source-.html

(This discussion will only mention Microsoft and other companies in so far as their actions are directly relevant to the technically capabilities of Windows and Linux.
As an aside, Microsoft gets a lot of guff in the open-source world,
but their behavior is typical of almost any company that relies primarily on selling proprietary software and devices for revenue.
It's just economics, not malice.)

The discussion is intended to be accurate at the cost of possible dryness due to technical detail.

I am most familiar with the Debian-based family of Linux distributions,
so my remarks will necessarily touch on these more,
but I have tried to include other distributions when possible.

In this document, the term "Linux" is shorthand for the entire distribution,
including bootloader, kernel, shell, window manager, package manager, etc.

The term "Windows" refers to modern versions of Microsoft Windows NT,
including Windows XP, Windows Vista, Windows 7, and Windows 8.

Many of the same arguments in favor of Linux also apply to the BSD family of operating systems 
(and POSIX-compliant operating systems in general),
but unfortunately I am not familiar enough with any of them to comment specifically.

+++++++++++++++
Why write this?
+++++++++++++++

Most people use Windows on the desktop because it's the default.
Few are aware of the benefits of switching to another operating system,
and even fewer are willing to put in the effort to do so.

A curious Windows user who's interested in Linux will have difficulty finding good reasons via web searches,
since comparisons of operating systems are (almost) always vague, uninformed, or opinion-based.

For a variety of reasons,
people who do use Linux seldom advertise its benefits to their colleagues.
If they do, they may find it difficult to articulate exactly what the benefits are in a concrete and specific manner,
especially without putting down Windows users or Windows applications in general.

If you don't use Linux or Windows,
this document might still be of interest,
since it discusses issues which are relevant to all operating systems.

If you are a new Linux user,
this document is intended to inform you about some of the benefits of Linux you may not be aware of,
and to dig deeper if you are interested.

If you are an experienced Linux user,
this document is a test of the theory that the fastest way to get feedback is to be publically wrong about something people care about.
Corrections and additions are welcome.

If you are a Windows user:

- This document is not intended to convert you to Linux.
  (That would be silly.)
- This document does not claim that Windows is inferior in every way,
  or even that it is inferior overall.
- Instead, this is meant to provide insight into why some people choose to use Linux as a desktop operating system,
  despite its shortcomings,
  and possibly to challenge some misconceptions that people have about Linux and Windows.
- Corrections and additions are, of course, welcome.
  Windows developers are ones who know the most about its flaws and strengths.
- Finally, definitions of better and worse are necessarily subjective,
  despite the title's claim of objectivity.
  You may heartily disagree with substantial parts of what follows,
  but perhaps it may be useful to you, even so.

++++++++++++++++++++++++++++++++++
Technical deficiencies of Windows.
++++++++++++++++++++++++++++++++++

------------------------
Live booting is lacking.
------------------------

Windows LiveCDs, `though they do exist`_,
are hampered by licensing restrictions and technical limitations.

.. _though they do exist: http://en.wikipedia.org/wiki/Windows_Preinstallation_Environment

For example, `until Windows 8`_, desktop versions of Windows could not boot from a USB.
(And while running a live USB of Windows 8, it is still not possible mount internal hard disks.)

.. _until Windows 8: http://technet.microsoft.com/en-us/library/hh831833.aspx

The `BartPE LiveCD building program`_ is 3rd party software that will run on any version of Windows,
but it is `only able to make`_ a LiveCD for Windows XP or Windows Server 2003.

.. _BartPE LiveCD building program: http://en.wikipedia.org/wiki/BartPE
.. _only able to make: http://www.betaarchive.com/forum/viewtopic.php?t=22258 

There is also the `WinBuilder`_ project,
which is the closest to a fully-functional LiveCD of modern Windows versions,
but installing software and drivers is still `sometimes a challenge`_.

.. _WinBuilder: http://winbuilder.net/
.. _sometimes a challenge: http://www.irongeek.com/i.php?page=security/winbuilder-win7pe-se-tutorial

The absence of fully functional live versions of Windows makes it difficult to use for, e.g,
determining if a bug is due to hardware or software problems,
recovering data from a machine with filesystem corruption or bad disk sectors,
and testing out different versions of an OS without committing a partition of a hard disk to a permanent installation.

`Live versions`_ of Linux are full operating systems,
able to mount and repartition disks,
connect to the internet and run a web browser,
and (for `persistent live USB flash drives`_) retain settings and data on the next boot-up.

.. _Live versions: http://www.linux.com/directory/Distributions/livecd
.. _persistent live USB flash drives: http://askubuntu.com/questions/295701/what-would-be-the-differences-between-a-persistent-usb-live-session-and-a-instal

Some live Linux distributions, such as `Puppy Linux`_,
are lightweight enough that they default to `running from a RAM disk`_,
and consequently have much faster disk I/O than an OS that must access a spinning hard drive.
(This comes at the cost of disk space being limited by RAM.
There's no reason you can't mount an internal or external drive to store files, though.)

.. _Puppy Linux: http://puppylinux.org/
.. _running from a RAM disk: https://en.wikipedia.org/wiki/List_of_Linux_distributions_that_run_from_RAM

Very little hardware comes a `desktop version of Linux pre-installed`_,
so live versions of Linux tend to work very well,
since that is the most common method of installing it.

.. _desktop version of Linux pre-installed: https://help.ubuntu.com/community/UbuntuPre-installed

---------------------
Maximum path lengths.
---------------------

Windows path lengths `are limited to 260 characters`_, including filename.
(In practice, it is often more like `199 characters`_.)
This is `not a flaw in NTFS`_ or Windows per se, but in the `non-Unicode version of the Windows API`_.

.. _are limited to 260 characters: http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx#maxpath
.. _not a flaw in NTFS: http://msdn.microsoft.com/en-us/library/ee681827%28VS.85%29.aspx#limits
.. _non-Unicode version of the Windows API: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx#maxpath
.. _199 characters: http://stackoverflow.com/a/265817
.. _have not done so: http://blogs.msdn.com/b/bclteam/archive/2007/02/13/long-paths-in-net-part-1-of-3-kim-hamilton.aspx

This problem can be avoided by using Unicode versions of the API calls,
but many applications (e.g. `Windows Explorer`_, `.NET`_ and `consequently Powershell`_) have not done so.

.. _Windows Explorer: https://www.gibixonline.com/post/2009/08/23/Explorer-still-limited-by-MAX_PATH
.. _.NET: http://blogs.msdn.com/b/bclteam/archive/2007/02/13/long-paths-in-net-part-1-of-3-kim-hamilton.aspx
.. _consequently Powershell: https://connect.microsoft.com/PowerShell/feedback/details/276235/path-length-limitations

Of course, most OS restrictions are `not an issue in well-written software`_.
Maybe Windows paths `are long enough`_.
Is ``MAX_PATH`` an actual problem in real software?

.. _not an issue in well-written software: http://blogs.msdn.com/b/oldnewthing/archive/2007/03/01/1775759.aspx
.. _are long enough: http://blog.codinghorror.com/filesystem-paths-how-long-is-too-long/

Judging by the number of bug reports and complaints, the answer appears to be yes.

#. https://github.com/joyent/node/issues/6960
#. https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61922
#. http://llvm.org/bugs/show_bug.cgi?id=20440
#. https://bugs.eclipse.org/bugs/show_bug.cgi?id=164186
#. http://bugs.python.org/issue19636
#. https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=14228
#. http://social.msdn.microsoft.com/forums/vstudio/en-US/e4a8ee8d-b25d-4b47-8c0c-88329bbece7d/please-increase-maxpath-to-32767
#. http://stackoverflow.com/questions/1880321/why-does-the-260-character-path-length-limit-exist-in-windows
#. http://stackoverflow.com/questions/1065993/has-windows-7-fixed-the-255-character-file-path-limit
#. http://stackoverflow.com/questions/833291/is-there-an-equivalent-to-winapis-max-path-under-linux-unix
#. http://stackoverflow.com/questions/1858907/svn-command-line-utility-will-not-work-if-full-file-name-is-longer-then-256-char
#. https://www.itefix.net/content/rsync-file-name-too-long-91
#. http://sqlite.1065341.n5.nabble.com/Path-Length-Limit-on-Windows-td70642.html
#. http://sumedha.blogspot.com/2011/01/svn-checkout-fails-windows-max-path.html
#. http://forums.mozillazine.org/viewtopic.php?f=29&t=263489

But the bigger issue is that many Windows developers are `so used to`_ `working around`_ the problem
that it has become deeply entrenched and may `never be fixed`_.

.. _so used to: http://blogs.msdn.com/b/tomholl/archive/2007/02/04/enterprise-library-and-the-curse-of-max-path.aspx
.. _working around: http://stackoverflow.com/a/11212007
.. _never be fixed: http://visualstudio.uservoice.com/forums/121579-visual-studio/suggestions/2156195-fix-260-character-file-name-length-limitation

The Linux kernel does have an adjustable pathname length limit;
it's `4096 chars in typical kernels and filesystems`_.
You can check it by running::

    $ getconf PATH_MAX /
    
However, `this limit is not enforced`_ by any filesystems that Linux runs on,
and consequently some ``libc`` implementations were for a while `susceptible to buffer overflow`_ when trying to resolve canonical file paths.

.. _4096 chars in typical kernels and filesystems: http://unix.stackexchange.com/questions/28997/on-deep-created-directories
.. _this limit is not enforced: http://insanecoding.blogspot.com/2007/11/pathmax-simply-isnt.html
.. _susceptible to buffer overflow: http://stackoverflow.com/questions/1171833/how-to-get-the-absolute-path-of-a-file-programmatically-with-out-realpath-unde

The 2008 POSIX revision has `addressed the issue`_,
but prior to this the Linux kernel had to make non-standard modifications to avoid overflow,
and `warned about the problem`_ in the ``realpath (3)`` man page of the Linux Programmer's Manual.

.. _addressed the issue: https://www.securecoding.cert.org/confluence/display/seccode/FIO02-C.+Canonicalize+path+names+originating+from+tainted+sources
.. _warned about the problem: http://linux.die.net/man/3/realpath

This illustrates that while the Linux kernel developers scrupulously avoid breaking external compatibility,
they also intentionally expose false assumptions,
since false assumptions tend to cause hard-to-fix bugs.
This is why Linus Torvalds `chose an unusually high`_ timer interrupt frequency for Linux:

    I chose 1000 originally partly as a way to make sure that people that
    assumed HZ was 100 would get a swift kick in the pants. That meant making
    a _big_ change, not a small subtle one. For example, people tend to react
    if "uptime" suddenly says the machine has been up for a hundred days (even
    if it's really only been up for ten), but if it is off by just a factor of
    two, it might be overlooked.

    -- Linus Torvalds

.. _chose an unusually high: https://lkml.org/lkml/2005/7/8/263

--------------------------
Filename case-sensitivity.
--------------------------

Linux uses case-sensitive filenames because ASCII, Unix, and the C programming language are case-sensitive.

Windows filenames are not case-sensitive because the `Windows API for opening files`_ `is not case-sensitive`_,
i.e. the default call to ``CreateFile`` does not enable the ``FILE_FLAG_POSIX_SEMANTICS`` option.
(This is to maintain `compatibility with MS-DOS`_ filesystems and ultimately to the era of FORTRAN and punch cards.)
However, Windows' own NTFS filesystem is `case-preserving`_.
This means that it is possible to mount an NTFS partition with Linux and make a file called "Myfile.txt" in the same directory as "MYFILE.TXT",
but it will `not possible to read or modify both those files`_ using standard Windows software.

.. _Windows API for opening files: http://msdn.microsoft.com/en-us/library/windows/desktop/aa363858(v=vs.85).aspx
.. _is not case-sensitive: http://support.microsoft.com/kb/100625
.. _compatibility with MS-DOS: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx
.. _case-preserving: http://en.wikipedia.org/wiki/Case_preservation
.. _not possible to read or modify both those files: http://technet.microsoft.com/en-us/library/cc976809.aspx

`Not everyone`_ considers filename case insensitivity to be a bad thing.
However, it does have `negative`_ `ramifications`_ for cross-platform development.
Developers of cross-platform software `make a habit`_ of not relying on case-sensitive filesystem access,
but this issue still `crops up when porting`_ from Windows to Linux or vice-versa.

.. _Not everyone: http://xahlee.info/UnixResource_dir/_/fileCaseSens.html
.. _negative: https://code.google.com/p/tortoisesvn/issues/detail?id=32
.. _ramifications: http://openfoamwiki.net/index.php/Main_FAQ#Why_isn.27t_there_a_Windows_port_of_OpenFOAM_.3F
.. _make a habit: http://www.mono-project.com/docs/getting-started/application-portability/#case-sensitivity
.. _crops up when porting: http://adrienb.fr/blog/wp-content/uploads/2013/04/PortingSourceToLinux.pdf

------------------------------
Limited choice in filesystems.
------------------------------

Windows has built-in support for its own NTFS filesystem,
UDF (used for some CDs and DVDs),
and the legacy FAT16/FAT32/exFAT family.
All other filesystems require installation of `third-party software`_.

Linux has drivers for `almost all file systems`_ that can be legally mounted without paying royalties,
including ones that don't see much use nowadays, like `Amiga file systems`_.
It can also mount FAT and NTFS filesystems,
despite Microsoft's lucrative patent licensing deals and `ongoing`_ `litigation`_
against Android manufacturers and `other companies`_ for their use of the Linux kernel's FAT drivers.

.. _third-party software: http://www.ext2fsd.com/
.. _almost all file systems: https://wiki.archlinux.org/index.php/file_systems
.. _Amiga file systems: http://www.tldp.org/FAQ/Linux-FAQ/partitions.html#can-linux-access-amiga-file-systems
.. _ongoing: http://www.forbes.com/sites/timworstall/2013/12/06/german-patent-ruling-threatens-microsofts-windows-phone-earnings-from-android/
.. _litigation: http://gizmodo.com/the-secret-android-patents-that-microsoft-forces-oems-t-1591338496
.. _other companies: http://arstechnica.com/information-technology/2009/02/microsoft-sues-tomtom-over-fat-patents-in-linux-based-device/

For the system partition,
Linux users can choose among the usual ext3 journaling filesystem
or
up-and-coming filesystems like Btrfs.
Unlike FAT and NTFS filesystems, ext3 and Btrfs `do not require defragmentation`_.
Realistically, though, `defragmentation isn't that important for NTFS`_, either.

.. _NTFS and FAT: http://technet.microsoft.com/en-us/magazine/2007.11.desktopfiles.aspx
.. _do not require defragmentation: http://www.tldp.org/LDP/sag/html/filesystems.html#FRAGMENTATION
.. _defragmentation isn't that important for NTFS: http://blogs.msdn.com/b/e7/archive/2009/01/25/disk-defragmentation-background-and-engineering-the-windows-7-improvements.aspx

------------------
UTF-16, not UTF-8.
------------------

If the Windows API were designed today, it would most likely use `UTF-8`_.
The Unicode Consortium primarily `recommends UTF-16`_ for compatibility with Java and the Windows API.
Some `practical reasons for preferring UTF-8`_:

- It is a superset of ASCII, so it is backwards-compatible with existing text files.
- It is `self-synchronizing`_.
- It does not require a `byte-order mark`_ and is less likely to be mistaken for other encodings.
- Internet Explorer has been known to have `security issues with UTF-16`_.

.. _UTF-8: http://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt
.. _recommends UTF-16: http://www.unicode.org/faq/programming.html#2
.. _practical reasons for preferring UTF-8: https://annevankesteren.nl/2009/09/utf-8-reasons
.. _self-synchronizing: http://en.wikipedia.org/wiki/UTF-8#Description
.. _byte-order mark: http://www.unicode.org/faq/utf_bom.html
.. _security issues with UTF-16: http://permalink.gmane.org/gmane.ietf.charsets/372

----------------------------------------------------
File extensions are the sole determiner of filetype.
----------------------------------------------------

On Windows, the file extension is the sole determiner of what happens when opening a file.
This makes it easier to dupe a Windows user into `unintentionally running malware`_.

.. _unintentionally running malware: http://windows.microsoft.com/en-us/windows-vista/recognizing-dangerous-file-types

Also, if the file extensions for different filetypes happen to collide,
as they inevitably do
--- recall that filenames are not case-sensitive ---
one program must take default precedence over the other for that file extension.

For example, there a lot of different file formats with a ``.dat`` file extension,
but only one application gets to open them by default.

On Linux, filetypes are determined by a combination of
filesystem metadata,
heuristics based on file signatures (a.k.a "magic numbers"),
and sometimes file extension.

.. TODO: add links about how Linux decides file formats.

A file's executable status is separate from its file extension,
and an executable text file written in a scripting language can indicate how to run it using the `first-line shebang convention`_,
e.g. ``#!/usr/bin/env python3 -i``.

Windows does not support shebang lines,
but languages that emphasize cross-platform compatibility,
such as Python,
have `implemented work-arounds`_.

.. _first-line shebang convention: http://en.wikipedia.org/wiki/Shebang_(Unix)
.. _implemented work-arounds: http://legacy.python.org/dev/peps/pep-0397/
.. _cannot indicate it is version 2 or 3: http://stackoverflow.com/questions/7574453/shebang-notation-python-scripts-on-windows-and-linux

--------------------------------
Read-only permissions semantics.
--------------------------------

Read-only files on Windows `can be moved, renamed, or deleted`_.
`Folders cannot have a read-only status`_.

.. _can be moved, renamed, or deleted: http://windows.microsoft.com/en-us/windows7/prevent-changes-to-a-file-by-setting-it-to-read-only
.. _Folders cannot have a read-only status: http://windows.microsoft.com/en-us/windows-vista/prevent-changes-to-a-file-or-folder-read-only

Linux, by contrast, inherits a sophisticated permissions model from Unix,
which was designed as a multi-user system.
This means that, for example, a read-only folder cannot have files added to it,
and read-only files cannot be moved, renamed, or deleted without first removing the read-only status.

++++++++++++++++++++++++++++++++
Architectural benefits of Linux.
++++++++++++++++++++++++++++++++

-----------------------------
Debugging with default tools.
-----------------------------

On Windows, Ctrl-C will usually `copy an error message to the clipboard`_.
Alternately, you can try to run the command from a terminal and log the output.

.. TODO: Using the informal you here seems to be the only option.
   Everything else I can think of is too awkwardly phrased.

.. _copy an error message to the clipboard: http://weblogs.asp.net/chuckop/110153

On Linux, you can attach the ``gdb`` debugger `to a running process`_,
start a logfile that catches all the output,
and run a backtrace when the program fails (it's better with debugging symbols, though).

.. _to a running process: http://ftp.gnu.org/old-gnu/Manuals/gdb-5.1.1/html_node/gdb_22.html

Alternately, if the process is already unresponsive, you can attach ``strace`` and see what system calls it makes,
and whether it receives the kill signals you send it or not.

There are `programs`_ `similar`_ to ``gdb`` and ``strace`` `for Windows`_.
However, they don't come installed by default,
whereas both ``strace`` and ``gdb`` come with a standard Linux install,
so system administrators can rely on being able to use them on nearly any Linux box.

.. _similar: http://www.intellectualheaven.com/default.asp?BH=projects&H=strace.htm
.. _programs: http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx
.. _for Windows: http://msdn.microsoft.com/en-us/library/windows/hardware/ff551063(v=vs.85).aspx

-----------------------------
More permissive file locking.
-----------------------------

.. TODO: Add more sources to this.

Windows applications `lock files they use by default`_, so file access is a nuisance by default.
If an application is misbehaving and you want to examine a file it is using,
this is generally blocked until the application is killed.

.. _lock files they use by default: https://en.wikipedia.org/wiki/File_locking#In_Microsoft_Windows

By contrast,
on Linux it is not unusual for two different applications to share read access to a file,
or one process to read a file another process is writing to,
since applications can share file access by default.

----------------------------------------
Separation of window manager and kernel.
----------------------------------------

The Windows window manager and kernel are `very tightly coupled`_.
One consequence of this is that Microsoft tends to wait for major version changes to implement kernel changes that rely on user interface changes.
For example, Microsoft did not implement `User Account Control`_ until Windows Vista was released,
despite the well-known security problems intrinsic to `using an operating system as administrator`_ all the time.

.. _very tightly coupled: http://en.wikipedia.org/wiki/Window_manager#Microsoft_Windows
.. _User Account Control: http://en.wikipedia.org/wiki/User_Account_Control
.. _using an operating system as administrator: http://askubuntu.com/questions/16178/why-is-it-bad-to-login-as-root

`Windows remote desktop licensing`_ makes multi-user remote access and sharing of machine resources expensive.
By design, multiple concurrent sessions are disabled on all but the server version of Windows,
and `third-party remote desktop software is not permitted`_ to legally `circumvent this limitation`_. [#]_ [#]_ [#]_

.. _Windows remote desktop licensing: http://technet.microsoft.com/en-us/library/cc725933.aspx
.. _third-party remote desktop software is not permitted: http://superuser.com/questions/784523/tightvnc-while-an-rdp-session-is-running
.. _circumvent this limitation: http://lifehacker.com/5873717/enable-concurrent-remote-desktop-sessions-in-windows-with-this-patch
.. [#] "You would think that because Windows XP is multiuser, you could have multiple users running VNC servers. Indeed you can, but you can only use the one that has the currently active user - switch away, and that server goes black, and in my testing, can't even be used again. Windows XP is not really multiuser." http://aplawrence.com/Reviews/tightvnc.html
.. [#] "Windows, unless you're using Terminal Server (and have the licenses to go with it) doesn't have this capability, and I don't believe that even with Terminal Server, VNC will be able to take advantage of this." http://tightvnc.10971.n7.nabble.com/Multiple-Unique-Sessions-td2060.html
.. [#] "If you heard about/saw many active desktop sessions in non-server Windows - that was modified OS with swapped termsrv.dll. Licensing does not allow you to modify/swap system files and use non-server system that way and this is ILLEGAL." http://stackoverflow.com/questions/9410091/multi-user-login-remote-desktop-on-windows-linux

Note that this is a licensing issue,
not a technical limitation of Windows itself,
but it compromises the utility of the operating system.

The Linux kernel does not require a particular desktop environment,
or indeed any graphical desktop at all.
However, Linux desktop users generally run graphical user interfaces managed by the X server.

Because Linux is multi-user by design, `multiple local instances of the X server`_ are not unusual,
even with different desktop environments (e.g. GNOME and KDE can coexist on the same Linux box).
X sessions can be accessed remotely using e.g. `VNC`_ or `X over SSH`_.
It is common for two different users to work remotely at the same time on the same machine.

.. _multiple local instances of the X server: http://journalxtra.com/linux/desktop/multiple-desktops-on-one-linux-pc-now-thats-greedy/
.. _VNC: https://wiki.debian.org/VNCviewer
.. _X over SSH: https://www.debian.org/doc/manuals/debian-reference/ch07.en.html#_connecting_a_remote_x_client_via_ssh

A `multiseat`_ configuration is also possible if the hardware is available.
Even on single-user machines this capability of the X server is useful to e.g. run two different desktop environments at the same time.

.. _multiseat: https://wiki.archlinux.org/index.php/xorg_multiseat

Also, sometimes Linux users will forego the X server entirely and log in from a text-only `virtual terminal`_ (a.k.a ``tty``).
This is important to be able to do if the X server crashes or cannot start.

.. _virtual terminal: http://en.wikipedia.org/wiki/Virtual_console

Because the Linux kernel does not rely on the X server to function,
the X server can be restarted without rebooting.

If a crash is unrecoverable and it becomes necessary to reboot the kernel,
one can do so cleanly even if the X server is unresponsive by using the "`Magic Alt-SysRq keys`_",
key combinations which send instructions to the kernel.

.. _Magic Alt-SysRq keys: https://www.kernel.org/doc/Documentation/sysrq.txt

(Windows has Ctrl-Alt-Delete, but requires a responding display manager to allow the user to cleanly reboot.)

There is a plethora of `window managers`_ and `desktop environments`_ to choose from on Linux,
even for the same distribution,
making it highly customizable to the system's resources and the user's wishes.
However, they all use the same X Window System (a.k.a X11) provided by the X server.

.. _window managers: https://wiki.archlinux.org/index.php/Window_manager
.. _desktop environments: https://wiki.debian.org/DesktopEnvironment

The X11 system is by no means perfect;
in fact, many former X11 developers are hard at work on its replacement, `Wayland`_,
and Canonical (the company behind Ubuntu) is working on a separate but similar endeavor called `Mir`_.

.. _Wayland: http://wayland.freedesktop.org/architecture.html
.. _Mir: http://unity.ubuntu.com/mir/

However, X11 has become so pervasive that versions of it power not only Linux desktops but also the BSD family of operating systems and OS X (`XQuartz`_),
and it's also been `ported to Windows`_ `and Android`_,
even though they don't use it as a display manager.

.. _XQuartz: http://xquartz.macosforge.org/landing/
.. _ported to Windows: http://sourceforge.net/projects/xming/
.. _and Android: https://play.google.com/store/apps/details?id=net.sourceforge.x11basic

--------------------------
Some notes on performance.
--------------------------

So far, we have avoided the topic of performance almost entirely.

This is because measuring and improving performance is a hugely complex topic,
incorporating at the very least hardware-specific considerations and deep knowledge of every level of software.

It also incorporates psychology,
since people don't care if software has good performance if they `don't perceive it to have good performance`_.

.. _don't perceive it to have good performance: https://developers.google.com/speed/articles/usability-latency

As a result,
unqualified generalizations about the performance of software as complex as an operating system are nearly always wrong.
There are some things, however, that we do know about relative performance of the Windows and Linux kernels.

First, an `anonymous Windows kernel developer stated`_ in 2013 that he believes that Windows has fallen behind in performance because of how Microsoft functions as a corporation.
(This developer gave a SHA1 hash of part of the NT kernel as proof, which while not incontrovertible is certainly strong evidence he is who he claims to be.)

    Windows is indeed slower than other operating systems in many scenarios, and the gap is worsening. The cause of the problem is social. There's almost none of the improvement for its own sake, for the sake of glory, that you see in the Linux world.
    
    Granted, occasionally one sees naive people try to make things better. These people almost always fail. We can and do improve performance for specific scenarios that people with the ability to allocate resources believe impact business goals, but this work is Sisyphean. There's no formal or informal program of systemic performance improvement. We started caring about security because pre-SP3 Windows XP was an existential threat to the business. Our low performance is not an existential threat to the business.

    -- Anonymous Windows NT kernel developer
    
.. _anonymous Windows kernel developer stated: http://blog.zorinaq.com/?e=74


Contrast with Microsoft's `"Linux Myths" article`_ from 1999.

    Myth: Linux performs better than Windows NT 

    Reality: Windows NT 4.0 Outperforms Linux On Common Customer Workloads

    The Linux community claims to have improved performance and scalability in the latest versions of the Linux Kernel (2.2), however it's clear that Linux remains inferior to the Windows NT® 4.0 operating system.

.. _"Linux Myths" article: https://web.archive.org/web/20000303020855/http://www.microsoft.com/NTServer/nts/news/msnw/LinuxMyths.asp

A decade later, `Microsoft contributed device driver code`_ to the Linux kernel.

.. _Microsoft contributed device driver code: http://www.microsoft.com/en-us/news/features/2009/jul09/07-20linuxqa.aspx

Secondly, testing and optimizing on multiple platforms can yield unexpected performance benefits for both operating systems.
When Valve `ported Left 4 Dead 2 to Linux`_ in 2012,
they discovered that OpenGL on Windows and Linux achieved a higher framerate than Direct3D on Windows.

    After this work, Left 4 Dead 2 is running at 315 FPS on Linux. That the Linux version runs faster than the Windows version (270.6) seems a little counter-intuitive, given the greater amount of time we have spent on the Windows version. However, it does speak to the underlying efficiency of the kernel and OpenGL. Interestingly, in the process of working with hardware vendors we also sped up the OpenGL implementation on Windows. Left 4 Dead 2 is now running at 303.4 FPS with that configuration.

    -- Valve Linux Team

.. _ported Left 4 Dead 2 to Linux: http://blogs.valvesoftware.com/linux/faster-zombies/

.. TODO: should I talk more about this?

+++++++++++++++++++++++++++++++++++++
Configuration and software packaging.
+++++++++++++++++++++++++++++++++++++

-----------------
Default software.
-----------------

Linux distributions have many powerful development tools installed by default,
such as a C compiler (usually ``gcc``),
build automation (e.g. ``make``),
and many, many shells (e.g. ``bash``, ``dash``, ``csh``, ``zsh``, ``fish``).
In fact, they are required to provide these tools by the `POSIX standard`_.
Standards like POSIX make writing and using portable software easier,
and standard POSIX tools are unlikely to become obsolete.

.. _POSIX standard: http://pubs.opengroup.org/onlinepubs/009696699/utilities/contents.html

On Windows, by contrast, neither the `C compiler and build system`_
nor the currently favored Windows shell (`PowerShell`_) are installed by default.

.. _C compiler and build system: http://msdn.microsoft.com/en-us/vstudio/
.. _PowerShell: http://technet.microsoft.com/en-us/library/hh847837.aspx

------------------------
Registries and dotfiles.
------------------------

On Windows, configuration files are not centralized in the user's home directory.
Most of the things that users care about --
not losing configuration between installs --
are scattered around as ``.INI`` text files in various directories or in the `Windows Registry`_.
This makes configuration less robust and harder to adapt to the needs of specific users.

.. _Windows Registry: http://msdn.microsoft.com/en-us/library/ms970651.aspx

On Linux, most configuration can be done graphically within applications or configuration managers provided by the desktop environment.
A lot of it is handled by the `package manager`_.
However, there are a variety of possibilities depending on the needs of the people using it.

.. _package manager: `Package manager with signed binaries.`_

System administrators, for example, care about system-level configuration files, much of which that is in ``/etc/``.
These are generally text files, which are simple to edit for ad-hoc debugging and automation.
Text files are also very robust against corruption.

User level configuration is stored in dotfiles (hidden folders or files) in the user's home directory.
There are good arguments to the effect that making dotfiles responsible for configuration `is problematic`_.
Configuration files would make much more sense stored in a dedicated configuration folder in the user's home directory,
and indeed some applications are `beginning to standardize on this`_.
In the meantime, however, dotfiles do the job, even if they seem cluttered,
since each user's configuration is isolated to his or her home directory.

.. _is problematic: https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp
.. _beginning to standardize on this: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html

Centralized databases like the Windows Registry are usually unnecessary for configuration.
Applications for which text files are a bad choice,
e.g. ones which need to store huge amounts of data or must use atomic updates,
can use, for example, `an SQLite database`_ in the user's home directory.
The GNOME desktop provides `dconf`_, which is probably the closest thing to a Windows Registry that Linux has.

.. _dconf: https://wiki.gnome.org/Projects/dconf
.. _an SQLite database: http://kb.mozillazine.org/Places.sqlite

Moreover, using ordinary files instead of a database for application configuration has many benefits.
Since many configuration files on Linux are `textual`_,
they are easy to modify,
back up,
and ``diff`` and merge them,
which means users can share and benefit from others' customized configurations and accommodate upstream changes.

.. _textual: http://catb.org/~esr/writings/taoup/html/textualitychapter.html

It also means that migrating to a different Linux distribution is not as painful as starting from scratch,
since many applications keep the configuration formats relatively stable and merging in the customizations is usually straightforward.
During major Debian upgrades, for example, administrators can choose to adopt new configuration files,
keep the old ones, or diff and merge the files into a hybrid.

In short, configuration on Linux is better adapted to the needs of its users than on Windows.
Ordinary users have the package manager or applications themselves for managing configuration,
developers who like to keep their configuration under version control can use tools like `GNU Stow`_,
and system administrators can use any of many dedicated configuration management tools like Puppet, Chef, Ansible, SaltStack, etc.

.. _GNU Stow: http://www.gnu.org/software/stow/

-------------------------------------
Package manager with signed binaries.
-------------------------------------

Windows Installer is a software package manager in the sense of installing and uninstalling software,
but it does not provide the salient features of current major Linux packaging systems,
such as:

- securely retrieving the package from a trusted remote or local repository,
- adding and removing third-party repositories,
- changelogs,
- `optional fully automatic non-interactive installation`_,
- `cryptographic signing of packages`_,
- backporting security fixes to stable versions,
- licensing metadata,
- and `sophisticated dependency management`_.

.. _cryptographic signing of packages: http://purplefloyd.wordpress.com/2009/02/05/signing-deb-packages/
.. _sophisticated dependency management: https://www.debian.org/doc/debian-policy/ch-relationships.html
.. _optional fully automatic non-interactive installation: http://debian-handbook.info/browse/wheezy/sect.automatic-upgrades.html

Now, there is an open-source package manager for Windows, `Chocolatey`_,
that is under active development.
However, thus far the Chocolatey repository is not as comprehensive as Linux repositories.
Here are some examples of packages which are not in the Chocolatey repository (as of September 2014).

- `KeePassX`_ password manager `* <http://chocolatey.org/packages?q=keepassx>`__
- `Apophysis`_ fractal flame editor `* <http://chocolatey.org/packages?q=apophysis>`__
- `xyscan`_ data extractor `* <https://chocolatey.or/packages?q=xyscan>`__
- `HEPHAESTUS`_ periodic table for X-ray spectroscopy `* <https://chocolatey.org/packages?q=HEPHAESTUS>`__
- `EXPGUI`_ XRD analysis `* <https://chocolatey.org/packages?q=EXPGUI>`__
- `DiffPDF`_ PDF comparison `* <http://chocolatey.org/packages?q=DiffPDF>`__
- `Unison`_ file synchronizer `* <http://chocolatey.org/packages?q=Unison>`__
- `xchat`_ IRC client `* <http://chocolatey.org/packages?q=xchat>`__
- `OpenSCAD`_ solid 3D CAD modeller `* <http://chocolatey.org/packages?q=openscad>`__
- `Cura`_ 3D printer control `* <http://chocolatey.org/packages?q=Cura>`__

.. _Chocolatey: http://chocolatey.org/
.. _KeePassX: https://www.keepassx.org/
.. _Apophysis: http://www.apophysis.org/
.. _xyscan: http://star.physics.yale.edu/~ullrich/xyscanDistributionPage/
.. _HEPHAESTUS: http://cars9.uchicago.edu/~ravel/software/doc/Hephaestus/hephaestus.html
.. _EXPGUI: https://subversion.xor.aps.anl.gov/trac/EXPGUI
.. _DiffPDF: http://www.qtrac.eu/diffpdf.html
.. _Unison: http://www.cis.upenn.edu/~bcpierce/unison/
.. _xchat: http://xchat.org/download/
.. _OpenSCAD: http://www.openscad.org/index.html
.. _Cura: https://www.ultimaker.com/pages/our-software

(This list isn't particularly significant, it's just example open-source software that I use which has a Windows version.)

Also, the Chocolatey development team acknowledges it `does not currently have package moderation or package signing`_ in place yet,
which is significant for overcoming Window's issue with `installing software from untrusted sources`_.

.. _does not currently have package moderation or package signing: https://chocolatey.org/about
.. _installing software from untrusted sources: `Malware.`_

On the bright side, most of the language-specific package managers such as
Haskell's ``cabal``,
Perl's ``CPAN``,
.NET's NuGet,
Node.js's ``npm``,
Python's ``pip``,
and
Ruby's RubyGems
are available on Windows.

Linux has several mature, general-purpose packaging systems,
including Fedora's ``rpm``-based ``yum`` package manager,
Debian's ``deb``-based ``apt`` and ``dpkg``,
Arch Linux's ``pacman``,
and so on.
This is one reason Linux users are less susceptible to viruses:
they generally install packages that are cryptographically signed by the maintainers,
not opaque executables from a website which may not use secure HTTP.
Even inexperienced users can safely install and uninstall software if it is all from a trusted repository.

Package managers have other benefits,
such as avoiding dependency hell while saving the disk space of duplicated libraries.
Package managers have decent (though not perfect) security,
and provide the ability to upgrade all software at once with a single command
(or button if you use one of the many available GUIs).
Instead of requiring all application developers to re-implement automatic updates,
packaging makes secure, regular updates much more accessible and convenient for users and developers.

Package mangers can make backups easier by decoupling installed applications from stored personal files.
Want to remember which programs you have installed without backing up every single binary?
Just save the output of ``dpkg -L`` or its equivalent as a text file of installed packages,
and voilà, you can restore them later.

If your backup fails or you just want to switch to a different Linux distribution with the same package manager,
you can easily get back your installed software by feeding your package manager the package list.
All you need is a fresh Linux install and a good internet connection.
Meanwhile, you can keep your home directory backed up using cloud storage or physical drives (ideally both),
and the backup software doesn't need to run as root since it's only accessing your home directory.

Packaging also makes distributing scripts with library dependencies easier.
For example, installing ``python`` and ``matplotlib`` is simple on Linux,
but a `pain in the neck`_ on Windows.

.. _pain in the neck: http://matplotlib.org/users/installing.html#windows

------------------------------------------------------------
Fixing configuration problems with commands instead of GUIs.
------------------------------------------------------------

Graphical user interfaces are excellent for some kinds of software,
but they are clumsy and error-prone for rapidly fixing configuration problems.
Many Linux config problems can be fixed by editing a line in a text file or running a few commands in a terminal.
Windows configuration generally requires navigating deeply nested GUIs and ticking various checkboxes.
This has equivalent security problems to blindly running commands in a terminal,
but is much less efficient.

    Graphical user interfaces (GUIs) are helpful for many tasks, but they are not good for all tasks. I have long felt that most computers today do not use electricity. They instead seem to be powered by the "pumping" motion of the mouse! Computers were supposed to free us from manual labor, but how many times have you performed some task you felt sure the computer should be able to do? You ended up doing the work by tediously working the mouse. Pointing and clicking, pointing and clicking.

    -- William E. Shotts, Jr. "`Learning the shell`_"

.. _Learning the shell: http://linuxcommand.org/learning_the_shell.php

In addition, using GUIs for configuration makes user support and documentation significantly more time-consuming.
Text is easier to automate, store, transmit, and search for than screenshots or ad-hoc notations like Tools -> Options -> General Options -> ...

.. TODO: discuss specific comparisons of fixing comparable configuration issue on Linux and Windows.

The emphasis on textuality also makes diagnosing problems easier.
For example, want to see which displays you're connected to? Run ``xrandr``.
Want to see what USB devices are connected? Run ``lsusb``.
Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.

Another benefit of textuality is ease of using search engines to find similar problems.
Many a Linux user has thought they had found a new bug,
only to run a quick web search that turned up dozens of users with the same issue.
(The `Arch Linux BBS forum and bug tracker`_, for example, tends to be `ahead of the curve`_ on bug reports.)

.. _Arch Linux BBS forum: https://bbs.archlinux.org/
.. _ahead of the curve: https://bugs.archlinux.org/task/40444

Finally, software configuration can be kept or removed easily.
When uninstalling a software package on Debian Linux,
the user may either also remove the configuration (with ``apt-get purge``)
or leave the configuration in place when the application is installed again (with ``apt-get remove``).

----------------------
Remote administration.
----------------------

Accessing a Windows machine remotely generally requires remote desktop software.
While it is possible to install an SSH server,
this must installed and configured on each machine;
there is no built-in secure shell access on a vanilla Windows box.

In addition, Windows machines `do not respond to`_ ``ping`` (ICMP) by default.
Arguably, this is the `wrong`_ `choice`_.

.. _do not respond to: http://msdn.microsoft.com/en-us/library/ms912869(v=winembedded.5).aspx
.. _wrong: http://security.stackexchange.com/questions/22711/is-it-a-bad-idea-for-a-firewall-to-block-icmp
.. _choice: http://serverfault.com/questions/84963/why-not-block-icmp

By contrast, nearly all Linux machines respond to ``ping`` and most allow ``ssh`` for remote access.
Combined with the use of text files for configuration and the simplicity of package management,
many tech support and remote administration tasks are easier and faster to resolve when accessing a remote machine running Linux.

++++++++++++++++++
Cultural problems.
++++++++++++++++++

It might appear at this point that we are throwing objectivity to the wind,
but these are practical issues caused by cultural differences,
not subjective criticism of the Linux/Unix culture vs. the Microsoft Windows culture.

--------------------
Public bug trackers.
--------------------

Windows and proprietary software in general do not usually maintain a public bug tracker,
although `there`_ `are`_ `exceptions`_.
Software companies have strong incentives to keep their issue tracking systems internal due to things like customer confidentiality,
security,
and public relations.

.. _there: https://connect.microsoft.com/
.. _are: https://bugbase.adobe.com/
.. _exceptions: http://fold.it/portal/node/986241

As a result,
it can be hard to for a user to discern if their problem is shared by others,
what they can do to fix it,
and whether or not a bug has been fixed in the latest version.

Most companies devote a lot of staff to user support for this reason.
The inefficiencies and pitfalls of this are evident to anyone who's had to set up their home internet connection before.
Some companies complement user support with user forums,
which have the same `issues with signal-to-noise ratio`_ that most forums have.

.. _issues with signal-to-noise ratio: http://blog.codinghorror.com/civilized-discourse-construction-kit/

By contrast, projects like the Linux kernel and the Debian project maintain accountability and clarity by publically tracking and acknowledging bugs,
even when it is `embarrassing`_ to `do so`_.

.. _embarrassing: http://lwn.net/1999/0204/kernel.php3
.. _do so: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=155873

-----------------
Debugging habits.
-----------------

By `requiring`_ or encouraging `reboots`_ for installing software or changing configuration,
Windows encourages bad habits such as restarting software to make a bug go away,
or avoiding using parts of an application as a work-around,
rather than reproducing and reporting bugs.

.. _requiring: http://www.howtogeek.com/182817/htg-explains-why-does-windows-want-to-reboot-so-often/
.. _reboots: http://www.howtogeek.com/howto/31204/why-do-application-installs-make-you-reboot-and-close-other-apps/

In the long run, this hurts both proprietary and open-source software running on Windows.
It is also one reason why developing solely for Windows because of the larger user base may not always be a good choice.

--------
Malware.
--------

In principle, Linux and Windows are equally `susceptible to malware`_.
In practice, Windows users are `more likely`_ to inadvertently install malware,
primarily because of the way they install non-malicious software (see `notes on package management`_).
Requiring every computer user to do the work of package maintainers is harmful in a variety of ways;
it tends to encourage a cargo-cult mentality to security instead of systematic root-cause analysis.

.. _susceptible to malware: http://www.linux.com/learn/tutorials/284124-myth-busting-is-linux-immune-to-viruses
.. _more likely: http://unix.stackexchange.com/questions/2751/the-myths-about-malware-in-unix-linux
.. _notes on package management: `Package manager with signed binaries.`_

As a result,

#. Windows users must spend considerable time and effort detecting and removing malware.
#. Windows users may falsely attribute software misbehavior to malware.

Some users may even attribute problems arising from failing hardware to malware instead.

This also has consequences for developers.
Because few Linux users experience problems due to malware,
they will report bugs caused by the actual applications,
not ones caused by malware.

Linux has a better security model which uses secure package installation by default,
but allows installing software from other sources as well,
unlike the overly restrictive app-store model.

Finally, because Linux is a ubiquitous server operating system,
its security is under constant attack,
and Linux desktop users benefit from fixes to the vulnerabilities.
