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
and they are founded on anecdotes and hearsay.
They cause `endless, unnecessary debates`_ and make a muddle of the facts.

.. _endless, unnecessary debates: http://linux.slashdot.org/

It's easy to opine about one's preferred operating system,
but harder to give objective, concrete examples.

With the caveat that both Windows and Linux are moving targets,
this document describes some specific technical reasons
to prefer using Linux as a desktop operating system.

These reasons are not exhaustive
--- and not meant to be ---
but aim to be representative.

This document will not cover servers, phones, or embedded devices.

This document  will not cover closed vs. open source development,
but will instead focus on functionality.
There is plenty of discussion of the advantages and disadvantages of open source elsewhere.

Besides, what is there to discuss
when we now know that `even Microsoft loves open source`_?

.. _even Microsoft loves open source: http://www.networkworld.com/article/2216878/windows/microsoft---we-love-open-source-.html

(This discussion will only mention Microsoft and other companies
in so far as their actions are directly relevant
to the technically capabilities of Windows and Linux.
As an aside, Microsoft gets a lot of guff in the open-source world,
but their behavior is typical of almost any company
that relies primarily on selling proprietary software and devices for revenue.
It's just economics, not malice.)

The discussion is intended to be as accurate as possible,
at the cost of possible dryness due to technical detail.

I am most familiar with the Debian-based family of Linux distributions,
so my remarks will necessarily touch on these more,
but I have tried to include other distributions when possible.

In this document, the term "Linux" is shorthand for the entire distribution,
including bootloader, kernel, shell, window manager, package manager, etc.
Similarly, the term "Windows" refers to all default components of modern versions of Microsoft Windows NT,
including Windows XP, Windows Vista, Windows 7, and Windows 8.

Many of the same arguments in favor of Linux
also apply to the BSD family of operating systems
(and POSIX-compliant operating systems in general),
but unfortunately I am not familiar enough with any of them
to comment specifically.

+++++++++++++++
Why write this?
+++++++++++++++

Most people use Windows on the desktop because it's the default.
Few are aware of the benefits of switching to another operating system,
and even fewer are willing to put in the effort to do so.

A Windows user interested in trying Linux
will probably have difficulty finding a coherent reason to do so,
since comparisons of operating systems are (almost) always vague, uninformed, or opinion-based.

For a variety of reasons,
people who do use Linux seldom advertise its benefits to their colleagues.
If they do, they may find it difficult to articulate
exactly what the benefits are in a concrete and specific manner,
especially without putting down Windows users or Windows applications in general.

If you don't use Linux or Windows,
this document might still be of interest,
since it discusses issues which are relevant to all operating systems.

If you are a new Linux user,
this document is intended to inform you
about some of the benefits of Linux you may not be aware of,
and to dig deeper if you are interested.

If you are an experienced Linux user,
this document is a test of the theory that the fastest way to get feedback
is to be publically wrong about something people care about.
Corrections and additions are welcome.

If you are a Windows user:

- This document is not intended to convert you to Linux.
  (That would be silly.)
- This document does not claim that Windows is inferior in every way,
  or even that it is inferior overall.
- Instead, this is meant to provide insight
  into why some people choose to use Linux as a desktop operating system,
  despite its shortcomings,
  and possibly to challenge some misconceptions that people have about Linux and Windows.
- Corrections and additions are, of course, welcome.
  Windows developers are ones who know the most about its flaws and strengths.
- Finally, definitions of better and worse are necessarily subjective,
  despite the title's claim of objectivity.
  You may heartily disagree with substantial parts of what follows,
  but perhaps it may be useful to you, even so.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Intrinsic technical deficiencies of the Windows NT operating system
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

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

The absence of fully functional live versions of Windows
makes it difficult to use for, e.g,
determining if a bug is due to hardware or software problems,
recovering data from a machine with filesystem corruption or bad disk sectors,
and testing out different versions of an OS
without committing a partition of a hard disk to a permanent installation.

`Live versions`_ of Linux are full operating systems,
able to mount and repartition disks,
connect to the internet and run a web browser,
and (for `persistent live USB flash drives`_)
retain settings and data on the next boot-up.
This makes live versions of Linux useful for
recovering files from damaged hard drives,
making bootable backups of an entire drive,
scanning a disk for malware without loading a potentially compromised operating system,
distinguishing hardware problems from softwre problems,
and other tasks requiring a temporary operating system.

.. _Live versions: http://www.linux.com/directory/Distributions/livecd
.. _persistent live USB flash drives: http://askubuntu.com/questions/295701/what-would-be-the-differences-between-a-persistent-usb-live-session-and-a-instal

Some live Linux distributions, such as `Puppy Linux`_,
are lightweight enough that they default to `running from a RAM disk`_,
and consequently have much faster disk I/O
than an OS that must access a spinning hard drive.
(This comes at the cost of disk space being limited by RAM.
There's no reason you can't mount an internal or external drive to store files, though.)

.. _Puppy Linux: http://puppylinux.org/
.. _running from a RAM disk: https://en.wikipedia.org/wiki/List_of_Linux_distributions_that_run_from_RAM

Very little hardware comes with a `desktop version of Linux pre-installed`_,
so live versions of Linux tend to work very well,
since that is almost always the way it is installed.

.. _desktop version of Linux pre-installed: https://help.ubuntu.com/community/UbuntuPre-installed

----------------------------------------
Virtual machine limitations and drivers.
----------------------------------------

Similar to live booting,
Linux is often run as a virtual machine,
and consequently it is well-adapted to changes in hardware.

An existing Linux partition on a physical hard drive
can, with some care, be virtualized and run on another machine,
or even simply transferred to a USB enclosure and booted directly,
a `virtue which Windows does not share`_,
due both to `licensing and driver problems`_.

.. _virtue which Windows does not share: https://www.virtualbox.org/wiki/Migrate_Windows
.. _licensing and driver problems: https://askubuntu.com/questions/174581/is-there-any-way-to-boot-windows-7-partition-in-virtual-machine

---------------------
Maximum path lengths.
---------------------

Windows path lengths `are limited to 260 characters`_, including filename.
(In practice, it is often more like `199 characters`_.)
This is `not a flaw in NTFS`_ or Windows per se,
but in the `non-Unicode version of the Windows API`_.

.. _are limited to 260 characters: http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx#maxpath
.. _not a flaw in NTFS: http://msdn.microsoft.com/en-us/library/ee681827%28VS.85%29.aspx#limits
.. _non-Unicode version of the Windows API: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx#maxpath
.. _199 characters: http://stackoverflow.com/a/265817
.. _have not done so: http://blogs.msdn.com/b/bclteam/archive/2007/02/13/long-paths-in-net-part-1-of-3-kim-hamilton.aspx

This problem can be avoided by using Unicode versions of the API calls,
but many applications
(e.g. `Windows Explorer`_, `.NET`_ and `consequently Powershell`_)
have not done so.

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

However, `this limit is not enforced`_
by any filesystems that Linux runs on,
and consequently some ``libc`` implementations
were for a while `susceptible to buffer overflow`_
when trying to resolve canonical file paths.

.. _4096 chars in typical kernels and filesystems: http://unix.stackexchange.com/questions/28997/on-deep-created-directories
.. _this limit is not enforced: http://insanecoding.blogspot.com/2007/11/pathmax-simply-isnt.html
.. _susceptible to buffer overflow: http://stackoverflow.com/questions/1171833/how-to-get-the-absolute-path-of-a-file-programmatically-with-out-realpath-unde

The 2008 POSIX revision has `addressed the issue`_,
but prior to this the Linux kernel had to make non-standard modifications to avoid overflow,
and `warned about the problem`_
in the ``realpath (3)`` man page of the Linux Programmer's Manual.

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

----------------------------
Filename case-insensitivity.
----------------------------

Linux uses case-sensitive filenames
because Unix used case-sensitive filename.
Unix was case-sensitive because Multics was case-sensitive.
Multics was case-sensitive because of ASCII.

    Everything in Multics is case sensitive; Multics permits use of the full
    upper and lower case ASCII character set.

http://www.multicians.org/mgc.html

    Since the Multics file system distinguished between upper and lower case,
    external names had to be case sensitive, and without much discussion we
    chose to have all variable names be case sensitive.

http://www.multicians.org/pl1.html

This has some intuitive appeal;
it is useful to be able to distinguish between, say,
the abbreviation for United State ("US")
and the first-person plural objective pronoun ("us").

.. Talk more? E.g. Rob/rob, Job/job, Lot/lot, Miami Marlins vs Miami marlins, Target sale vs target sale, Scrabble/scrabble, drake/Drake

It also provideds more possibilities for filenames,
and makes filename comparisons simpler and faster
because they don't have to occasionally convert
to uppercase or lowercase.

    Bear in mind that it's MUCH more work for a filesystem to be
    case-insensitive than -sensitive. A filesystem is case-sensitive by
    default, in the simplest case; it can only be made case-INsensitive through
    a lot of extra engineering. In UNIX, all the system has to do is sort on
    the ASCII values of the first letters of the filenames. In the Mac OS and
    Windows, the filesystem has to be smart enough to create synonyms of
    various letters — A for a, and so on — and sort accordingly. That takes a
    LOT of code. It's a testament to the completeness of the original Mac OS
    that in 1984 this was all handled properly, before Windows even brought
    lower-case letters to the PC side.

http://xahlee.info/UnixResource_dir/_/fileCaseSens.html

However, there is no shortage of opinions that case-sensitive filenames
-- and even case-sensitivity in general --
was a bad decision.

           Anecdotally, case sensitivity in programs is known to be error-prone for
           both beginners and experienced users.  Bob Frankston, a Multics alumnus
           and the co-inventor of VisiCalc, once said it was the biggest mistake
           that Multics had inflicted on the world.

https://www.ma.utexas.edu/pipermail/maxima/2003/004483.html

           Mac ＆ Windows users have to have filenames read to them over the phone by
           support techs. They have to be able to write little sticky notes to their
           mothers about how to open up the mail program, without worrying about how the
           filenames are capitalized. Haven't you ever fumed over a URL with initial-caps
           in the folder names in the path, having to fiddle with capitalization until you
           get a response that's anything but a 404? Haven't you ever been secretly
           pleased that e-mail addresses aren't case-sensitive?

http://xahlee.info/UnixResource_dir/_/fileCaseSens.html

           One of the most pernicious problems with C-based languages is that they're
           case-sensitive. While this decision may have made sense in 1972 when the
           language was created, one wonders why the sins of Kernighan and Ritchie have
           been blindly perpetuated for the last thirty-three years.

           Unless you have extremely compelling reasons to make something case-sensitive,
           case insensitivity is a much more human being friendly design choice. Designing
           software that's easier for machines is questionable at best.

http://blog.codinghorror.com/the-case-for-case-insensitivity/

           There is no longer any excuse for making humans learn and handle the quirks of
           the way computers store upper- and lower-case characters. Instead, software
           should handle the quirks of human language.

http://tiamat.tsotech.com/case-sensitivity-sucks

           Since it appears to have manifested out of opinion rather than necessity, it
           could be said case-sensitivity is the worst way that modern technology sucks.

http://www.raizlabs.com/graiz/2007/02/11/linuxunix-case-sensitivity/

           This is really stupid, it causes a ton of problems and there is no longer any
           good reason to have case sensitivity in an OS.

http://www.somethinkodd.com/oddthinking/2005/10/27/the-case-for-case-preserving-case-insensitivity/

There are also passionate views to the opposite effect.

    Many of us consider those filesystems which cannot preserve case, but
    which accept "input" in random case, to be so utterly broken as to be
    undeserving of any attention whatsoever.  They create a situation where
    the computer effectively considers the users to be too stupid or blind
    or whatever to be able to say what we mean accurately.

https://lists.nongnu.org/archive/html/info-cvs/2003-11/msg00127.html

Laying aside that argument for the moment,
why did Windows filenames end up case-insensitive?

Strictly speaking, modern Windows filenames could be case-sensitive,
but they aren't because the `Windows API for opening files`_ `is not case-sensitive`_,
i.e. the `default call`_ to ``CreateFile``
does not enable the ``FILE_FLAG_POSIX_SEMANTICS`` option.

.. _Windows API for opening files: http://msdn.microsoft.com/en-us/library/windows/desktop/aa363858(v=vs.85).aspx
.. _is not case-sensitive: http://support.microsoft.com/kb/100625
.. _default call: http://www.nicklowe.org/2012/02/understanding-case-sensitivity-in-windows-obcaseinsensitive-file_case_sensitive_search/

However, Windows' own NTFS filesystem is `case-preserving`_.
This means that it is possible to mount an NTFS partition with Linux
and make a file called "Myfile.txt" in the same directory as "MYFILE.TXT",
but it will `not be possible to read or modify both of those files`_,
at least not with standard Windows software.

.. _case-preserving: http://en.wikipedia.org/wiki/Case_preservation
.. _not be possible to read or modify both of those files: http://technet.microsoft.com/en-us/library/cc976809.aspx

This behavior exists to maintain `compatibility with MS-DOS`_ filesystems.
MS-DOS was based on QDOS/86-DOS,
which was `heavily influenced by CP/M`_
(another case-insensitive OS [#CPM_case_insensitive]_),
which in turn was heavily influenced by RT-11,
a competitor with Unix on the PDP-11.

.. _compatibility with MS-DOS: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx
.. _heavily influenced by CP/M: http://dosmandrivel.blogspot.com/2007/08/is-dos-rip-off-of-cpm.html

Why did RT-11 use case-insensitive filenames?
Because it didn't use ASCII for filenames,
it used an encoding called `RADIX-50`_ to save memory.
It also used three-character extensions.

.. _RADIX-50: http://nemesis.lonestar.org/reference/telecom/codes/radix50.html

    Locating files – files were located via the directory, which resided in a fixed
    location at the beginning of the hard drive. The directory consisted of a
    single array of entries, each with a 6.3 character file name formatted in DEC’s
    Radix-50 format. A file’s directory entry indicated the address of the first
    block of the file.

http://cryptosmith.com/2013/10/19/digitals-rt-11-file-system/

The lack of agreement on filename case-sensitivity
may seem insignificant today,
but it leads to non-trivial difficulties
in cross-platform development. [#tortoise_svn_case_sensitivity]_ [#openfoam_no_windows_port]_
Developers of cross-platform software can `make a habit`_
of not relying on case-sensitive filesystem access,
but problems of this ilk crop up
when porting from Windows to Linux or vice-versa. [#valve_porting_source_to_linux]_

.. _make a habit: http://www.mono-project.com/docs/getting-started/application-portability/#case-sensitivity

For example, the Linux port of the `Unity engine`_ has `issues with case-sensitive filesystems`_.

    Unity does not properly run on a case-sensitive file system (which is something
    that Unity users have discovered if they’ve tried to install and run Unity on a
    case-sensitive HFS+ file system).  This is primarily due to Unity’s asset
    database, and how it stores paths to map them to GUID values.  Of course we
    tried to be smart in the early days, but if you don’t set up a way to actually
    verify that what you’re doing works on a case-sensitive file system, then it
    will never fail that some well-intentioned programmer throws a toLower() in
    somewhere and ruins the party.

.. _Unity engine: http://unity3d.com/
.. _issues with case-sensitive filesystems: http://natoshabard.com/post/122670082502/porting-the-unity-editor-to-linux-stuff-i-wish

.. [#tortoise_svn_case_sensitivity] https://code.google.com/p/tortoisesvn/issues/detail?id=32
.. [#openfoam_no_windows_port] http://openfoamwiki.net/index.php/Main_FAQ#Why_isn.27t_there_a_Windows_port_of_OpenFOAM_.3F

           The OpenFOAM-sources need a fully case-sensitive file-system and can't even be
           unpacked properly on a Windows system

.. [#valve_porting_source_to_linux] http://adrienb.fr/blog/wp-content/uploads/2013/04/PortingSourceToLinux.pdf

           - Linux filesystems are case-sensitive
           - Windows is not
           - Not a big issue for deployment (because everyone ships packs of some sort)
           - But an issue during development, with loose files
           - Solution 1: Slam all assets to lower case, including directories, then tolower all file lookups (only adjust below root)
           - Solution 2: Build file cache, look for similarly named files

.. [#CPM_case_insensitive] CP/M did this conversion internally.

        It should also be noted that all alphabetic lower case letters in file
        and drive names are always translated to upper case when they are processed by
        the CCP [Console Command Processor].

        [ . . . ]

        Further, recall that the CCP always translates lower case characters to upper
        case characters internally. Thus, lower case alphabetics are treated as if
        they are upper case in command names and file references

    https://archive.org/stream/Intro_to_CPM_Feat_and_Facilities/Intro_to_CPM_Feat_and_Facilities_djvu.txt


-----------------------
Drive letter assignment
-----------------------

Drive letters for removable media like floppy disks and flash drives
are still used in Windows NT.
However, the drive letter is not necessarily the same next time,
which causes many practical problems,
such as finding recently used files.

    I have a problem with Word when working with documents on my flash drive.
    If I insert the drive days later and try to use the recently used file
    list, Word sometimes says it can’t find the document.

    I’ve worked out that when I insert the flash drive it’s not always using
    the same drive letter – it’s F or G drive but occasionally even later in
    the alphabet.

    How can I change the flash drive letter or, even better, make it appear as
    the same drive letter each time?

http://new.office-watch.com/2008/make-a-consistent-drive-letter-or-path-to-a-removable-drive/

This is solvable using NTFS mount points,
but Windows doesn't do it by default.

Linux, on the other hand, uses the single-rooted UNIX filesystem hierarchy,
assigning all drives (including removable media)
to configurable mount points.
For flash drives, that means they live under ``/media/``,
are assigned a directory based on their label,
and that directory won't change unless the partition label changes
or they are manually mounted somewhere else.

.. https://unix.stackexchange.com/questions/93960/why-is-linuxs-filesystem-designed-as-a-single-directory-tree
.. http://new.office-watch.com/2008/make-a-consistent-drive-letter-or-path-to-a-removable-drive/

    For UNIX users, the concept of mount points is old hat—something that UNIX and
    other OSs, such as Novell NetWare, have used for years. However, in the Windows
    space, mount points are a relatively new concept.

    [ . . . ]

    Integrating local and remote disk resources into a unified and singular
    directory tree greatly simplifies file-system traversal and makes the traversal
    transparent to the administrator, application, and user.

    [ . . . ]

    Because the Windows storage-management paradigm has always relied heavily on
    alphabetic drive-letter designations, mount points—with their lack of
    dependence on drive-letter associations—are especially valuable.

http://windowsitpro.com/systems-management/magic-mount-points

There is a limitation for NTFS mount points: recycle bin doesn't work.

    The problem is the recycle bin.  This "undo" option is maintained with a hidden
    system file that is on the partition that holds the files being deleted.
    Unfortuantely, when the command to delete a folder is given, the system
    attempts to delete the folder using the mount point folder's Master File Table,
    and not the subfolder's Master File Table.  The mount point folder's MFT
    doesn't host the record, and an access denied message is kicked back to you for
    having the temerity to try and recycle a directory which apparently doesn't
    even exist!  The only solution for this is to not recycle subfolders and
    directories, but to outright delete them.

http://getyouriton.blogspot.com/2009/08/serious-gotchas-with-mounted-drives-or.html

http://flippingbits.typepad.com/blog/2011/09/best-practices-for-windows-mounts-points.html

.. http://support.2brightsparks.com/knowledgebase/articles/211485-assigning-a-drive-letter-to-external-usb
.. http://www.tmsbackup.com/cms/index.php?id=652
.. http://www.techrepublic.com/blog/the-enterprise-cloud/use-mount-points-if-you-run-out-of-windows-drive-letters/
.. https://stackoverflow.com/questions/4652545/windows-what-happens-if-i-finish-drive-letters-they-are-26
.. https://technet.microsoft.com/en-us/library/cc938934.aspx
.. https://serverfault.com/questions/83165/mount-drive-with-two-drive-letters-instead-of-one
.. https://support.microsoft.com/en-us/kb/307889

http://www.zdnet.com/article/dear-microsoft-its-time-to-stop-using-drive-letters-and-whacks/

.. https://support.microsoft.com/en-us/kb/947021

    Volume mount points are robust against system changes that occur when devices
    are added or removed from a computer. 

https://technet.microsoft.com/en-us/library/Cc938934.aspx

---------------------
Filename restrictions
---------------------

In Linux and other Unix-derived operating systems,
the only `characters that cannot appear`_
in the name of a file or directory
are the slash ``/``,
which is used to delimit paths,
and the ASCII null ``\0``,
which is used to terminate strings in C. [#C_strings]_

.. _characters that cannot appear: https://stackoverflow.com/questions/1976007/what-characters-are-forbidden-in-windows-and-linux-directory-names

Windows has the same restrictions,
as well as many other `restrictions which are considerably more complex`_
and are partly the result
of `backwards compatibility with operating systems from the early 1970s`_.

.. _backwards compatibility with operating systems from the early 1970s: http://bitquabit.com/post/zombie-operating-systems-and-aspnet-mvc/
.. _restrictions which are considerably more complex: https://msdn.microsoft.com/en-us/library/windows/desktop/aa365247%28v=vs.85%29.aspx#naming_conventions

This has had long-term consequences,
such as imposing some `surprising restrictions on URLs`_
in Microsoft's web application framework, ASP.net
(these were `relaxed in a later version`_).

.. _surprising restrictions on URLs: https://stackoverflow.com/questions/987105/asp-net-mvc-routing-vs-reserved-filenames-in-windows
.. _relaxed in a later version: http://haacked.com/archive/2010/04/29/allowing-reserved-filenames-in-URLs.aspx/

Windows also does not permit filenames to contain colons,
due to their use in delimiting drive names like ``C:\``.
This causes issues in sharing files across platforms.

    For example, a UNIX file name can use a colon (:), but a Windows file name
    cannot use a colon (:). If a UNIX user attempts to create a file with a Windows
    illegal character on a Windows Services for UNIX network file system (NFS)
    share, the attempt is unsuccessful and the UNIX client computer receives an
    input or output error.

https://support.microsoft.com/en-us/kb/289627

This also makes filenames containing timestamps somewhat inconvenient.
Since filenames cannot contain colons,
an ISO 8601 timestamp such as ``1970-01-01T00:00:00Z``
cannot be part of a legal filename.
Windows software uses various workarounds,
such as removing the colon entirely
or replacing it with a similar-looking Unicode character. [#]_ [#]_ [#]_ [#]_ [#]_ [#]_ [#]_

(It should be acknowledged that on Linux
the names of directories in ``$PATH`` cannot contain colons either,
but such restrictions do not apply to filenames.)

.. [#] https://stackoverflow.com/questions/7874111/convert-datetime-now-to-a-valid-windows-filename
.. [#] https://stackoverflow.com/questions/11037831/filename-timestamp-in-windows-cmd-batch-script
.. [#] https://stackoverflow.com/questions/1642677/generate-unique-file-name-with-timestamp-in-batch-script
.. [#] https://serverfault.com/questions/16706/current-date-in-the-file-name
.. [#] https://serverfault.com/questions/292014/preferred-format-of-file-names-which-include-a-timestamp
.. [#] https://serverfault.com/questions/16706/current-date-in-the-file-name
.. [#] https://programmers.stackexchange.com/questions/61683/standard-format-for-using-a-timestamp-as-part-of-a-filename

.. [#C_strings] The wisdom of this decision is a matter of some debate.

   Dennis Ritchie has explained the `rationale for using a null-terminator`_:

       In BCPL, the first packed byte contains the number of characters in the string;
       in B, there is no count and strings are terminated by a special character,
       which B spelled ```*e'``. This change was made partially to avoid the limitation on
       the length of a string caused by holding the count in an 8- or 9-bit slot, and
       partly because maintaining the count seemed, in our experience, less convenient
       than using a terminator.

   `Null-terminated strings do have some drawbacks`_,
   such as making certain optimizations more difficult,
   and exposing unwary programs to buffer overflow bugs.

   On the other hand, length-prefixed strings such as those in Pascal
   tend to have their own difficulties,
   `such as storing strings of arbitrary length`_.

   In any case, both Linux and `Windows use null-terminated strings`_,
   as do other modern operating systems.

.. _rationale for using a null-terminator: https://stackoverflow.com/questions/4418708/whats-the-rationale-for-null-terminated-strings
.. _Null-terminated strings do have some drawbacks: https://queue.acm.org/detail.cfm?id=2010365
.. _such as storing strings of arbitrary length: https://www.lysator.liu.se/c/bwk-on-pascal.html
.. _Windows use null-terminated strings: http://blogs.msdn.com/b/oldnewthing/archive/2009/10/08/9904646.aspx


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
against Android manufacturers and `other companies`_ that use the Linux kernel's FAT drivers.

.. _third-party software: http://www.ext2fsd.com/
.. _almost all file systems: https://wiki.archlinux.org/index.php/file_systems
.. _Amiga file systems: http://www.tldp.org/FAQ/Linux-FAQ/partitions.html#can-linux-access-amiga-file-systems
.. _ongoing: http://www.forbes.com/sites/timworstall/2013/12/06/german-patent-ruling-threatens-microsofts-windows-phone-earnings-from-android/
.. _litigation: http://gizmodo.com/the-secret-android-patents-that-microsoft-forces-oems-t-1591338496
.. _other companies: http://arstechnica.com/information-technology/2009/02/microsoft-sues-tomtom-over-fat-patents-in-linux-based-device/

For the system partition,
Linux users can choose among the usual ext3 journaling filesystem
or
up-and-coming filesystems like `Btrfs`_.
Unlike FAT and NTFS filesystems, ext3 and Btrfs `do not require defragmentation`_.
Realistically, though, `defragmentation isn't that important for NTFS`_, either.

.. _Btrfs: https://btrfs.wiki.kernel.org/index.php/Main_Page
.. _NTFS and FAT: http://technet.microsoft.com/en-us/magazine/2007.11.desktopfiles.aspx
.. _do not require defragmentation: http://www.tldp.org/LDP/sag/html/filesystems.html#FRAGMENTATION
.. _defragmentation isn't that important for NTFS: http://blogs.msdn.com/b/e7/archive/2009/01/25/disk-defragmentation-background-and-engineering-the-windows-7-improvements.aspx

Finally, Linux permits unprivileged users to run their own filesystems via FUSE.
This has many practical benefits,
such as accessing cloud storage as if it were an ordinary directory.

There is a project to bring FUSE to Windows,
but it is no longer maintained
and its various forks are not as mature as the Linux implementation.

------------------
UTF-16, not UTF-8.
------------------

If the Windows API were designed today, it would most likely use `UTF-8`_.
The Unicode Consortium primarily `recommends UTF-16`_ for compatibility with Java and the Windows API.
Some `practical reasons for preferring UTF-8`_:

.. _UTF-8: http://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt
.. _recommends UTF-16: http://www.unicode.org/faq/programming.html#2
.. _practical reasons for preferring UTF-8: https://annevankesteren.nl/2009/09/utf-8-reasons

- It is a superset of ASCII, so it is backwards-compatible with existing text files.
- `Zero bytes do not appear`_ at any point in a valid UTF-8 representation, so ``strcpy()`` still works.
- It is `self-synchronizing`_, i.e. it is possible to resynchronize after a lost or corrupted code point without re-reading the entire string.
- It is more portable because it does not require a `byte-order mark`_ and is less likely to be mistaken for other encodings.
- Internet Explorer has been known to have `security issues with UTF-16`_.

.. _Zero bytes do not appear: https://docs.python.org/2/howto/unicode.html#encodings
.. _self-synchronizing: http://research.swtch.com/utf8
.. _byte-order mark: http://www.unicode.org/faq/utf_bom.html
.. _security issues with UTF-16: http://permalink.gmane.org/gmane.ietf.charsets/372

In principle, UTF-16 would have the advantage of constant time addressing of single characters,
but in practice most programming languages do not provide data types for this,
with the `exception of Go and rust`_.

.. _exception of Go and rust: http://lucumr.pocoo.org/2014/1/9/ucs-vs-utf8/

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

For example, there `a lot of different file formats`_ with a ``.dat`` file extension,
but only one application gets to open them by default.

.. _a lot of different file formats: http://filext.com/file-extension/dat

On Linux, `filetypes are determined`_ by a combination of
filesystem metadata,
heuristics based on file signatures (a.k.a "magic numbers"),
and sometimes file extension.

.. _filetypes are determined: http://www.howtogeek.com/192628/mime-types-explained-why-linux-and-mac-os-x-dont-need-file-extensions/
.. TODO: add more links about how Linux decides file formats.

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

--------------------------------------------
Ineffectual read-only permissions semantics.
--------------------------------------------

Permissions are a big topic in multi-user computing,
and both Linux and Windows have adapted over time,
each with various advantages and disadvantages. [#unix_groups]_ [#ntfs_permissions_flaw]_

However, here is a specific example
of a relatively simple, single-user permissions feature:
it is sometimes desirable to set old files as read-only,
so that they are still easily accessible,
but are less likely to be accidentally deleted, moved, or modified.

Unfortunately, while the contents of read-only files on Windows cannot be changed,
the files themselves `can be moved, renamed, or deleted`_,
because `folders cannot have a read-only status`_.

.. _can be moved, renamed, or deleted: http://windows.microsoft.com/en-us/windows7/prevent-changes-to-a-file-by-setting-it-to-read-only
.. _folders cannot have a read-only status: http://windows.microsoft.com/en-us/windows-vista/prevent-changes-to-a-file-or-folder-read-only

In Linux, by contrast, a read-only directory cannot have files added to it,
and files in such a directory cannot be moved, renamed, or deleted
without first removing the read-only status from the directory they are in.
Modifications of the contents of the files depend on the the individual file permissions.

.. [#unix_groups] Unix permissions, for example, are not a panacea: https://unix.stackexchange.com/questions/164303/single-user-for-sharing-vs-multiple-users
.. [#ntfs_permissions_flaw] NTFS permissions have their own issues, e.g. https://serverfault.com/questions/31709/how-to-workaround-the-ntfs-move-copy-design-flaw

++++++++++++++++++++++++++++++++++++++++++++++++++
Architectural deficiencies of the Windows platform
++++++++++++++++++++++++++++++++++++++++++++++++++

These are limitations of the Windows platform
which are not intrinsic to the operationg system,
but nevertheless cause problems.

--------------------------------
Limited default debugging tools.
--------------------------------

.. TODO: Using the informal you here seems to be the only option.
   Everything else I can think of is too awkwardly phrased.

Windows has limited facilities for debugging a running process.
You can `analyze the wait chain`_, or, failing that, `create a dump file`_.

.. _analyze the wait chain: https://superuser.com/questions/497621/what-is-the-analyze-wait-chain-in-task-manager
.. _create a dump file: https://support.microsoft.com/en-us/kb/931673

On Linux, you can attach the ``gdb`` debugger `to a running process`_,
start a logfile that catches all the output,
and run a backtrace when the program fails
(it's better with debugging symbols, though).

.. _to a running process: http://ftp.gnu.org/old-gnu/Manuals/gdb-5.1.1/html_node/gdb_22.html

Alternately, if the process is already unresponsive,
you can attach ``strace`` and see what system calls it makes,
and observe how it responds to various kill signals.

There are plenty of Windows programs similar to ``gdb`` and ``strace``, [#]_ [#]_ [#]_
but they don't come installed by default,
whereas both ``strace`` and ``gdb`` come with almost all Linux distributions,
so system administrators can rely on being able to use them on nearly any Linux box.

.. [#] http://msdn.microsoft.com/en-us/library/windows/hardware/ff551063(v=vs.85).aspx
.. [#] http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx
.. [#] http://www.intellectualheaven.com/default.asp?BH=projects&H=strace.htm

---------------------------------
Restrictive default file locking.
---------------------------------

.. TODO: Add more sources to this.

Windows applications `lock files they use by default`_,
so `file access is a nuisance`_ by default.
If an application is misbehaving
and you want to examine a file it is using,
this is generally blocked
until the application is killed.

.. _lock files they use by default: https://en.wikipedia.org/wiki/File_locking#In_Microsoft_Windows
.. _file access is a nuisance: https://stackoverflow.com/questions/546504/how-do-i-make-windows-file-locking-more-like-unix-file-locking

By contrast,
on Linux it is not unusual for two different applications
to share read access to the same file,
or for one process to read a file
while another process is writing to it,
since applications do not lock files by default.

----------------------------
No choice of window manager.
----------------------------

The Linux kernel does not require a particular desktop environment,
or indeed any graphical desktop at all.
However, Linux desktop users generally run graphical user interfaces managed by the X server.
There are are many, many options
for `desktop environment`_ and `window manager`_ on Linux.

.. _desktop environment: http://en.wikipedia.org/wiki/Comparison_of_X_Window_System_desktop_environments
.. _window manager: http://en.wikipedia.org/wiki/Comparison_of_X_window_managers

.. TODO: Make this part more specifically about needing keyboard for initial setup.
.. connect a monitor, keyboard, and mouse for the initial setup; then disconnect them and use them elsewhere.
.. http://windowssecrets.com/top-story/a-cheap-effective-home-server-using-windows-8/

Microsoft does not provide the `Windows NT desktop window manager`_ and `Windows NT kernel`_ separately;
the window manager is a `tightly coupled`_ component of the kernel,
and as of Windows 8 the `DWM cannot be disabled`_, even for servers.

.. _Windows NT desktop window manager: https://msdn.microsoft.com/en-us/library/aa969540.aspx
.. _Windows NT kernel: https://channel9.msdn.com/Shows/Going+Deep/Windows-Part-I-Dave-Probert#53470
.. _tightly coupled: http://en.wikipedia.org/wiki/Window_manager#Microsoft_Windows
.. _DWM cannot be disabled: https://msdn.microsoft.com/en-us/library/windows/desktop/hh848042%28v=vs.85%29.aspx

While there are a number of `alternative shells`_ and `visual themes`_ for Windows,
the underlying windowing system is the same.

.. _alternative shells: https://en.wikipedia.org/wiki/List_of_alternative_shells_for_Windows
.. _visual themes: https://en.wikipedia.org/wiki/Theme_%28computing%29#Operating_systems

~~~~~~~~~~~~~~~~~~~~~~~~~~~
Non-resizable dialog boxes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The window manager monoculture means that accessibility improvements
and user interface customization can be difficult to implement.

For example, Windows presents many configuration options in non-resizable dialog boxes.
This can pose user-interface problems,
especially on high-resolution monitors. [#changing_size_of_window]_ [#cannot_resize_small_windows]_

One solution to this problem is to download and run a third-party background process
that tracks every single time a window is resized. [#resize_non_resizable_windows]_ [#turn_non_resizable_windows]_ [#ResizeEnable]_

The README is not directly linkable via URL,
so here are some of the salient parts::

    =============================================================================================
    What is ResizeEnable
    =============================================================================================
    It's a very ugly system hack that sits in your system tray and attempts to make windows
    that can't usually be resized, resizeable.
    
    
    =============================================================================================
    Why was it written?
    =============================================================================================
    It was written following a request from a friend. He runs his PC at a screen resolution above
    1280x1024, and was fed up with having to pick items from a list that could only display three
    items because the window didn't take into account the screen resolution, hence only occupying
    about 20% of the desktop 'real-estate'.
    
    
    =============================================================================================
    How does it work?
    =============================================================================================
    ResizeEnable sits in the background and attaches itself into Windows via three 'Hooks'.
    The first hook is so that it can see which windows are created/destroyed, in which it attempts
    to alter the window's style so that it can be resized.
    The second hook intercepts all messages for every single window to see if it is a message
    associated with resizing a window that it has previously altered the style of. If the message
    is associated with sizing, it then resizes all the child windows (Buttons, Edit boxes and so on)
    simply by scaling them to fit the new windows size. Its ugly, but most of the time it works ok.
    The third hook spots whether the mouse has been pressed in the 'sizing area' of a window and
    takes care of doing all the work of resizing the window. This hook didn't exist in v1.0 but
    has been added to make even more windows resize properly.

There are some drawbacks to this approach::

    =============================================================================================
    Known problems
    =============================================================================================
    1) Most applications will respond to having their windows resized ok. Well, applications that
    	have followed the guidelines will. <grin>
    2) Some applications have, shall we say, problems, when their window has been resized and all
    	sort of visual chaos will be revealed.
    3) Some applications won't respond at all, which is rather strange!
    4) Certain windows will 'jiggle' as you attempt to resize them, seemingly resizing and then
    	snapping back to their original size. This is annoying, but we're not sure what is
    	causing it.
    5) Some versions of Internet Explorer, coupled with certain version of Windows98/NT seemed to
    	crash with v1.0 of ResizeEnable. We don't have that setup on any of our test machines
    	so we can't test it. But, we have done a little bit more work so ResizeEnable is a
    	bit more choosy as to which windows it can work with. So it -might- not crash anymore.
    	If it still crashes, then all we can suggest at the moment is that you upgrade to
    	Internet Explorer 6. We're not Microsoft pushers, but Internet Explorer 6 has better
    	error reporting and shouldn't just explode without warning.
    6) Some Microsoft applications have dialogs that can be resized, but none of their contents
    	move. This is down to the fact that the contents of the dialog ARE NOT STANDARD
    	MICROSOFT CONTROLS! They are some bastardisation written specially for the application.
    	They may look like normal buttons/drop downs, but they sure as heck aren't! Hence,
    	ResizeEnable can't tell them to move or resize. Yet again, Microsoft ignore their own
    	codebase and reinvent the wheel. And people wonder why their applications are so big..

.. [#changing_size_of_window] http://windows.microsoft.com/en-us/windows/working-with-windows#1TC=windows-7&section_3
.. [#cannot_resize_small_windows] http://answers.microsoft.com/en-us/windows/forum/windows_7-desktop/cannot-resize-small-windows/160862cf-6e52-4a99-9365-d380491a067d
.. [#resize_non_resizable_windows] http://www.thewindowsclub.com/resize-non-resizable-windows
.. [#turn_non_resizable_windows] http://www.howtogeek.com/howto/11799/turn-non-resizeable-windows-into-rezieable-windows/
.. [#ResizeEnable] http://www.digitallis.co.uk/pc/ResizeEnable/index.html

~~~~~~~~~~~~~~~
Update inertia.
~~~~~~~~~~~~~~~

Another consequence of the single integrated window manager
is that Windows users are resistant to change user interfaces,
and so Microsoft tends to be slow to release improvements that require changes to the user interface.

***
UAC
***

For example, `users run as administrator by default in Windows XP`_ and earlier.
Microsoft fixed this problem via `User Account Control`_ when Windows Vista was released,
but the required changes to the window manager were more than a little controversial [#]_ [#]_ [#]_ [#]_,
so much so that many users learned to ignore it or turned it off entirely.

.. _User Account Control: http://technet.microsoft.com/en-us/magazine/2007.06.uac.aspx
.. _users run as administrator by default in Windows XP: https://msdn.microsoft.com/en-us/library/bb530410.aspx#vistauac_topic1

Despite Microsoft ending support for Windows XP in April 2014,
a `large number of users are still running Windows XP in 2015`_,
many of them as administrators.

.. _large number of users are still running Windows XP in 2015: https://redmondmag.com/articles/2015/04/08/windows-xp-usage.aspx

.. [#] http://www.computerworld.com/article/2477832/desktop-apps/microsoft-exec--we-know-users-hate-uac.html
.. [#] http://arstechnica.com/security/2008/04/vistas-uac-security-prompt-was-designed-to-annoy-you/
.. [#] http://windowssecrets.com/woodys-windows/microsoft-claims-windows-7-uac-flaw-is-by-design/
.. [#] http://windowsitpro.com/blog/microsoft-quotmalware-authors-really-hate-uacquot


*********
Windows 8
*********

As another example,
the transition from Windows 7 to Windows 8 was controversial,
because the Metro user interface departed substantially from the historical Windows desktop. [#]_ [#]_ [#]_ [#]_ [#]_ [#]_

Enterprise customers, in particular,
refused to upgrade from Windows 7,
citing usability problems. [#]_ [#]_

These examples are relevant not because they show that Microsoft makes occasional mistakes,
but to highlight the risks of monoculture and vendor lock-in
and to provide contrast to the way that the Linux ecosystem maintains checks and balances.

Linux users can, if they wish,
install a recent kernel and up-to-date applications
together with a window manager `under maintenance`_ `since 1987`_,
and `a non-negligable number do exactly that`_.

.. _under maintenance: https://tracker.debian.org/pkg/twm
.. _since 1987: https://en.wikipedia.org/wiki/Twm
.. _a non-negligable number do exactly that: https://qa.debian.org/popcon.php?package=twm

This reflects a general dislike of forced breaking changes.
When the GNOME developers made controversial changes [#]_ [#]_ [#]_ in GNOME 3,
a team forked GNOME 2 to become `MATE`_,
which retained the "traditional desktop metaphor".
This would be impossibly difficult if GNOME 2
were the desktop environment of a proprietary operating system.

.. _MATE: http://mate-desktop.org/

A fork like MATE will either `eventually fade away`_,
continue to `coexist with its parent project`_,
or even `overtake its parent`_,
depending on the needs of its users.

.. _eventually fade away: http://crunchbang.org/forums/viewtopic.php?id=38916
.. _coexist with its parent project: https://en.wikipedia.org/wiki/OpenBSD
.. _overtake its parent: http://www.softpanorama.org/People/Stallman/history_of_gcc_development.shtml

.. [#] http://www.washingtonpost.com/blogs/the-switch/wp/2014/02/14/8-things-i-hate-about-windows-8-1/
.. [#] http://www.forbes.com/sites/tonybradley/2014/03/19/im-sorry-the-windows-8-hate-just-doesnt-make-sense/
.. [#] http://www.smh.com.au/digital-life/computers/hate-windows-8-microsoft-replacing-it-with-windows-9-20140122-317fo.html
.. [#] http://bgr.com/2013/12/04/windows-8-hatred-explained/
.. [#] http://www.maximumpc.com/article/features/8_things_we_hate_about_windows_841
.. [#] http://answers.microsoft.com/en-us/windows/forum/windows_8-windows_install/i-hate-windows-8/cd2d9fec-9d95-42ba-9e41-727419459465
.. [#] http://www.forbes.com/sites/adriankingsleyhughes/2013/05/19/why-enterprise-is-avoiding-windows-8/
.. [#] http://www.nngroup.com/articles/windows-8-disappointing-usability/
.. [#] http://www.zdnet.com/article/linus-torvalds-would-like-to-see-a-gnome-fork/
.. [#] https://felipec.wordpress.com/2011/06/16/after-two-weeks-of-using-gnome-3-i-officially-hate-it/
.. [#] https://lwn.net/Articles/433409/

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Crippled multi-user remote access.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Windows remote desktop licensing`_ makes multi-user remote access
and sharing of machine resources expensive.
By design, multiple concurrent sessions are disabled
on all but the server version of Windows,
and `third-party remote desktop software is not permitted`_
to legally `circumvent this limitation`_. [#]_ [#]_ [#]_

.. _Windows remote desktop licensing: http://technet.microsoft.com/en-us/library/cc725933.aspx
.. _third-party remote desktop software is not permitted: http://superuser.com/questions/784523/tightvnc-while-an-rdp-session-is-running
.. _circumvent this limitation: http://lifehacker.com/5873717/enable-concurrent-remote-desktop-sessions-in-windows-with-this-patch

Note that this is a licensing issue,
not a technical limitation of Windows itself,
but it compromises the utility of the operating system.

Because Linux is multi-user by design,
`multiple local instances of the X server`_ are not unusual,
even with different desktop environments
(e.g. GNOME and KDE can coexist on the same Linux box).
X sessions can be accessed remotely using e.g. `VNC`_ or `X over SSH`_.
It is common for two different users to work remotely
at the same time on the same machine.

.. _multiple local instances of the X server: http://journalxtra.com/linux/desktop/multiple-desktops-on-one-linux-pc-now-thats-greedy/
.. _VNC: https://wiki.debian.org/VNCviewer
.. _X over SSH: https://www.debian.org/doc/manuals/debian-reference/ch07.en.html#_connecting_a_remote_x_client_via_ssh

A `multiseat`_ configuration is also possible if the hardware is available.
Even on single-user machines this capability of the X server is useful to e.g. run two different desktop environments at the same time.

.. _multiseat: https://wiki.archlinux.org/index.php/xorg_multiseat

Also, sometimes Linux users will forego the X server entirely
and log in from a text-only `virtual terminal`_ (a.k.a ``tty``).
This is important to be able to do
if the X server crashes or cannot start.

.. _virtual terminal: http://en.wikipedia.org/wiki/Virtual_console

Because the Linux kernel does not rely on the X server to function,
the X server can be restarted without rebooting.

If a crash is unrecoverable and it becomes necessary to reboot the kernel,
one can do so cleanly even if the X server is unresponsive
by using the "`Magic Alt-SysRq keys`_",
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

However, X11 has become so pervasive
that versions of it power not only Linux desktops
but also the BSD family of operating systems and OS X (`XQuartz`_),
and it's also been `ported to Windows`_ `and Android`_,
even though they don't use it as a display manager.

.. _XQuartz: http://xquartz.macosforge.org/landing/
.. _ported to Windows: http://sourceforge.net/projects/xming/
.. _and Android: https://play.google.com/store/apps/details?id=net.sourceforge.x11basic

.. [#] "You would think that because Windows XP is multiuser, you could have multiple users running VNC servers. Indeed you can, but you can only use the one that has the currently active user - switch away, and that server goes black, and in my testing, can't even be used again. Windows XP is not really multiuser." http://aplawrence.com/Reviews/tightvnc.html
.. [#] "Windows, unless you're using Terminal Server (and have the licenses to go with it) doesn't have this capability, and I don't believe that even with Terminal Server, VNC will be able to take advantage of this." http://tightvnc.10971.n7.nabble.com/Multiple-Unique-Sessions-td2060.html
.. [#] "If you heard about/saw many active desktop sessions in non-server Windows - that was modified OS with swapped termsrv.dll. Licensing does not allow you to modify/swap system files and use non-server system that way and this is ILLEGAL." http://stackoverflow.com/questions/9410091/multi-user-login-remote-desktop-on-windows-linux

--------------------------
Some notes on performance.
--------------------------

So far, we have avoided the topic of performance almost entirely.

This is because evaluating and comparing performance
is a complex and nuanced topic,
incorporating at the very least hardware-specific considerations
and deep knowledge of every level of software.

It also incorporates psychology,
since people don't care if software has good performance
if they `don't perceive it to have good performance`_.

.. _don't perceive it to have good performance: https://developers.google.com/speed/articles/usability-latency

As a result,
unqualified generalizations about the performance
of complex software such as an operating system
are nearly always wrong.

There are some things, however, that we do know
about relative performance of the Windows and Linux kernels.

First, an `anonymous Windows kernel developer stated`_ in 2013
that he believes that Windows has fallen behind in performance
because of how Microsoft functions as a corporation.
(This developer gave a SHA1 hash of part of the NT kernel as proof,
which while not incontrovertible is certainly strong evidence
that he is who he claims to be.)

    Windows is indeed slower than other operating systems in many scenarios,
    and the gap is worsening. The cause of the problem is social. There's
    almost none of the improvement for its own sake, for the sake of glory,
    that you see in the Linux world.
    
    Granted, occasionally one sees naive people try to make things better.
    These people almost always fail. We can and do improve performance for
    specific scenarios that people with the ability to allocate resources
    believe impact business goals, but this work is Sisyphean. There's no
    formal or informal program of systemic performance improvement. We started
    caring about security because pre-SP3 Windows XP was an existential threat
    to the business. Our low performance is not an existential threat to the
    business.

    -- Anonymous Windows NT kernel developer
    
.. _anonymous Windows kernel developer stated: http://blog.zorinaq.com/?e=74


Contrast with Microsoft's `"Linux Myths" article`_ from 1999.

    Myth: Linux performs better than Windows NT

    Reality: Windows NT 4.0 Outperforms Linux On Common Customer Workloads

    The Linux community claims to have improved performance and scalability in
    the latest versions of the Linux Kernel (2.2), however it's clear that
    Linux remains inferior to the Windows NT® 4.0 operating system.

.. _"Linux Myths" article: https://web.archive.org/web/20000303020855/http://www.microsoft.com/NTServer/nts/news/msnw/LinuxMyths.asp

A decade later, `Microsoft contributed device driver code`_ to the Linux kernel.

.. _Microsoft contributed device driver code: http://www.microsoft.com/en-us/news/features/2009/jul09/07-20linuxqa.aspx

Secondly, testing and optimizing on multiple platforms
can yield unexpected performance benefits for both operating systems.
When Valve `ported Left 4 Dead 2 to Linux`_ in 2012,
they discovered that OpenGL on Windows and Linux
achieved a higher framerate than Direct3D on Windows.

    After this work, Left 4 Dead 2 is running at 315 FPS on Linux. That the
    Linux version runs faster than the Windows version (270.6) seems a little
    counter-intuitive, given the greater amount of time we have spent on the
    Windows version. However, it does speak to the underlying efficiency of the
    kernel and OpenGL. Interestingly, in the process of working with hardware
    vendors we also sped up the OpenGL implementation on Windows. Left 4 Dead 2
    is now running at 303.4 FPS with that configuration.

    -- Valve Linux Team

.. _ported Left 4 Dead 2 to Linux: http://blogs.valvesoftware.com/linux/faster-zombies/

.. TODO: should I talk more about this?

+++++++++++++++++++++++++++++++++++++
Configuration and software packaging.
+++++++++++++++++++++++++++++++++++++

-----------------
Default software.
-----------------

Linux distributions have development tools installed by default,
such as a C compiler (usually ``gcc``),
build automation (e.g. ``make``),
text utilities (``diff``, ``patch``, ``grep``, ``find``, etc.),
and more than one shell (e.g. ``bash``, ``dash``, and ``csh``).
In fact, they are required to provide these tools by the `POSIX standard`_.
Standards like POSIX make writing and using portable software easier,
and standard POSIX tools are unlikely to become obsolete.

.. _POSIX standard: http://pubs.opengroup.org/onlinepubs/009696699/utilities/contents.html

On Windows, by contrast,
neither the `C compiler and build system`_
nor the currently favored Windows shell (`PowerShell`_)
are installed by default.

.. _C compiler and build system: http://msdn.microsoft.com/en-us/vstudio/
.. _PowerShell: http://technet.microsoft.com/en-us/library/hh847837.aspx

------------------------
Registries and dotfiles.
------------------------

On Windows, configuration files are not centralized in the user's home directory.
Most of the things that users care about
--- not losing configuration between installs ---
are scattered around as ``.INI`` text files
in various directories or in the `Windows Registry`_.
This makes configuration less robust
and harder to adapt to the needs of specific users.
Windows developers have noted the `many other drawbacks`_ `of the registry`_.

.. _Windows Registry: http://msdn.microsoft.com/en-us/library/ms970651.aspx
.. _many other drawbacks: https://rwmj.wordpress.com/2010/02/18/why-the-windows-registry-sucks-technically/
.. _of the registry: http://blog.codinghorror.com/was-the-windows-registry-a-good-idea/

On Linux, most configuration can be done graphically
within applications or configuration managers provided by the desktop environment.
A lot of it is handled by the `package manager`_.
However, there are a variety of possibilities depending on the needs of the people using it.

.. _package manager: `Package manager with signed binaries.`_

System administrators, for example,
care about system-level configuration files,
generally text files in ``/etc/``.
Text files are simple to edit for ad-hoc debugging and automation,
easy to diff,
easy to backup or version control,
and robust against corruption.

User level configuration is stored in dotfiles (hidden folders or files)
in the user's home directory.
There are good arguments to the effect that
making dotfiles responsible for configuration `is problematic`_.
Configuration files would make much more sense
if stored in a dedicated configuration folder in the user's home directory,
and indeed some applications are `beginning to standardize on this`_.
In the meantime, however, dotfiles do the job, cluttered as they are,
since each user's files and configuration
is isolated to his or her home directory.

.. _is problematic: https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp
.. _beginning to standardize on this: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html

Centralized databases like the Windows Registry
are usually unnecessary for configuration.
Applications for which text files are a bad choice,
e.g. ones which need random access to large amounts of structured data
or which require atomic updates,
can use, for example, `an SQLite database`_ in the user's home directory.
In a similar vein, the GNOME desktop provides `dconf`_,
which is probably the closest thing to a Windows Registry
that Linux has.

.. _dconf: https://wiki.gnome.org/Projects/dconf
.. _an SQLite database: http://kb.mozillazine.org/Places.sqlite

Moreover, using ordinary files instead of a database
for application configuration has many benefits.
Since many configuration files on Linux are `textual`_,
they are easy to modify,
back up,
and ``diff`` or merge,
which means users can share and benefit from others' customized configurations
and more easily accommodate upstream changes.

.. _textual: http://catb.org/~esr/writings/taoup/html/textualitychapter.html

It also means that migrating to a different Linux distribution
is not as painful as starting from scratch,
since many applications keep the configuration formats relatively stable
and merging in the customizations is usually straightforward.
During major Debian upgrades, for example,
administrators can choose to
adopt new configuration files,
keep the old ones,
or ``diff`` and merge the files into a hybrid.

In short, configuration on Linux
is better adapted to the needs of its users than on Windows.
Ordinary users have the package manager
or applications themselves for managing configuration,
developers who like to keep their configuration under version control
can use tools like `GNU Stow`_,
and system administrators can use
dedicated configuration management tools like
`Puppet`_, `Chef`_, `Ansible`_, `SaltStack`_, etc.

.. _GNU Stow: http://www.gnu.org/software/stow/
.. _Puppet: http://puppetlabs.com/
.. _Chef: https://www.getchef.com/
.. _Ansible: http://www.ansible.com/
.. _SaltStack: http://www.saltstack.com/

-------------------------------------
Package manager with signed binaries.
-------------------------------------

Windows Installer is a software package manager
in the sense of installing and uninstalling software,
but it does not provide the salient features
of modern Linux packaging systems,
such as:

- securely retrieving the package from a trusted remote or local repository,
- adding and removing third-party repositories,
- changelogs,
- `optional fully automatic non-interactive installation`_,
- `mandatory cryptographic signing of packages`_, [#]_
- backporting security fixes to stable versions,
- licensing metadata,
- and `sophisticated dependency management`_.

.. [#] Windows provides the means to cryptographically sign ``.exe`` and ``.msi`` installers, but it is not required for installation. "The Windows installer verifies signatures on .msi packages. If a package has an invalid signature, the installer warns users before it installs the package." http://download.microsoft.com/download/a/f/7/af7777e5-7dcd-4800-8a0a-b18336565f5b/best_practices.doc
.. _mandatory cryptographic signing of packages: http://purplefloyd.wordpress.com/2009/02/05/signing-deb-packages/
.. _sophisticated dependency management: https://www.debian.org/doc/debian-policy/ch-relationships.html
.. _optional fully automatic non-interactive installation: http://debian-handbook.info/browse/wheezy/sect.automatic-upgrades.html

Now, there is an open-source package manager for Windows, `Chocolatey`_,
that is under active development.
However, thus far the Chocolatey repository
is not as comprehensive as Linux repositories.
Here are some examples of packages
which are not in the Chocolatey repository (as of July 2015).

- `Apophysis`_ fractal flame editor `* <http://chocolatey.org/packages?q=apophysis>`__
- `xyscan`_ data extractor `* <https://chocolatey.org/packages?q=xyscan>`__
- `HEPHAESTUS`_ periodic table for X-ray spectroscopy `* <https://chocolatey.org/packages?q=HEPHAESTUS>`__
- `EXPGUI`_ XRD analysis `* <https://chocolatey.org/packages?q=EXPGUI>`__
- `DiffPDF`_ PDF comparison `* <http://chocolatey.org/packages?q=DiffPDF>`__
- `Unison`_ file synchronizer `* <http://chocolatey.org/packages?q=Unison>`__
- `xchat`_ IRC client `* <http://chocolatey.org/packages?q=xchat>`__

.. _Chocolatey: http://chocolatey.org/
.. _Apophysis: http://www.apophysis.org/
.. _xyscan: http://star.physics.yale.edu/~ullrich/xyscanDistributionPage/
.. _HEPHAESTUS: http://cars9.uchicago.edu/~ravel/software/doc/Hephaestus/hephaestus.html
.. _EXPGUI: https://subversion.xor.aps.anl.gov/trac/EXPGUI
.. _DiffPDF: http://www.qtrac.eu/diffpdf.html
.. _Unison: http://www.cis.upenn.edu/~bcpierce/unison/
.. _xchat: http://xchat.org/download/

(This list isn't particularly significant,
it's just example open-source software that I happen to use
which has a Windows version.)

Also, the Chocolatey development team acknowledges
that it `does not currently have package moderation or package signing`_ in place yet,
which is significant for overcoming Window's issue
with `installing software from untrusted sources`_.

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
This is one reason Linux users are less susceptible to malware:
they generally install packages
that are cryptographically signed by the maintainers,
not opaque executables from a website
which may or may not use secure HTTP.
Even inexperienced users can safely install and uninstall software
if it is all from a trusted repository.

Package managers have other benefits,
such as avoiding dependency hell
while saving the disk space of duplicated libraries.
Package managers have decent (though not perfect) security,
and provide the ability to upgrade all software at once with a single command
(or button if you use one of the many available GUIs).
Instead of requiring all application developers to re-implement automatic updates,
packaging makes secure, regular updates
much more accessible and convenient for users and developers.

Package mangers can make backups easier
by decoupling installed applications from stored personal files.

Want to remember which programs you have installed
without backing up every single binary?
Just save the output of ``dpkg -L`` or its equivalent
as a text file of installed packages,
and voilà, you can restore them later.

If your backup fails
or you just want to switch
to a different Linux distribution
with the same package manager,
you can easily get back your installed software
by feeding your package manager the package list.
All you need is a fresh Linux install
and a good internet connection.
Meanwhile, you can keep your home directory backed up
using cloud storage or physical drives (ideally both),
and the backup software doesn't need to run as root
since it's only accessing your home directory.

Packaging also makes distributing scripts with library dependencies easier.
For example, installing ``python`` and ``matplotlib`` is simple on Linux,
but a `pain in the neck`_ on Windows.

.. _pain in the neck: http://matplotlib.org/users/installing.html#windows

------------------------------------------------------------
Fixing configuration problems with commands instead of GUIs.
------------------------------------------------------------

Graphical user interfaces are excellent for some kinds of software,
but they are clumsy and error-prone
for rapidly fixing configuration problems.
Many Linux config problems can be fixed
by editing a line in a text file
or running a few commands in a terminal.
Windows configuration generally requires navigating deeply nested GUIs
and ticking various checkboxes.
This has similar security problems
to blindly running commands in a terminal,
but in a way that is much less efficient
for doing routine configuration tasks.

    Graphical user interfaces (GUIs) are helpful for many tasks, but they are
    not good for all tasks. I have long felt that most computers today do not
    use electricity. They instead seem to be powered by the "pumping" motion of
    the mouse! Computers were supposed to free us from manual labor, but how
    many times have you performed some task you felt sure the computer should
    be able to do? You ended up doing the work by tediously working the mouse.
    Pointing and clicking, pointing and clicking.

    -- William E. Shotts, Jr. "`Learning the shell`_"

.. _Learning the shell: http://linuxcommand.org/learning_the_shell.php

In addition, using GUIs for configuration
makes user support and documentation significantly more time-consuming.
Text is easier to automate, store, transmit, index, and search
than screenshots or ad-hoc notations
like ``Tools -> Options -> General Options -> ...``

.. TODO: discuss specific comparisons of fixing comparable configuration issue on Linux and Windows.

The emphasis on textuality also makes diagnosing problems easier.
For example, want to see which displays you're connected to? Run ``xrandr``.
Want to see what USB devices are connected? Run ``lsusb``.
Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.

Another benefit of textuality
is using search engines to find similar problems.
Many a Linux user has thought they had found a new bug,
only to run a quick web search
that turned up dozens of users with the same issue.
(The `Arch Linux BBS forum`_ and bug tracker, for example,
tends to be `ahead of the curve`_ on bug reports.)

.. TODO: Find a better example of Arch Linux being ahead of the curve.

.. _Arch Linux BBS forum: https://bbs.archlinux.org/
.. _ahead of the curve: https://bugs.archlinux.org/task/40444

Finally, software configuration can be kept or removed easily.
When uninstalling a software package on Debian Linux,
the user may either also wipe the system configuration (via ``apt-get purge``)
or leave the configuration in place when the application is installed again (via ``apt-get remove``).

----------------------
Remote administration.
----------------------

Accessing a Windows machine remotely
generally requires remote desktop software.
While it is possible to install an SSH server,
this must installed and configured on each machine;
there is no built-in secure shell access
on a vanilla Windows box.

In addition, Windows machines `do not respond to`_ ``ping`` (ICMP) by default.
Arguably, this is the wrong choice. [#firewall_icmp]_  [#block_icmp]_

.. _do not respond to: http://msdn.microsoft.com/en-us/library/ms912869(v=winembedded.5).aspx

By contrast, nearly all Linux machines respond to ``ping``
and most allow ``ssh`` for remote access.
Combined with the use of text files for configuration
and the simplicity of package management,
many tech support and remote administration tasks
are easier and faster to resolve
when accessing a remote machine running Linux.

.. [#firewall_icmp] http://security.stackexchange.com/questions/22711/is-it-a-bad-idea-for-a-firewall-to-block-icmp
.. [#block_icmp] http://serverfault.com/questions/84963/why-not-block-icmp

++++++++++++++++++
Cultural problems.
++++++++++++++++++

It might appear at this point
that we are throwing objectivity to the wind,
but these are practical issues caused by cultural differences,
not subjective criticism of Linux/Unix culture vs. Microsoft Windows culture.

--------------------
Public bug trackers.
--------------------

Windows and proprietary software in general
do not usually maintain a public bug tracker,
although there are exceptions [#microsoft_connect]_ [#adobe_bugs]_ [#foldit_bugs]_.
Software companies have strong incentives
to keep their issue tracking systems internal
due to things like
customer confidentiality,
security,
and public relations.

Because bug trackers for proprietary software are not public,
it can be hard to for a user to discern
if their problem is shared by others,
what they can do to fix it,
and whether or not a bug has been fixed in the latest version.

For this reason, many companies maintin a large user support staff.
The inefficiencies and pitfalls of this are evident
to anyone who's had to set up their home internet connection before.
Some companies complement user support with user forums,
which have the same `issues with signal-to-noise ratio`_ that most forums have.

.. _issues with signal-to-noise ratio: http://blog.codinghorror.com/civilized-discourse-construction-kit/

By contrast, projects like the Linux kernel and the Debian project
maintain accountability and clarity
by publically tracking and acknowledging bugs,
even when it is embarrassing to do so
[#brown_paper_bag_release]_ [#runs_rm_r_as_root]_.

.. [#microsoft_connect] https://connect.microsoft.com/
.. [#adobe_bugs] https://bugbase.adobe.com/
.. [#foldit_bugs] http://fold.it/portal/node/986241
.. [#brown_paper_bag_release] http://lwn.net/1999/0204/kernel.php3
.. [#runs_rm_r_as_root] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=155873

.. TODO: http://serverfault.com/questions/403732/anyone-else-experiencing-high-rates-of-linux-server-crashes-during-a-leap-second/
.. http://www.somebits.com/weblog/tech/bad/leap-second-2012.html

-----------------
Debugging habits.
-----------------

By `requiring`_ or encouraging `reboots`_
for installing software or changing configuration,
Windows encourages bad habits
such as restarting software to make a bug go away,
or avoiding using parts of an application as a work-around,
rather than reproducing and reporting bugs.

.. _requiring: http://www.howtogeek.com/182817/htg-explains-why-does-windows-want-to-reboot-so-often/
.. _reboots: http://www.howtogeek.com/howto/31204/why-do-application-installs-make-you-reboot-and-close-other-apps/

In the long run,
this hurts both proprietary and open-source software
on the Windows platform.
It is also one reason why developing solely for Windows
because of the larger user base
may not always be a good choice.

--------
Malware.
--------

In principle, Linux and Windows users
are equally `susceptible to malware`_.
Android, for example, runs on the Linux kernel,
and there is plenty of malware that targets it.

.. http://www.linux.org/threads/android-malware.7836/
.. http://www.firstpost.com/business/gunpoder-new-android-malware-targets-users-not-residing-china-2339516.html

In practice, though, Windows users are `more likely`_
to inadvertently install malware,
primarily because of the way they install non-malicious software
(see `notes on package management`_).
Requiring every computer user to do the work of package maintainers
is harmful in a variety of ways;
it tends to encourage a cargo-cult mentality toward security
instead of systematic root-cause analysis.

.. _susceptible to malware: http://www.linux.com/learn/tutorials/284124-myth-busting-is-linux-immune-to-viruses
.. _more likely: http://unix.stackexchange.com/questions/2751/the-myths-about-malware-in-unix-linux
.. _notes on package management: `Package manager with signed binaries.`_

As a result,

#. Windows users must spend `considerable time and effort`_ detecting and removing malware.
#. Windows users may `falsely attribute`_ `software misbehavior to malware`_.

.. _considerable time and effort: https://www.microsoft.com/security/portal/mmpc/shared/ransomware.aspx
.. _falsely attribute: http://www.combofix.org/suspect-a-malware-infection-heres-the-right-way-to-remove-it.php
.. _software misbehavior to malware: http://lifehacker.com/5958001/the-5-biggest-myths-about-slow-pcs-and-how-you-can-actually-fix-them

Some users may even attribute problems arising from failing hardware to malware.

This also has consequences for developers.
Because few Linux users experience problems due to malware,
they will report bugs caused by the actual applications,
not ones caused by malware.

Most Linux distributions have a better security model
which uses secure package installation by default,
but allows installing software from other sources as well,
unlike the overly restrictive app-store model
seen in more recent versions of Windows.

Finally, because Linux is a ubiquitous server operating system,
its security is under constant attack,
and Linux desktop users benefit from fixes to the vulnerabilities.
