.. -*- coding: utf-8 -*-

=================================================
Objective reasons for preferring Linux to Windows
=================================================

:Author: Nathaniel Beaver
:Copyright: This document is released under a `Creative Commons Attribution 4.0 International License`_.

.. _Creative Commons Attribution 4.0 International License: http://creativecommons.org/licenses/by/4.0/

Claims like "Linux is stable and reliable",
or "Linux is secure and private",
or "Linux is faster and less bloated",
or "Linux is flexible and customizable",
are vague and hard to verify.

It is easy to opine about one's preferred operating system,
but harder to give objective, concrete examples.

With the caveat that both Windows and Linux are moving targets,
here are some specific technical reasons to prefer using Linux as a desktop operating system.
They are by no means exhaustive,
but aim to be representative.
I have aimed for accuracy at the cost of possible dryness due to technical detail.

I am most familiar with the Debian-based family of Linux distributions,
so my remarks will necessarily touch on these more,
but I have tried to include other distributions when possible.

I will use the term "Linux" as shorthand to refer to the entire distribution,
including bootloader, kernel, shell, window manager, package manager, etc.
I will use the term "Windows" to refer to modern versions of Microsoft Windows NT,
including Windows XP, Windows Vista, Windows 7, and Windows 8.

Many of the same arguments in favor of Linux also apply to the BSD family of operating systems 
(and POSIX-compliant operating systems in general),
but unfortunately I am not familiar enough with any of them to comment specifically.

.. contents::

+++++++++++++++++++++++++++++++++++++
Technical deficiencies of Windows.
+++++++++++++++++++++++++++++++++++++

------------------------
Live booting is lacking.
------------------------

`Live versions`_ of Linux are full operating systems,
able to mount and repartition disks,
connect to the internet and run a web browser,
and (for persistent LiveUSB flash drives) retain settings and data on the next boot-up.
Some live Linux distributions, such as `Puppy Linux`_,
are lightweight enough that they default to `running from a RAM disk`_,
and consequently run faster than an OS that access a hard disk.

.. _Live versions: http://www.linux.com/directory/Distributions/livecd
.. _Puppy Linux: http://puppylinux.org/
.. _running from a RAM disk: https://en.wikipedia.org/wiki/List_of_Linux_distributions_that_run_from_RAM

Windows LiveCDs, `though they`_ `do exist`_,
are hampered by licensing restrictions or technical limitations.
For example, `until Windows 8`_, desktop versions of Windows could not boot from a USB.
(And even on Windows 8, you can't mount hard disks when running from USB.)

The BartPE LiveCD building program will run on any version of Windows,
but it is `only able to make`_ a LiveCD for Windows XP or Windows Server 2003.

.. _though they: http://en.wikipedia.org/wiki/BartPE
.. _do exist: http://en.wikipedia.org/wiki/Windows_Preinstallation_Environment
.. _until Windows 8: http://technet.microsoft.com/en-us/library/hh831833.aspx
.. _only able to make: http://www.betaarchive.com/forum/viewtopic.php?t=22258 

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
but many applications (e.g. Windows Explorer, Powershell) have not done so.

Of course, most OS restrictions are `not an issue in well-written software`_.
Maybe Windows paths `are long enough`_.
Is MAX_PATH an actual problem in real software?

.. _not an issue in well-written software: http://blogs.msdn.com/b/oldnewthing/archive/2007/03/01/1775759.aspx
.. _are long enough: http://blog.codinghorror.com/filesystem-paths-how-long-is-too-long/

Judging by the number of bug reports and complaints, I would say that the answer is yes.

#. https://github.com/joyent/node/issues/6960
#. https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61922
#. http://llvm.org/bugs/show_bug.cgi?id=20440
#. https://bugs.eclipse.org/bugs/show_bug.cgi?id=164186
#. http://bugs.python.org/issue19636
#. http://social.msdn.microsoft.com/forums/vstudio/en-US/e4a8ee8d-b25d-4b47-8c0c-88329bbece7d/please-increase-maxpath-to-32767
#. http://stackoverflow.com/questions/1880321/why-does-the-260-character-path-length-limit-exist-in-windows
#. http://stackoverflow.com/questions/1065993/has-windows-7-fixed-the-255-character-file-path-limit
#. http://stackoverflow.com/questions/833291/is-there-an-equivalent-to-winapis-max-path-under-linux-unix
#. http://forums.mozillazine.org/viewtopic.php?f=29&t=263489

But the bigger issue is that many Windows developers are `so used to`_ `working around`_ the problem
that it has become deeply entrenched and may `never be fixed`_.

.. _so used to: http://blogs.msdn.com/b/tomholl/archive/2007/02/04/enterprise-library-and-the-curse-of-max-path.aspx
.. _working around: http://stackoverflow.com/a/11212007
.. _never be fixed: http://visualstudio.uservoice.com/forums/121579-visual-studio/suggestions/2156195-fix-260-character-file-name-length-limitation

The Linux kernel does have an adjustable pathname length limit;
it's `4096 chars in typical kernels and filesystems`_.
You can check it yours by running ``getconf PATH_MAX /``.
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

The significance of this is that the Linux kernel developers do not ever break external compatibility,
they do intentionally expose false assumptions,
since false assumptions tend to cause hard-to-fix bugs.
This is why Linus Torvalds `intentionally chose`_ an unusually high timer interrupt frequency for Linux::

    I chose 1000 originally partly as a way to make sure that people that
    assumed HZ was 100 would get a swift kick in the pants. That meant making
    a _big_ change, not a small subtle one. For example, people tend to react
    if "uptime" suddenly says the machine has been up for a hundred days (even
    if it's really only been up for ten), but if it is off by just a factor of
    two, it might be overlooked.

.. _intentionally chose: https://lkml.org/lkml/2005/7/8/263

----------------------
NTFS case-sensitivity.
----------------------

NTFS on Windows `cannot be case-sensitive`_ because the Windows API for filenames `is not case-sensitive`_ for legacy reasons. 
However, it is `case-preserving`_.
This means that you can mount an NTFS partition with Linux and make a file called "Myfile.txt" in the same directory as "MYFILE.TXT".
However, you `won't be able to`_ access both those files using standard Windows software.

.. _cannot be case-sensitive: http://www.sevenforums.com/general-discussion/278918-making-windows-7-case-sensitive-possible.html
.. _is not case-sensitive: http://support.microsoft.com/kb/100625
.. _case-preserving: http://en.wikipedia.org/wiki/Case_preservation
.. _won't be able to: http://technet.microsoft.com/en-us/library/cc976809.aspx

This has `ramifications`_ for cross-platform development.
In practice, most developers of cross-platform software just `make a habit`_ of not relying on case-sensitive filesystem access,
but this issue still `crops up when porting`_ from Windows to Linux or vice-versa.

.. _ramifications: http://openfoamwiki.net/index.php/Main_FAQ#Why_isn.27t_there_a_Windows_port_of_OpenFOAM_.3F
.. _make a habit: http://www.mono-project.com/docs/getting-started/application-portability/#case-sensitivity
.. _crops up when porting: http://adrienb.fr/blog/wp-content/uploads/2013/04/PortingSourceToLinux.pdf

------------------------------
Limited choice in filesystems.
------------------------------

Windows has built-in support for its native NTFS,
UDF (used for some CDs and DVDs),
and the legacy FAT16/FAT32/exFAT family.

Linux has drivers for `almost all file systems`_ that can be legally mounted without paying royalties,
including ones that don't see much use nowadays, like `Amiga file systems`_.
It can also mount FAT and NTFS filesystems,
despite Microsoft's lucrative patent licensing deals and `ongoing`_ `litigation`_
against Android manufacturers and `other companies`_ for their use of the Linux kernel's FAT drivers.

.. _almost all file systems: https://wiki.archlinux.org/index.php/file_systems
.. _Amiga file systems: http://www.tldp.org/FAQ/Linux-FAQ/partitions.html#can-linux-access-amiga-file-systems
.. _ongoing: http://www.forbes.com/sites/timworstall/2013/12/06/german-patent-ruling-threatens-microsofts-windows-phone-earnings-from-android/
.. _litigation: http://gizmodo.com/the-secret-android-patents-that-microsoft-forces-oems-t-1591338496
.. _other companies: http://arstechnica.com/information-technology/2009/02/microsoft-sues-tomtom-over-fat-patents-in-linux-based-device/

For the system partition,
Linux users can choose either the typical ext3 journaling filesystem
or
up-and-coming filesystems like Btrfs.
Unlike `NTFS and FAT`_, these filesystems `do not require defragmentation`_.

.. _NTFS and FAT: http://technet.microsoft.com/en-us/magazine/2007.11.desktopfiles.aspx
.. _do not require defragmentation: http://www.tldp.org/LDP/sag/html/filesystems.html#FRAGMENTATION

------------------
UTF-16, not UTF-8.
------------------

If the Windows API were designed today, it would most likely use `UTF-8`_.
The Unicode Consortium only `recommends UTF-16`_ for compatibility with Java and the Windows API.
Some practical reasons for this:

- UTF-8 is a superset of ASCII, so it is backwards-compatible with existing text files.
- UTF-8 is `self-synchronizing`_.
- UTF-8 does not require a `byte-order mark`_ and is less likely to be mistaken for other encodings.

.. _UTF-8: http://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt
.. _recommends UTF-16: http://www.unicode.org/faq/programming.html#2
.. _self-synchronizing: http://en.wikipedia.org/wiki/UTF-8#Description
.. _byte-order mark: http://www.unicode.org/faq/utf_bom.html

----------------------------------------------------
File extensions are the sole determiner of filetype.
----------------------------------------------------

On Linux, filetypes are determined by a combination of filesystem metadata, heuristics for fixed-formats, and file extension.
On Windows, the file extension is the sole determiner of filetype and executable status.

If the file extensions for different filetypes happen to collide (recall that filenames are not case-sensitive),
one program must take default precedence over the other for that filetype.
For example, there a lot of different file formats with a ``.dat`` file extension,
but only one program gets to open them by default.

++++++++++++++++++++++++++++++++
Architectural benefits of Linux.
++++++++++++++++++++++++++++++++

----------------------------------
Ease of bug reporting and logging.
----------------------------------

On Windows, you can (usually) use Ctrl-C when an error window pops up to copy the error message.
If you plan ahead, you can try to run the command from a terminal and log the output.

On Linux, you can attach the debugger ``gdb`` to a running process,
start a logfile that catches all the output,
and run a backtrace when the program fails (it's better with debugging symbols, though).
If the process is already unresponsive, you can attach ``strace`` and see what system calls it makes,
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

The Windows window manager and kernel are very tightly coupled.
This has negative consequences for stability and backwards compatibility.

Also, by design, multiple concurrent sessions are `disabled`_ on all but the `server version`_ of Windows.
(This is a licensing issue, not a technical limitation.
Third-party remote desktop software for Windows is `legally`_ `obligated`_ to not circumvent this limitation [#windowsVNC]_.)

.. _disabled: http://blogs.msdn.com/b/rds/archive/2009/08/21/remote-desktop-connection-7-for-windows-7-windows-xp-windows-vista.aspx
.. _server version: http://superuser.com/questions/784523/tightvnc-while-an-rdp-session-is-running
.. _legally: http://social.technet.microsoft.com/Forums/windows/en-US/41e9e500-714a-443b-bff2-55f0d500d3d1/concurrent-sessions-remote-desktop-in-windows-7?forum=w7itproinstall
.. _obligated: http://tightvnc.10971.n7.nabble.com/Multiple-Unique-Sessions-td2060.html

On Linux, `multiple local instances of the X server`_ are not unusual,
even with different desktop environments.
X sessions can be accessed remotely using e.g. `VNC`_ or `X over SSH`_.
It is common for two different users to work remotely at the same time on the same machine.
A `multiseat`_ configuration is also possible if the hardware is available.
Even on single-user machines this capability of the X server is useful to e.g. run two different desktop environments at the same time.
Also, sometimes Linux users will forego the X server entirely and log in from a virtual terminal (tty).
This is important to be able to do if the X server crashes or cannot start.

.. _multiple local instances of the X server: http://journalxtra.com/linux/desktop/multiple-desktops-on-one-linux-pc-now-thats-greedy/
.. _VNC: https://wiki.debian.org/VNCviewer
.. _X over SSH: https://www.debian.org/doc/manuals/debian-reference/ch07.en.html#_connecting_a_remote_x_client_via_ssh
.. _multiseat: https://wiki.archlinux.org/index.php/xorg_multiseat

In Linux, the X server and kernel are separate,
so the window manager can be restarted without a reboot.
Should it be necessary to restart the kernel,
one can do so cleanly without the aid of the X-server using the "`Magic Alt-SysRq keys`_".

.. _Magic Alt-SysRq keys: https://www.kernel.org/doc/Documentation/sysrq.txt


There is a plethora of `window managers`_ and `desktop environments`_ to choose from on Linux,
even for the same distribution,
making it highly customizable to the system's resources and the user's wishes.
However, they all use the same X Window System (a.k.a X11).

.. _window managers: https://wiki.archlinux.org/index.php/Window_manager
.. _desktop environments: https://wiki.debian.org/DesktopEnvironment

The X11 system is by no means perfect;
in fact, many former X11 developers are hard at work on its replacement, Wayland,
and Canonical is working on a separate but similar endeavor called Mir.

However, X11 has become so pervasive that versions of it power not only Linux desktops but also the BSD family and OS X (XQuartz),
and there are even ways to run an X server on Windows or Android.

.. [#windowsVNC] "You would think that because Windows XP is multiuser, you could have multiple users running VNC servers. Indeed you can, but you can only use the one that has the currently active user - switch away, and that server goes black, and in my testing, can't even be used again. Windows XP is not really multiuser." http://aplawrence.com/Reviews/tightvnc.html

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

On Windows, by contrast, neither the C compiler and build system
nor the currently favored Windows shell (PowerShell) are installed by default.

------------------------
Registries and dotfiles.
------------------------

On Windows, configuration files are not centralized in the user's home directory.
Most of the things that users care about --
not losing configuration between installs --
are scattered around in various directories or in the binary-only registry.

On Linux, system level configuration is stored in ``/etc/``,
and user level configuration is stored in dotfiles (hidden folders or text files) in the user's home directory.
Want to back up your configuration?
Just copy over your dotfiles.
Want to save only some of your configuration?
Just copy over the dotfiles your care about.

Since many dotfiles are textual,
it is even possible to ``diff`` and selectively merge them,
which means users can share and benefit from others' customized configurations and accommodate upstream changes.
It also means that migrating to a different Linux distribution is usually not as painful as starting from scratch,
since many applications keep the configuration formats relatively stable and merging in the customizations is usually straightforward.
During major Debian upgrades, for example, users can choose to adopt new configuration files,
keep the old ones, or diff and merge the files into a hybrid.

---------------------------------------------------------------
Package manager with signed binaries and easy backup/reinstall.
---------------------------------------------------------------

Windows Installer is a software package manager in the sense of installing and uninstalling software,
but it does not provide the salient features of current major Linux packaging systems,
such as:

- securely retrieving the package from a trusted remote or local repository,
- adding and removing third-party repositories,
- changelogs,
- optional fully automatic non-interactive installation,
- cryptographic verification of packages,
- backporting security fixes to stable versions,
- licensing metadata,
- and sophisticated dependency management.

First, I would be remiss to mention that there is an open-source package manager for Windows, `Chocolatey`_,
that is under active development.
So far the Chocolatey repository is not as comprehensive as Linux repositories.
Here are some examples of packages which are not in the Chocolatey repository (as of September 2014).

- `KeePassX`_ password manager `* <http://chocolatey.org/packages?q=keepassx>`__
- `Apophysis`_ fractal flame editor `* <http://chocolatey.org/packages?q=apophysis>`__
- `xyscan`_ data extractor `* <https://chocolatey.org/packages?q=xyscan>`__
- `HEPHAESTUS`_ periodic table `* <https://chocolatey.org/packages?q=HEPHAESTUS>`__
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

(This list isn't particularly significant, it's just software that has a Windows version that I would want to use.)

Also, the Chocolatey development team acknowledges it `does not have package moderation or package signing`_ yet,
which is significant for overcoming Window's issue with `installing software from untrusted sources`_.

.. _does not have package moderation or package signing: https://chocolatey.org/about
.. _installing software from untrusted sources: `Malware.`_

On the bright side, most of the language-specific package managers,
such as 
Haskell's ``cabal``,
Perl's ``CPAN``,
.NET's NuGet,
Node.js's ``npm``,
Python's ``pip``,
and
Ruby's RubyGems,
are available on Windows.

Linux has several mature, general-purpose packaging systems,
including Fedora's ``.rpm``-based ``yum`` package manager,
Debian's ``.deb``-based ``apt`` and ``dpkg``,
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

If your backup fails or you just want to switch to a different Linux distribution,
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

GUIs are good for some applications,
but they are clumsy and error-prone for rapidly fixing configuration problems.
Many Linux config problems can be fixed by editing a line in a text file or running a few commands in a terminal.
Windows configuration generally requires navigating deeply nested GUIs and ticking various checkboxes.
This has equivalent security problems to blindly running commands in a terminal,
but is much less efficient.

In addition, using GUIs for configuration makes user support and documentation significantly more time-consuming.
Text is easier to automate, store, transmit, and search for than screenshots or ad-hoc notations like Tools -> Options -> General Options -> ...

The emphasis on textuality also makes diagnosing problems easier.
For example, want to see which displays you're connected to? Run ``xrandr``.
Want to see what USB devices are connected? Run ``lsusb``.
Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.

Another benefit of textuality is ease of using search engines to find similar problems.
Many a Linux user has thought they had found a new bug,
only to run a quick web search that turned up dozens of users with the same issue.
(The `Arch Linux BBS forum`_, for example, tends to be `ahead of the curve`_ on bug reports.)

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

These are practical issues caused by cultural problems,
not subjective criticism of the Linux/Unix culture vs. the Microsoft Windows culture.

--------------------
Public bug trackers.
--------------------

Windows and proprietary software in general do not usually maintain a public bug tracker.
This means that assessing what went wrong when an application crashes is often more difficult than it needs to be.
By contrast, projects like the Linux kernel and the Debian project publically track and acknowledge bugs,
even when it is `embarrassing`_ to `do so`_.

.. _embarrassing: http://lwn.net/1999/0204/kernel.php3
.. _do so: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=155873

-----------------
Debugging habits.
-----------------

By `requiring`_ or encouraging `reboots`_ for installing software or changing configuration,
Windows encourages bad habits such as restarting software to make a bug go away,
or avoiding certain commands as a work-around,
rather than reproducing and reporting bugs.

.. _requiring: http://www.howtogeek.com/182817/htg-explains-why-does-windows-want-to-reboot-so-often/
.. _reboots: http://www.howtogeek.com/howto/31204/why-do-application-installs-make-you-reboot-and-close-other-apps/

In the long run, this hurts both proprietary and open-source software running on Windows.
It is also one reason why developing solely for Windows because of the larger user base may not always be a goo choice.

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
.. _notes on package management: `Package manager with signed binaries and easy backup/reinstall.`_

As a result,

#. Windows users must spend considerable time and effort detecting and removing malware.
#. Windows users may falsely attribute software misbehavior to malware.

Some users may even attribute problems arising from failing hardware to malware instead.

(This has also consequences for developers.
Because few Linux users experience problems due to malware,
Linux developers will be more likely to reproduce issues reported in forums or bug trackers.)

Linux has a better security model which uses secure package installation by default,
but allows installing software from other sources as well,
unlike the overly restrictive app-store model.

Also, because Linux is a ubiquitous server operating system,
its security is under constant attack,
and Linux desktop users benefit from the fixes to the vulnerabilities.
