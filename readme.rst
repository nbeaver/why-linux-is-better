.. -*- coding: utf-8 -*-

============================================
Objective reasons to prefer Linux to Windows
============================================

:Author: Nathaniel Beaver
:Date: September 20, 2014
:Copyright: This document is released under a `Creative Commons Attribution 4.0 International License`_.

.. _Creative Commons Attribution 4.0 International License: http://creativecommons.org/licenses/by/4.0/

.. |--| unicode:: U+2013   .. en dash
.. |---| unicode:: U+2014  .. em dash, trimming surrounding whitespace
   :trim:

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
|---| and not meant to be |---|
but aim to be representative.

This document will not cover servers, phones, or embedded devices.

This document  will not cover closed vs. open source development,
but will instead focus on functionality.
There is plenty of discussion of the advantages and disadvantages of open source elsewhere.

(Besides, what is there to discuss
when we now know that `even Microsoft loves open source`_?)

.. _even Microsoft loves open source: http://www.networkworld.com/article/2216878/windows/microsoft---we-love-open-source-.html

This discussion will only mention Microsoft and other companies
in so far as their actions are directly relevant
to the technically capabilities of Windows and Linux.

(As an aside, Microsoft gets a lot of guff in the open-source world,
but its behavior is typical for a corporation
whose a bottom line relies on sales of proprietary software and devices.
It's economics, not malice.)

The discussion is intended to be as accurate as possible,
at the cost of possible dryness due to technical detail.

I am most familiar with the Debian-based family of Linux distributions,
so my remarks will necessarily touch on these more,
but I have tried to include other distributions when possible.

In this document, the term "Linux" is shorthand for the entire distribution,
including bootloader, kernel, shell, window manager, package manager, etc.
Similarly, the term "Windows"
refers to all default components of modern versions of Microsoft Windows NT,
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
since comparisons of operating systems
tend to be vague, uninformed, or opinion-based.

Even people who know and use Linux by choice
may not do a good job of explaining its benefits to their colleagues
especially without putting down Windows users
or Windows applications in general.

Also, there are many open source alternatives to Linux on the desktop,
including a binary-compatible clone of Windows called `ReactOS`_.
If it were just a matter of being open source,
why bother with the additional effort to learn Linux?

.. _ReactOS: https://reactos.org/

Even if you don't use Linux or Windows,
it's useful to know where Linux has an edge,
since these issues are relevant to all operating systems.

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
  and possibly to challenge some misconceptions
  that people have about Linux and Windows.
- Corrections and additions are, of course, welcome.
  Windows developers are ones who know the most about its flaws and strengths.
- Finally, definitions of better and worse are necessarily subjective,
  despite the title's claim of objectivity.
  You may heartily disagree with substantial parts of what follows,
  but perhaps it may be useful to you, even so.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Intrinsic technical deficiencies of the Windows NT operating system
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This is a list of examples of specific limitations
that are the result of the Windows kernel or API.

-------------------------
Live booting limitations.
-------------------------

Windows LiveCDs, `though they do exist`_,
are hampered by licensing restrictions and technical limitations.

.. _though they do exist: http://en.wikipedia.org/wiki/Windows_Preinstallation_Environment

For example, `until Windows 8`_, desktop versions of Windows
could not boot from a USB.
(And while running a live USB of Windows 8,
it is still not possible to mount internal hard disks.)

.. _until Windows 8: http://technet.microsoft.com/en-us/library/hh831833.aspx

The `BartPE LiveCD building program`_
is 3rd party software that will run on any version of Windows,
but it is `only able to make`_ a LiveCD
for Windows XP or Windows Server 2003.

.. _BartPE LiveCD building program: http://en.wikipedia.org/wiki/BartPE
.. _only able to make: http://www.betaarchive.com/forum/viewtopic.php?t=22258

There is also the `WinBuilder`_ project,
which is the closest to a fully-functional LiveCD of modern Windows versions,
but installing software and drivers is still sometimes a challenge.

.. _WinBuilder: http://winbuilder.net/

    If the Virtual Machine fails don’t worry too much. Just because the Virtual
    Machine fails to boot right does not mean your boot media won’t work, I’ve
    seen odd results depending on the amount of memory the VM has and what
    drivers I load.

http://www.irongeek.com/i.php?page=security/winbuilder-win7pe-se-tutorial

The absence of fully functional live versions of Windows
makes it difficult to use for, e.g,
determining if a bug is due to hardware or software problems,
recovering data from a machine with filesystem corruption or bad disk sectors,
and testing out different versions of an OS
without making a new hard drive partition.

`Live versions`_ of Linux are full operating systems,
able to mount and repartition disks,
connect to the internet and run a web browser,
and even retain settings and data on the next boot-up
(for `persistent live USB flash drives`_).
This makes live versions of Linux useful for
recovering files from damaged hard drives,
making bootable backups of an entire drive,
scanning a disk for malware
without loading a potentially compromised operating system,
distinguishing hardware problems from software problems,
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

--------------------------------------
Virtualization and driver limitations.
--------------------------------------

Similar to live booting,
Linux is often run as a virtual machine,
and consequently it is well-adapted to changes in hardware.

An existing Linux partition on a physical hard drive
can, with some care, be virtualized and run on another machine,
a virtue which Windows does not share.

    Windows installations, unlike Linux, cannot easily be moved from one
    hardware to another. This is not just due to Microsoft's activation
    mechanism but the fact that the installed kernel and drivers depend on the
    actual hardware.

https://www.virtualbox.org/wiki/Migrate_Windows

    The problem lies with Windows, in that its driver settings, particularly
    for storage devices, are not portable. Unless you modify the Windows
    registry to force start storage drivers for both the physical and virtual
    machines, you will mostly likely end up with a ``0x0000007B`` STOP blue
    screen error each time which will require a restore or modifying the
    registry to fix.

https://askubuntu.com/questions/174581/is-there-any-way-to-boot-windows-7-partition-in-virtual-machine

It's even possible to transfer a Linux install to a USB enclosure
and boot it directly on another machine of the same architecture,
although the kernel will lack proprietary drivers (e.g. some wifi cards).

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

    --- Linus Torvalds, *Selectable Frequency of the Timer Interrupt* (2005)

.. _chose an unusually high: https://lkml.org/lkml/2005/7/8/263

----------------------------
Filename case-insensitivity.
----------------------------

Linux uses case-sensitive filenames
because Unix used case-sensitive filenames.
Unix was case-sensitive because Multics was case-sensitive.
Multics was case-sensitive because the ASCII standard
included both an uppercase and a lowercase alphabet. [#Multics_case_sensitive]_

Why was ASCII case-sensitive?
It nearly wasn't.

Early telegraphy codes did not distinguish upper and lowercase
because it would have slowed transmission speeds prohibitively.
Encodings with different bit patterns for uppercase and lowercase
had been proposed as early as 1959, [#Bemer_1959]_
though they were not widely implemented.
For example, the IBM 7030 "Stretch" supercomputer used an 8-bit encoding
that included interleaved uppercase and lowercase alphabets,
and it was used at Los Alamos in 1961.
[#Stretch_supercomputer]_

The ASCII committee concluded that 6-bit encodings (64 bit patterns)
were insufficient to include both control characters and special characters
in addition to the required 26 alphabetics and 10 numerics,
so they decided to use a 7-bit code.

    The consideration of a 6-bit, 64-character graphic subset was important
    to the standards committee. If the ultimate decision was that columns 6
    and 7 would be for graphics, then columns 2 through 7 would contain
    Space, 94 graphics, and Delete. But, even with the code providing 94
    graphics, a major assumption of the standards committee was that data
    processing applications would, for the foreseeable future, be satisfied with
    a monocase alphabet (that is, a 64- or less graphic subset) as they had in
    the past---that 64-character printers would predominate. So it was import-
    tant to be able to derive a 64-character, monocase alphabet, graphic
    subset from the code by simple, not complex, logic.

    --- Charles E. Mackenzie, "Coded character sets: history and development" (1980), p.228

In fact, the some of the committee members
wanted to reserve the remaining space for control characters.

    The conclusion of the preceding paragraph is based on the assump-
    tion that two alphabets, small letters and capital letters, would be in-
    cluded in the 7-bit code and that decision had not yet been made. If the
    decision was ultimately made that columns 6 and 7 would would contain
    controls, then small letters would not be included in the 7-bit code. ``*``

    ``*`` If the committee did decide for controls in columns 6 and 7, it is still likely that
    they would have wanted an alphabet of small letters to be provided. Presumably,
    the small letter alphabet would then have been provided by a caseshift approach.

    --- Ibid, p.232

Thought the comittee first formed in 1961,
it wasn't until late 1963 that they finally agreed to include a lowercase alphabet.

    At the first meeting of ISO/TC97/SC@ in 1963 October 29-31, a resolu-
    tion was passed that the lower-case alphabet should be assigned to
    columns 6 and 7.

    --- Ibid, p. 246

Why is it useful for filenames to include upper and lowercase?

It can make filenames more intelligible,
such as distinguishing between
the abbreviation for United State ("US")
and the first-person plural objective pronoun ("us")
in paths such as ``/usr/share/X11/locale/en_US.UTF-8/``.

It also allows more possibilities for filenames,
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

.. http://www.cio.com/article/2868393/linus-torvalds-apples-hfs-is-probably-the-worst-file-system-ever.html

However, there is also no shortage of opinions
that enforcing filename case-sensitivity
-- and even case-sensitivity in general --
was a bad decision. [#against_case_sensitivity]_

There are also passionate views to the opposite effect. [#against_case_insensitivity]_

Laying aside that argument for the moment,
why did Windows filenames end up case-insensitive?

Strictly speaking, modern Windows filenames could be case-sensitive,
but they aren't because the `Windows API for opening files`_ `is not case-sensitive`_,
i.e. the `default call`_ to ``CreateFile``
does not enable the ``FILE_FLAG_POSIX_SEMANTICS`` option.

.. _Windows API for opening files: http://msdn.microsoft.com/en-us/library/windows/desktop/aa363858(v=vs.85).aspx
.. _is not case-sensitive: http://support.microsoft.com/kb/100625
.. _default call: http://www.nicklowe.org/2012/02/understanding-case-sensitivity-in-windows-obcaseinsensitive-file_case_sensitive_search/

.. http://stackoverflow.com/a/7200533/1608986

However, Windows' own NTFS filesystem is `case-preserving`_.
This means that it is possible to mount an NTFS partition with Linux
and make a file called "Myfile.txt" in the same directory as "MYFILE.TXT",
but it will `not be possible to read or modify both of those files`_,
at least not with standard Windows software.

.. _case-preserving: http://en.wikipedia.org/wiki/Case_preservation
.. _not be possible to read or modify both of those files: http://technet.microsoft.com/en-us/library/cc976809.aspx

This API behavior exists to maintain compatibility with MS-DOS filesystems. [#MSDOS_case_insensitive]_
MS-DOS was built on Tim Paterson's 86-DOS (released in 1980)
and Marc McDonald's FAT filesystem,
which were designed for compatibility with CP/M. [#DOS_CPM]_ [#FAT_CPM]_
CP/M was created in 1973 by Gary Kildall,
and also used case-insensitive filenames. [#CPM_case_insensitive]_

    Lower case ASCII alphabetics are internally translated to upper
    case to be consistent with CP/M file and device name conventions.

http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch1.htm

The CP/M manual does not state explicitly why it uses these conventions,
but Gary Kildall wrote CP/M on a `DEC`_ `PDP-10 mainframe`_
running the `TOPS-10`_ operating system
when he was working at Intel. [#kildall_tops10]_
Consequently, there are many similarities between CP/M and TOPS-10,
including filename case-insensitivity.

.. _DEC: https://en.wikipedia.org/wiki/Digital_Equipment_Corporation
.. _PDP-10 mainframe: https://en.wikipedia.org/wiki/PDP-10
.. _TOPS-10: https://en.wikipedia.org/wiki/TOPS-10

(It should be noted that CP/M has also been compared to RT-11,
a DEC operating system for the PDP-11 minicomputer
that is closely related to TOPS-10, [#kildall_RT11]_
although the influence may not have been as direct.)

Why did TOPS-10 use case-insensitive names?
Because the DEC SIXBIT encoding used for filenames
was optimized for its architecture.

    RAD50 was used in FILES-11 and RT-11 disks. It was used to store 3
    characters in a 16 bit word. SIXBIT was used on TOPS-10 36bit systems to
    store 6 characters in a word. It also allowed for a fast file name search
    since the names were all on word boundaries (full filename compair took 2
    compair, and 1 mask operation 6+3 file names).

https://lkml.org/lkml/2002/7/30/257

(CP/M was written for an eight-bit architecture,
which is presumably why it used an 8.3 filename instead of 6.3 filename.) [#8.3_filename]_

Similarly, the RT-11 didn't use ASCII for filenames,
but rather an encoding called RADIX-50,
which helped to save memory. [#RADIX50]_

Neither of these encodings are used much anymore,
but their case-insensitivity,
a useful optimization on 1970s hardware,
endures to this day.

The lack of agreement on filename case-sensitivity may seem insignificant,
but it has caused persistent difficulties
in cross-platform development. [#tortoise_svn_case_sensitivity]_ [#openfoam_no_windows_port]_ [#common_lisp_filenames]_
Developers of cross-platform software try to `avoid making assumptions about filename case-sensitivity`_,
but problems of this ilk crop up
when porting from Windows to Linux or vice-versa. [#valve_porting_source_to_linux]_

.. _avoid making assumptions about filename case-sensitivity: http://www.mono-project.com/docs/getting-started/application-portability/#case-sensitivity

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

.. [#Multics_case_sensitive]

       Everything in Multics is case sensitive; Multics permits use of the full
       upper and lower case ASCII character set.

   http://www.multicians.org/mgc.html

       Since the Multics file system distinguished between upper and lower case,
       external names had to be case sensitive, and without much discussion we
       chose to have all variable names be case sensitive.

   http://www.multicians.org/pl1.html

.. [#Bemer_1959]

       Simple pattern of correspondence should exist between codes assigned to
       upper and lower case alphabetic characters.

       --- R. W. Bemer

   From page 20 of "A proposal for a generalized card code for 256 characters",
   Communications of the ACM, Volume 2 Issue 9, Sept. 1959.

   http://dx.doi.org/10.1145/368424.368435

.. [#Stretch_supercomputer]
   From "Coded character sets: history and development" by Charles E. Mackenzie, 1980.

.. [#against_case_sensitivity]

       Mac ＆ Windows users have to have filenames read to them over the phone by
       support techs. They have to be able to write little sticky notes to their
       mothers about how to open up the mail program, without worrying about how the
       filenames are capitalized. Haven't you ever fumed over a URL with initial-caps
       in the folder names in the path, having to fiddle with capitalization until you
       get a response that's anything but a 404? Haven't you ever been secretly
       pleased that e-mail addresses aren't case-sensitive?

       --- Brian Tiemann, *On Unix File System's Case Sensitivity* (2001)

   http://xahlee.info/UnixResource_dir/_/fileCaseSens.html

       Anecdotally, case sensitivity in programs is known to be error-prone for
       both beginners and experienced users.  Bob Frankston, a Multics alumnus
       and the co-inventor of VisiCalc, once said it was the biggest mistake
       that Multics had inflicted on the world.

       --- Stavros Macrakis (2003)

   https://www.ma.utexas.edu/pipermail/maxima/2003/004483.html

       One of the most pernicious problems with C-based languages is that they're
       case-sensitive. While this decision may have made sense in 1972 when the
       language was created, one wonders why the sins of Kernighan and Ritchie have
       been blindly perpetuated for the last thirty-three years.

       [ . . . ]

       Unless you have extremely compelling reasons to make something case-sensitive,
       case insensitivity is a much more human being friendly design choice. Designing
       software that's easier for machines is questionable at best.

       --- Jeff Atwood, *The Case For Case Insensitivity* (2005)

   http://blog.codinghorror.com/the-case-for-case-insensitivity/

       There is no longer any excuse for making humans learn and handle the quirks of
       the way computers store upper- and lower-case characters. Instead, software
       should handle the quirks of human language.

       --- Brian Hauer, *Case-sensitivity is the past trolling us* (2014)

   http://tiamat.tsotech.com/case-sensitivity-sucks

       Since it appears to have manifested out of opinion rather than necessity, it
       could be said case-sensitivity is the worst way that modern technology sucks.

       --- Greg Raiz (2007)

   http://www.raizlabs.com/graiz/2007/02/11/linuxunix-case-sensitivity/

       This is really stupid, it causes a ton of problems and there is no longer
       any good reason to have case sensitivity in an OS.

       --- Julian, OddThinking (2005)

   http://www.somethinkodd.com/oddthinking/2005/10/27/the-case-for-case-preserving-case-insensitivity/

.. [#against_case_insensitivity]

       Many of us consider those filesystems which cannot preserve case, but
       which accept "input" in random case, to be so utterly broken as to be
       undeserving of any attention whatsoever.  They create a situation where
       the computer effectively considers the users to be too stupid or blind
       or whatever to be able to say what we mean accurately.

       --- Greg A. Woods (2003)

   https://lists.nongnu.org/archive/html/info-cvs/2003-11/msg00127.html

       Why oh why on Earth engineers at Microsoft decided to make Windows case
       insensitve [sic] and then use camel case anyway, wherever possible?

       It makes case-sensitive systems and their sysadmins cry :-(

       --- u/bwosc (2015)

   https://www.reddit.com/r/sysadmin/comments/2w6c8g/case_insensitive_windows_rant/

       Why are computer file names and conventions and protocols so messed up? It's
       bizarre -- and Microsoft has been one of the worst offenders with one of the
       most powerful positions and opportunities to make it a better filename-naming
       world.

       [ . . . ]

       And, Microsoft dares to allow mixed case naming, but does case insensitive
       handling of file names... don't even get me started about some of the bizarre
       results and buggy behavior I've traced to that. I only wish I'd had a
       chargeback code for all of the time I've spent fixing and debugging systems
       that all come back to the file naming. Sigh, again.

       --- yagu (2006)

   http://slashdot.org/comments.pl?sid=190747&cid=15690704

.. [#MSDOS_case_insensitive]

       Do not assume case sensitivity. For example, consider the names OSCAR,
       Oscar, and oscar to be the same, even though some file systems (such as
       a POSIX-compliant file system) may consider them as different. Note that
       NTFS supports POSIX semantics for case sensitivity but this is not the
       default behavior.

   http://msdn.microsoft.com/en-us/library/windows/desktop/aa365247(v=vs.85).aspx

.. [#DOS_CPM]

       Every operating system has basic functions like reading and writing disk
       files. The API defines the exact details of how to make it happen and
       what the results are. For example, to “open” a file in preparation for
       reading or writing, the application would pass the location of an
       11-character file name and the function code 15 to CP/M through the
       “Call 5” mechanism. The very same sequence would also open a file in
       DOS, while, say, UNIX, did not use function code 15, 11-character file
       names, or “Call 5” to open a file.

       --- Tim Paterson (2007)

   http://dosmandrivel.blogspot.com/2007/08/is-dos-rip-off-of-cpm.html

       As I noted when I discussed the old MS-DOS wildcard matching rules, MS-DOS
       worked hard at being compatible with CP/M. And CP/M used 8.3 filenames.

       --- Raymond Chen (2009)

   https://blogs.msdn.microsoft.com/oldnewthing/20090610-00/?p=17953/

.. [#FAT_CPM]

       The FAT file system 's restrictions on naming files and directories are
       inherited from CP/M. When Paterson was writing 86-DOS one of his primary
       objectives was to make programs easy to port from CP/M to his new
       operating system. He therefore adopted CP/M's limits on filenames and
       extensions so the critical fields of 86-DOS File Control Blocks (FCBs)
       would look almost exactly like those of CP/M. The sizes of the FCB
       filename and extension fields were also propagated into the structure of
       disk directory entries

   http://spider.seds.org/spider/OS2/HPFS/fat.html

.. [#kildall_tops10]

       Gary Kildall developed CP/M on a DEC PDP-10 minicomputer running the
       TOPS-10 operating system. Not surprisingly, most CP/M commands and file
       naming conventions look and operate like their TOPS-10-counterparts. It
       wasn’t pretty, but it did the job.

       --- Robert X. Cringely, *Accidental Empires, Chapter 4 — Amateur Hour*

   http://www.cringely.com/2013/02/18/accidental-empires-chapter-4-amateur-hour/

       CP/M and ISIS in operation have some general similarities to interactive
       operating systems on minicomputers and mainframes such as the DEC PDP-10
       "TOPS-10" OS. Kildall used such systems to develop and run his
       cross-assemblers and compilers, which became Intel products; and later
       to develop his own products which ran "native" on CP/M systems.

       --- Herbert R. Johnson, *CP/M and Digital Research Inc. (DRI) History*

   http://www.retrotechnology.com/dri/d_dri_history.html

       Kildall said that PL/M was ‘‘the base for CP/M,’’ even though the
       commands were clearly derived from Digital’s, not IBM’s software. For
       example, specifying the drive in use by a letter; giving file names a
       period and three-character extension; and using the DIR (Directory)
       command, PIP, and DDT were DEC features carried over without change. [100]

       [ . . . ]

       99. Gary Kildall, ‘‘CP/M: A Family of 8- and 16-Bit Operating Systems,’’
       Byte, (June 1981): 216–229. Because of the differences between DEC
       minicomputers and the 8080 microprocessor, the actual code of CP/M was
       different and wholly original, even if the syntax and vocabulary were
       similar.

       100. The above argument is based on PDP-10 and CP/M manuals in the
       author’s possession, as well as conversations with Kip Crosby, to whom I
       am grateful for posting this question over an Internet discussion forum.

       --- Paul E. Ceruzzi, page 238 of "A History of Modern Computing", 2nd. edition published 2003 by MIT Press.

.. [#kildall_RT11]

   From a post on the comp.sys.tandy Usenet group:

       Of course, CP/M itself is an
       almost exact knock off of DECs PDP-11 OS, RT-11, an operating system that
       dates back to the early seventies, and RT-11 shows its roots in TOPS-10,
       which goes back another year or two.  For some reason, all the historians
       tracing the source of MS-DOS mysteriously stop at CP/M, even when command sets
       and utility syntaxes are compared side-by-side.  Who had a PIP utility first?
       Why, DEC, not Digital Research.

       The joke in the seventies that "Digital Research" was a typographical error
       and the companies real name was "Digital [Equipment Corporation] Rehashed",
       for RT-11, TOPS-10 and RSTS/E all predated CP/M by a lot and yet have the same
       command syntax.

   https://groups.google.com/forum/#!msg/comp.sys.tandy/EcfhcRv9gEU/fNu_h9fCe3AJ

   From a post on the alt.folklore.computers Usenet group:

       Maybe we do need Kildall for the next step, but when I saw CP/M
       version 1 it appeared closest to a dialect of RT-11, so I've always
       figured that RT-11 was the closest ancestor.  After that, it began
       to drift.  If I recall correctly, V1's prompt was the DECcish ".",
       but in V2 it became "> ".  Therefore, it would appear that MS-DOS
       got its start from CP/M V2.  It's a pity MS-DOS didn't start from
       RT-11, which had multitasking, interrupt driven I/O, and all the
       other good stuff that is easy to fit in a well designed 8KB kernel.

   https://groups.google.com/forum/#!topic/alt.folklore.computers/BxRlG1tYv8o

       Gary Kildall's CP/M started out as his own reimplementation of RT-11 for
       the Intel 8080.

   http://blu.org/mhonarc/discuss/2011/10/msg00112.php

.. [#CPM_case_insensitive] CP/M did this conversion internally.

        It should also be noted that all alphabetic lower case letters in file
        and drive names are always translated to upper case when they are processed by
        the CCP [Console Command Processor].

        [ . . . ]

        Further, recall that the CCP always translates lower case characters to upper
        case characters internally. Thus, lower case alphabetics are treated as if
        they are upper case in command names and file references

    https://archive.org/stream/Intro_to_CPM_Feat_and_Facilities/Intro_to_CPM_Feat_and_Facilities_djvu.txt

.. [#8.3_filename]

       As for the 8.3, look at the format of a CP/M directory entry.  16
       bytes so they fill a disk block, not RAD50, 8 bytes for name, 3 for
       extension, and I forget the rest, but it includes pointers to the
       data.

   https://groups.google.com/d/msg/alt.folklore.computers/fqXomGO4I1I/ub_hJ2WxXHwJ

.. [#RADIX50]

       ... files were located via the directory, which resided in a fixed
       location at the beginning of the hard drive. The directory consisted of a
       single array of entries, each with a 6.3 character file name formatted in DEC’s
       Radix-50 format. A file’s directory entry indicated the address of the first
       block of the file.

   http://cryptosmith.com/2013/10/19/digitals-rt-11-file-system/

       RADIX50 is a character coding system used in earlier Digital Equipment
       Corporation computers, such as the PDP-10, DECsystem-10 and DECsystem-20.
       It was implemented as a way to pack as many characters into as few bits as
       possible.

       RADIX50 actually contains 40 codes, or 50 in octal. Because this is not a
       power of two, the PDP-10 processor had instructions to pack several
       RADIX-50 words into a single 36-bit word or extract RADIX-50 words from a
       36-bit word.

   http://nemesis.lonestar.org/reference/telecom/codes/radix50.html

.. [#tortoise_svn_case_sensitivity] https://code.google.com/p/tortoisesvn/issues/detail?id=32

.. [#openfoam_no_windows_port]

       One problem is that the file-system NTFS, that is used by most modern
       Windows Versions, is (by default) only case-preserving (``hello.c`` and
       ``Hello.C`` are the same file, when in the same folder). The
       OpenFOAM-sources need a fully case-sensitive file-system and can't even
       be unpacked properly on a Windows system (see [2]).

   http://openfoamwiki.net/index.php/Main_FAQ#Why_isn.27t_there_a_Windows_port_of_OpenFOAM_.3F

.. [#common_lisp_filenames]

       Issues of alphabetic case in pathnames are a major source of problems.
       In some file systems, the customary case is lowercase, in some
       uppercase, in some mixed. Some file systems are case-sensitive (that is,
       they treat FOO and foo as different file names) and others are not.

   https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node205.html

       The main difficulty in dealing with names of files is that different
       file systems have different naming formats for files.

   https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node203.html

.. [#valve_porting_source_to_linux] http://adrienb.fr/blog/wp-content/uploads/2013/04/PortingSourceToLinux.pdf

       - Linux filesystems are case-sensitive
       - Windows is not
       - Not a big issue for deployment (because everyone ships packs of some sort)
       - But an issue during development, with loose files
       - Solution 1: Slam all assets to lower case, including directories, then tolower all file lookups (only adjust below root)
       - Solution 2: Build file cache, look for similarly named files


----------------------
Filename restrictions.
----------------------

In Linux and other Unix-derived operating systems,
the only characters that may not appear
in the name of a file or directory [#forbidden_characters]_
are the slash ``/``,
which is used to delimit paths,
and the ASCII null ``\0``,
which is used to terminate strings in C. [#C_strings]_

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
cannot be part of a valid filename.
Windows software uses various workarounds,
such as removing the colon entirely
or replacing it with a similar-looking Unicode character. [#windows_datestamps]_

(It should be acknowledged that on Linux
the names of directories in ``$PATH`` cannot contain colons either, [#colons_in_PATH]_
but such restrictions do not apply to filenames.)

.. [#windows_datestamps]
   https://stackoverflow.com/questions/7874111/convert-datetime-now-to-a-valid-windows-filename
   https://stackoverflow.com/questions/11037831/filename-timestamp-in-windows-cmd-batch-script
   https://stackoverflow.com/questions/1642677/generate-unique-file-name-with-timestamp-in-batch-script
   https://serverfault.com/questions/16706/current-date-in-the-file-name
   https://serverfault.com/questions/292014/preferred-format-of-file-names-which-include-a-timestamp
   https://serverfault.com/questions/16706/current-date-in-the-file-name
   https://programmers.stackexchange.com/questions/61683/standard-format-for-using-a-timestamp-as-part-of-a-filename

.. [#colons_in_PATH] https://stackoverflow.com/questions/14661373/how-to-escape-colon-in-path-on-unix

.. [#forbidden_characters]

   As discussed in this StackOverflow question:

   https://stackoverflow.com/questions/1976007/what-characters-are-forbidden-in-windows-and-linux-directory-names

       When Steve Bourne was writing his Unix shell (which came to be known as the
       Bourne shell), he made a directory of 254 files with one-character names, one for each
       byte value except ``'\0'`` and slash, the two characters that cannot appear in Unix file
       names. He used that directory for all manner of tests of pattern-matching and tok-
       enization. (The test directory was of course created by a program.) For years after-
       wards, that directory was the bane of file-tree-walking programs; it tested them to
       destruction.

       --- Brian W. Kernighan and Rob Pike, "The Practice of Programming", Chapter 6: Testing, p. 158

   https://books.google.com/books?id=j9T6AgAAQBAJ&lpg=PP1&dq=the%20practice%20of%20programming&pg=PA158#v=onepage&q=When%20Steve%20Bourne

   This is also explicitly stated in the POSIX standard.

       The characters composing the name may be selected from the set of all
       character values excluding the slash character and the null byte.

   http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap03.html

       The bytes composing the name shall not contain the <NUL> or <slash>
       characters.

    http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_170

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

   There is extensive discussion here:

   https://utcc.utoronto.ca/~cks/space/blog/programming/CNullStringsDefense

   In any case, both Linux and `Windows use null-terminated strings`_,
   as do other modern operating systems.

.. ``` TODO: remove this hack to fix vim's syntax highlighting bug

.. _rationale for using a null-terminator: https://stackoverflow.com/questions/4418708/whats-the-rationale-for-null-terminated-strings
.. _Null-terminated strings do have some drawbacks: https://queue.acm.org/detail.cfm?id=2010365
.. _such as storing strings of arbitrary length: https://www.lysator.liu.se/c/bwk-on-pascal.html
.. _Windows use null-terminated strings: http://blogs.msdn.com/b/oldnewthing/archive/2009/10/08/9904646.aspx

---------------------------
Limited filesystem support.
---------------------------

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
Unlike FAT and NTFS filesystems,
ext3 and Btrfs `do not require defragmentation`_
to maintain good performance.
(Realistically, though, `defragmentation isn't that important for NTFS`_, either.)

.. _Btrfs: https://btrfs.wiki.kernel.org/index.php/Main_Page
.. _NTFS and FAT: http://technet.microsoft.com/en-us/magazine/2007.11.desktopfiles.aspx
.. _do not require defragmentation: http://www.tldp.org/LDP/sag/html/filesystems.html#FRAGMENTATION
.. _defragmentation isn't that important for NTFS: http://blogs.msdn.com/b/e7/archive/2009/01/25/disk-defragmentation-background-and-engineering-the-windows-7-improvements.aspx

Finally, Linux permits unprivileged users to run their own filesystems via FUSE.
This has many practical benefits,
such as accessing cloud storage as if it were an ordinary directory.

.. TODO: source

There is a project to bring FUSE to Windows,
but it is no longer maintained
and its various forks are not as mature as the Linux implementation.

.. TODO: source

------------------
UTF-16, not UTF-8.
------------------

`UTF-8 has many practical advantages`_ over UTF-16.

- It is a superset of ASCII,
  so it is backwards-compatible with existing text files.
- `Zero bytes do not appear`_ at any point in a valid UTF-8 representation,
  so ``strcpy()`` still works.
- It is `self-synchronizing`_, i.e. it is possible to resynchronize
  after a lost or corrupted code point without re-reading the entire string.
- It is more portable because it does not require a `byte-order mark`_
  and is less likely to be mistaken for other encodings.
- Internet Explorer has been known to have `security issues with UTF-16`_.

.. _UTF-8 has many practical advantages: https://annevankesteren.nl/2009/09/utf-8-reasons
.. _Zero bytes do not appear: https://docs.python.org/2/howto/unicode.html#encodings
.. _self-synchronizing: http://research.swtch.com/utf8
.. _byte-order mark: http://www.unicode.org/faq/utf_bom.html
.. _security issues with UTF-16: http://permalink.gmane.org/gmane.ietf.charsets/372

If the Windows API were designed today,
it would probably use `UTF-8`_.
The Unicode Consortium primarily `recommends UTF-16`_
for compatibility with Java and the Windows API.

.. _UTF-8: http://www.cl.cam.ac.uk/~mgk25/ucs/utf-8-history.txt
.. _recommends UTF-16: http://www.unicode.org/faq/programming.html#2

In principle, UTF-16 would have the advantage
of constant time addressing of single characters,
but in practice most programming languages do not provide data types for this,
with the `exception of Go and rust`_.

.. _exception of Go and rust: http://lucumr.pocoo.org/2014/1/9/ucs-vs-utf8/

----------------------------------------------------
File extensions are the sole determiner of filetype.
----------------------------------------------------

On Windows, the file extension is the sole determiner
of what program runs when opening a given filetype.
This makes it easier to dupe a Windows user
into `unintentionally running malware`_.

.. _unintentionally running malware: http://windows.microsoft.com/en-us/windows-vista/recognizing-dangerous-file-types

Also, if the file extensions for different filetypes happen to collide,
as they inevitably do
|---| it doesn't help that filenames are case-insensitive |---|
one program must take default precedence over the other for that file extension.

For example, there `a lot of different file formats`_ with a ``.dat`` file extension,
but only one application gets to open them by default.

.. _a lot of different file formats: http://filext.com/file-extension/dat

On Linux, `filetypes are determined`_ by a combination of
filesystem metadata (e.g. execute permissions),
heuristics based on `file signatures`_ (a.k.a "magic numbers"),
and ``.desktop`` configuration files with mimetype information
(which includes file extensions).

.. _file signatures: https://en.wikipedia.org/wiki/List_of_file_signatures

.. TODO: cite

.. _filetypes are determined: http://www.howtogeek.com/192628/mime-types-explained-why-linux-and-mac-os-x-dont-need-file-extensions/

A file's executable status is `separate from its file extension`_,
and an executable text file written in a scripting language
can control how it is run via the `first-line shebang convention`_,
e.g. ``#!/usr/bin/env python3 -i``.

Windows does not support shebang lines,
but languages that emphasize cross-platform compatibility,
such as Python,
have `implemented work-arounds`_.

.. _separate from its file extension: http://superuser.com/questions/405972/why-do-i-need-an-execute-bit-in-file-mode-on-unix-file-systems
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
so that they are still easily accessible
(i.e. not compressed in a ``.zip`` file),
but are less likely to be accidentally deleted, moved, or modified.

On Windows, the content of a read-only file cannot be altered,
but the file itself `can be moved, renamed, or deleted`_,
because the `folder it is in cannot have a read-only status`_.

.. _can be moved, renamed, or deleted: http://windows.microsoft.com/en-us/windows7/prevent-changes-to-a-file-by-setting-it-to-read-only
.. _folder it is in cannot have a read-only status: http://windows.microsoft.com/en-us/windows-vista/prevent-changes-to-a-file-or-folder-read-only

In Linux, by contrast, a read-only directory cannot have files added to it,
and files in such a directory cannot be moved, renamed, or deleted
without first removing the read-only status from the directory they are in.
Modifications of the contents of the files depend on the individual file permissions.

.. [#unix_groups] Unix permissions, for example, are not a panacea: https://unix.stackexchange.com/questions/164303/single-user-for-sharing-vs-multiple-users
.. [#ntfs_permissions_flaw] NTFS permissions have their own issues, e.g. https://serverfault.com/questions/31709/how-to-workaround-the-ntfs-move-copy-design-flaw

++++++++++++++++++++++++++++++++++++++++++++++++++
Architectural deficiencies of the Windows platform
++++++++++++++++++++++++++++++++++++++++++++++++++

These are limitations of the Windows platform
which are not intrinsic to the operating system,
but are the result of default behavior
or restrictions on the Windows ecosystem.

------------------------------------------
Limitations on access to external volumes.
------------------------------------------

When accessing external volumes such as flash drives,
Windows assigns different capital letters to each volume,
each letter corresponding to a different absolute path root.
This is necessary for backwards compatibility with MS-DOS,
but it is not without drawbacks.

Perhaps the most obvious problem
is that there are only 26 letters in the English alphabet.
But what does this mean in practice?

One consequence is that the assigned drive letter
may be different when a drive is reconnected.
This means that, for example,
applications that track recently used files
will look for files under the old drive letter,
and be unable to find the files.

    I have a problem with Word when working with documents on my flash drive.
    If I insert the drive days later and try to use the recently used file
    list, Word sometimes says it can’t find the document.

    I’ve worked out that when I insert the flash drive it’s not always using
    the same drive letter – it’s F or G drive but occasionally even later in
    the alphabet.

    How can I change the flash drive letter or, even better, make it appear as
    the same drive letter each time?

http://new.office-watch.com/2008/make-a-consistent-drive-letter-or-path-to-a-removable-drive/

Fortunately, there is a solution: NTFS mount points.

    Volume mount points are robust against system changes that occur when devices
    are added or removed from a computer.

https://technet.microsoft.com/en-us/library/Cc938934.aspx

    If you're running out of drive letters, one trick is to use a mount point
    for each logical drive that you are going to bring into Windows; this way,
    performance can be contained to a logical drive and still conform to your
    drive letter standards.

    [ . . . ]

    There are many scenarios in which you would want a large number of drives,
    such as multiple databases for Microsoft SQL Server or Exchange Server
    installations. Exchange databases are notorious for needing their own
    drives per mailbox store and, if you provision out well, you will quickly
    run out of drive letters.

    --- Rick Vanover

http://www.techrepublic.com/blog/the-enterprise-cloud/use-mount-points-if-you-run-out-of-windows-drive-letters/

Unfortunately, Windows doesn't use mount points by default
for external hard drives or flash drives,
possibly because mount points behave slightly differently than drive letters.

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

While NTFS filesystems have a root directory,
Windows has no unique root directory;
instead, each drive has its own root.

https://stackoverflow.com/questions/151860/root-folder-equivalent-in-windows

*My Computer* roughly corresponds to a root directory in concept,
and looks like a folder when viewed in Windows Explorer,
but there is no *My Computer* folder anywhere on the filesystem.
Instead, *My Computer* is a virtual folder.

    Unlike file system folders, users cannot create new virtual folders
    themselves.  They can only install ones created by non-Microsoft
    developers. The number of virtual folders is thus normally much fewer than
    the number of file system folders.

    [ . . . ]

    The file systems of the various disk drives can be seen to be subsets of
    the larger namespace hierarchy. The roots of these file systems are
    subfolders of the My Computer folder. My Computer also includes the roots
    of any mapped network drives.

https://msdn.microsoft.com/en-us/library/cc144090%28VS.85%29.aspx

Unix-based operating systems, on the other hand,
have a unique root directory called ``/`` [#disk_location]_
and can mount drives (including removable media)
as directories anywhere on the hierarchy.
This provides uniform access and permission controls to storage volumes
without requiring new syntax [#the_hideous_name]_
or knowledge of the underlying hardware.

https://unix.stackexchange.com/questions/93960/why-is-linuxs-filesystem-designed-as-a-single-directory-tree

On Linux, flash drives are mounted under ``/media/`` [#removable_media_mountpoint]_
and are assigned a directory based on their label.
If the drive is removed and re-mounted again,
the path to the drive will be the same as before
unless the partition label has been changed
or the drive is manually mounted elsewhere.

File managers on Linux also handle deleting files on flash drives.
When a file on an external drive is put into the trash,
it goes into a `user-specific hidden folder`_ on the drive itself,
not the trash in the user's home directory.

.. _user-specific hidden folder: https://superuser.com/questions/169980/what-is-trash-and-trash-1000

.. [#disk_location]

   Multics, the predecessor to Unix,
   appears to be the first operating system with a root directory
   (called ``>`` instead of ``/``)
   and a hierarchical filesystem underneath it.

   http://www.multicians.org/mgr.html#root

   However, the motivations for such a scheme go back further.
   One of the most influential time-sharing systems,
   CTSS, recognized the need for accessing files independently of their disk location.

       All files kept on the disk (and drum) are known to the
       user only by name: the supervisor disk control module keeps
       for each user a directory of names and corresponding track
       locations on the disk.

   https://archive.org/stream/bitsavers_mitctssMAC5_3662592/MAC-TR-16_CTSStecNote_Mar65_djvu.txt

       It is desirable, from the point of view both of programming and
       of disk administration, that the user have no notion of the absolute
       location where his files of information are stored in the disk. Rather,
       the user will refer to his files only by symbolic names and logical mode
       number.

   https://archive.org/stream/bitsavers_mitctssCTS_3840198/CTSS_ProgrammersGuide_djvu.txt

   Unix was developed on relatively small disk drives,
   so it was useful to be able mount drives anywhere on the filesystem.

       You know how Ken Thompson and Dennis Ritchie created Unix on a PDP-7 in 1969?
       Well around 1971 they upgraded to a PDP-11 with a pair of RK05 disk packs (1.5
       megabytes each) for storage.

       When the operating system grew too big to fit on the first RK05 disk pack (their
       root filesystem) they let it leak into the second one, which is where all the
       user home directories lived (which is why the mount was called /usr).  They
       replicated all the OS directories under there (/bin, /sbin, /lib, /tmp...) and
       wrote files to those new directories because their original disk was out of
       space.  When they got a third disk, they mounted it on /home and relocated all
       the user directories to there so the OS could consume all the space on both
       disks and grow to THREE WHOLE MEGABYTES (ooooh!).

   http://lists.busybox.net/pipermail/busybox/2010-December/074114.html

.. [#removable_media_mountpoint]

   The ``/media/`` directory is part of the Filesystem Hierarchy Standard,
   which is used for almost all Linux distributions,
   but is not part of the POSIX standard.

   https://unix.stackexchange.com/questions/98751/is-the-filesystem-hierarchy-standard-a-unix-standard-or-a-gnu-linux-standard

   The ``/media/`` directory is relatively recent invention,
   and is intended to avoid conflict with other conventions.

       Historically there have been a number of other different places used to
       mount removable media such as ``/cdrom``, ``/mnt`` or ``/mnt/cdrom``.
       Placing the mount points for all removable media directly in the root
       directory would potentially result in a large number of extra
       directories in ``/``.  Although the use of subdirectories in ``/mnt`` as
       a mount point has recently been common, it conflicts with a much older
       tradition of using ``/mnt`` directly as a temporary mount point.

   http://www.linuxbase.org/betaspecs/fhs/fhs/ch03s11.html

   Currently, ``udisks2`` mounts flash drives under ``/media/$USER/``.

   https://askubuntu.com/questions/214646/how-to-configure-the-default-automount-location

.. [#the_hideous_name]
   Rob Pike and P. J. Weinberger discuss the history of naming practices
   and the drawback of introducing new syntax in "The Hideous Name".

   http://doc.cat-v.org/bell_labs/the_hideous_name/


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

There are plenty of Windows programs similar to ``gdb`` and ``strace``, [#gdb_for_Windows]_ [#strace_for_Windows]_
but they don't come installed by default,
whereas both ``strace`` and ``gdb`` come with almost all Linux distributions,
so system administrators can rely on being able to use them on nearly any Linux box.

.. [#gdb_for_Windows]
   https://msdn.microsoft.com/en-us/library/windows/hardware/ff551063

.. [#strace_for_Windows]
   http://www.intellectualheaven.com/default.asp?BH=projects&H=strace.htm
   http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx

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

This becomes particularly interesting when the files are hidden thumbnails.

    This is a known problem with Windows 7 related thumbnail caching which
    locks hidden files, thus preventing deletion or moving them.

https://superuser.com/questions/537041/action-cant-be-completed-open-in-another-program

    The folder rename operation fails because thumbcache.dll still has an open
    handle to the local thumbs.db file and does not currently implement a
    mechanism to release the handle to the file in a more dynamic and timely
    fashion.

https://support.microsoft.com/en-us/kb/2025703

By contrast,
on Linux it is not unusual for two different applications
to share read access to the same file,
or for one process to read a file
while another process is writing to it,
since applications do not lock files by default.

.. TODO: CR LF \r\n newlines?

-----------------------------------------
Lack of control over desktop environment.
-----------------------------------------

Windows has many ways to customize its appearance;
there are many `alternative shells`_ and `visual themes`_,
and it's possible to `change the login shell`_
or `run without explorer.exe at all`_. [#KDE_on_Windows]_

.. _alternative shells: https://en.wikipedia.org/wiki/List_of_alternative_shells_for_Windows
.. _visual themes: https://en.wikipedia.org/wiki/Theme_%28computing%29#Operating_systems
.. _run without explorer.exe at all: http://lightquick.co.uk/running-windows-without-explorer.exe.html
.. _change the login shell: https://superuser.com/questions/108265/how-do-you-replace-the-logon-shell-with-iexplore

There is Windows software for
tiling window managers, [#tiling_window_managers]_
virtual desktops, [#virtual_desktops]_
focus follows mouse, [#focus_follows_mouse]_
and special effects to rival `Compiz`_. [#cube_desktop]_

.. _Compiz: https://www.youtube.com/watch?v=4QokOwvPxrE

Given all these choices and customization options,
what functionality could Windows possibly lack?

Here is the problem:
the Windows API determines the behavior of libraries like
``user32.dll``, ``gdi32.dll``, and ``comctl32.dll``.
Everything in hardware goes through the Windows API,
including keystrokes, mouse clicks, and graphics.
Thus, the API can be used to restrict what programs can do. [#wine_dlls]_

This is not a theoretical problem.
Because of Intel's High-bandwidth Digital Content Protection,
Windows applications cannot use the graphics card
to manipulate windows the way `Flip3D`_ does.

https://stackoverflow.com/questions/3848558/what-is-the-api-to-create-applications-like-flip3d

.. _Flip3D: https://en.wikipedia.org/wiki/File:Windows7_flip.png

Sometimes it isn't the API, either;
on Windows 8 it is impossible to disable the dwm window compositor.

    In Windows Vista and Windows 7, desktop composition is disabled in a number of
    scenarios. In Windows 8, DWM desktop composition is a core operating system
    component and cannot be disabled. With a few exceptions, desktop composition is
    always on; it’s started before the user logon and remains active for the
    duration of a session.

    --- Windows Dev Center documentation

https://msdn.microsoft.com/en-us/library/windows/desktop/hh848042%28v=vs.85%29.aspx

This was not without controversy.

    I  understand the choice and it improves the overall experience, but it is
    going to force us to retire some of our older software, and it tool [sic]
    many years to overcome the problems caused.

    --- Dan Ritchie

https://msdn.microsoft.com/en-us/library/windows/desktop/hh848042%28v=vs.85%29.aspx

Linux also has an API,
but it is based on a standard (POSIX),
is not tied to the desktop environment,
and is not controlled by a single corporation
in the same way that the Windows API is.

.. [#tiling_window_managers] https://github.com/fuhsjr00/bug.n
.. [#virtual_desktops] http://virtuawin.sourceforge.net/
.. [#focus_follows_mouse]
   http://milosophical.me/blog/2010/03/10/ms-windows-focus-follows-mouse-registry-hacks.html
   https://superuser.com/questions/368688/on-windows-7-is-there-any-way-to-make-the-scrollwheels-focus-follow-the-mouse
.. [#cube_desktop] http://www.thinkinbytes.com/en/products/cubedesktop
.. [#KDE_on_Windows]
   It's even possible to run the KDE desktop environment on Windows,
   since KDE uses the cross-platform Qt framework.

       The KDE on Windows Initiative is an ongoing project to port the KDE
       applications to MS Windows. Currently supported versions of Windows are XP,
       Vista and 7.

   https://windows.kde.org/

   This is not without difficulties, however.

       The current implementation of KDE is designed in a unix specific way, which is
       partially different from the Windows way. Examples for this are:

       * Process creating - Using the Unix way of fork and exec.

       * It isn't available on Windows, this difference requires a redesign of the related parts.

       * Its missing Windows api counterparts.

       * KDE uses Unix domain socket for high speed data transfer betwen kioslave
         slaves and its parent process and for the communication to/from the dbus
         deamon. On Windows there are no Unix domain sockets. They could be emulated
         by tcp sockets with the costs of slower bandwidth and additional patches to
         deal with Unix domain socket files exchanged between processes.

       --- Ralf Habacker, KDE developer

   http://lxer.com/module/newswire/view/79007/

.. [#wine_dlls]
   In principle, running `Wine`_ on Windows
   could work around restrictions on the Windows API
   since Wine provides an open-source implementation
   of libraries such as ``user32.dll``.
   To fully accomplish this would require replacing Windows entirely, however.

   .. _Wine: https://www.winehq.org/about/

~~~~~~~~~~~~~~~~~~~~~~~~~~~
Non-resizable dialog boxes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The single Windows UI library
means that accessibility improvements
and user interface customization can be difficult to implement.

For example, on Linux, graphical dialog boxes
(e.g. those generated by ``xmessage`` or ``zenity``)
are resizable by default,
but on Windows they are non-resizable by default,
i.e. ``WS_THICKFRAME`` is not enabled by default.

.. TOOD: source
.. TODO: is it even possible to prevent resizing?

    In some cases, you want to display something in a response window but you also
    want this window to be resizable in order to let the user resize this window to
    display the info the way he or she wants. Normally, response windows are not
    resizable and this is also the Microsoft standard behaviour.

    --- Eric Aling, April 13, 2000

http://eric.aling.tripod.com/PB/tips/pbtip39.htm

    Unlike regular windows, most dialog boxes can't be maximized, minimized, or
    resized. They can, however, be moved.

http://windows.microsoft.com/en-us/windows/working-with-windows#1TC=windows-7&section_9

This can pose user-interface problems,
especially on high-resolution monitors.

    It feels so silly to have three acres of screen real estate but be fighting
    to see three characters hidden by dot-dot-dot in a window not much bigger
    than a postit note.

    --- stewardware, January 7, 2011

https://answers.microsoft.com/en-us/windows/forum/windows_7-desktop/cannot-resize-small-windows/160862cf-6e52-4a99-9365-d380491a067d


One workaround for this problem
is to run a third-party background process
that watches for window creation and mouse click events.
[#resize_non_resizable_windows]_
[#turn_non_resizable_windows]_
[#ResizeEnable]_

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

.. [#resize_non_resizable_windows] http://www.thewindowsclub.com/resize-non-resizable-windows
.. [#turn_non_resizable_windows] http://www.howtogeek.com/howto/11799/turn-non-resizeable-windows-into-rezieable-windows/
.. [#ResizeEnable] http://www.digitallis.co.uk/pc/ResizeEnable/index.html

~~~~~~~~~~~~~~~
Update inertia.
~~~~~~~~~~~~~~~

Another consequence of tying the desktop environment to the operating system version
and providing a single desktop environment for a given version of Windows
is that improvements that require changes to the user interface are often delayed.

***
UAC
***

For example, `users run as administrator by default in Windows XP`_ and earlier.
Microsoft fixed this problem via `User Account Control`_ when Windows Vista was released,
but the required changes to the user interface were controversial, [#UAC_controversy]_
and many users learned to ignore it or turned it off entirely.

.. _User Account Control: http://technet.microsoft.com/en-us/magazine/2007.06.uac.aspx
.. _users run as administrator by default in Windows XP: https://msdn.microsoft.com/en-us/library/bb530410.aspx#vistauac_topic1

Despite Microsoft ending support for Windows XP in April 2014,
a `large number of users are still running Windows XP in 2015`_,
many of them as administrators.

.. _large number of users are still running Windows XP in 2015: https://redmondmag.com/articles/2015/04/08/windows-xp-usage.aspx

.. [#UAC_controversy]
   http://www.computerworld.com/article/2477832/desktop-apps/microsoft-exec--we-know-users-hate-uac.html
   http://arstechnica.com/security/2008/04/vistas-uac-security-prompt-was-designed-to-annoy-you/
   http://windowssecrets.com/woodys-windows/microsoft-claims-windows-7-uac-flaw-is-by-design/
   http://windowsitpro.com/blog/microsoft-quotmalware-authors-really-hate-uacquot


*********
Windows 8
*********

The transition from Windows 7 to Windows 8 was controversial,
in part because the Metro user interface departed substantially
from the previous versions of Windows.
[#windows_8_hate_1]_
[#windows_8_defense]_
[#windows_9]_
[#windows_8_polarizing]_
[#windows_8_hate_2]_
[#windows_8_hate_3]_

Enterprise customers, in particular,
refused to upgrade from Windows 7,
citing usability problems.
[#windows_8_enterprise]_
[#windows_8_disappointing]_

These examples are relevant
not because they show that Microsoft makes occasional mistakes,
but to highlight the risks of monoculture and vendor lock-in
and to provide contrast to the way
that the Linux ecosystem maintains checks and balances.

Linux users can run the latest kernel and applications
on a window manager that hasn't changed much since 1987, [#twm_debian]_ [#twm_1987]_
and some of them actually do so by choice. [#twm_user_by_choice]_ [#twm_popcon]_

.. [#twm_debian] https://tracker.debian.org/pkg/twm
.. [#twm_1987] https://en.wikipedia.org/wiki/Twm
.. [#twm_user_by_choice] https://unix.stackexchange.com/questions/131106/is-twm-still-a-viable-window-manager#comment209905_131120
.. [#twm_popcon] https://qa.debian.org/popcon.php?package=twm

This reflects a general distrust of mandatory backward-incompatible updates.
When the GNOME developers made controversial changes in GNOME 3, [#gnome_3_fork]_ [#gnome_3_hate]_ [#gnome_3_grumpy]_
a team forked GNOME 2 to become `MATE`_,
which retained the "traditional desktop metaphor".
A fork would be impossible if GNOME 2's source code were proprietary.

.. _MATE: http://mate-desktop.org/

A fork like MATE will either `eventually fade away`_,
continue to `coexist with its parent project`_,
or even `overtake its parent`_,
depending on the needs of its users.

.. _eventually fade away: http://crunchbang.org/forums/viewtopic.php?id=38916
.. _coexist with its parent project: https://en.wikipedia.org/wiki/OpenBSD
.. _overtake its parent: http://www.softpanorama.org/People/Stallman/history_of_gcc_development.shtml

.. [#windows_8_hate_1] http://www.washingtonpost.com/blogs/the-switch/wp/2014/02/14/8-things-i-hate-about-windows-8-1/
.. [#windows_8_defense] http://www.forbes.com/sites/tonybradley/2014/03/19/im-sorry-the-windows-8-hate-just-doesnt-make-sense/
.. [#windows_9] http://www.smh.com.au/digital-life/computers/hate-windows-8-microsoft-replacing-it-with-windows-9-20140122-317fo.html
.. [#windows_8_polarizing] http://bgr.com/2013/12/04/windows-8-hatred-explained/
.. [#windows_8_hate_2] http://www.maximumpc.com/article/features/8_things_we_hate_about_windows_841
.. [#windows_8_hate_3] http://answers.microsoft.com/en-us/windows/forum/windows_8-windows_install/i-hate-windows-8/cd2d9fec-9d95-42ba-9e41-727419459465
.. [#windows_8_enterprise] http://www.forbes.com/sites/adriankingsleyhughes/2013/05/19/why-enterprise-is-avoiding-windows-8/
.. [#windows_8_disappointing] http://www.nngroup.com/articles/windows-8-disappointing-usability/
.. [#gnome_3_fork] http://www.zdnet.com/article/linus-torvalds-would-like-to-see-a-gnome-fork/
.. [#gnome_3_hate] https://felipec.wordpress.com/2011/06/16/after-two-weeks-of-using-gnome-3-i-officially-hate-it/
.. [#gnome_3_grumpy] https://lwn.net/Articles/433409/

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Crippled multi-user remote access.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Windows remote desktop licensing`_ makes multi-user remote access
and sharing of machine resources expensive.
By design, multiple concurrent sessions are disabled
on all but the server version of Windows,
and `third-party remote desktop software is not permitted`_
to legally `circumvent this limitation`_. [#windows_xp_not_multiuser]_ [#tightvnc_multiple_unique_sessions]_ [#multiple_sessions_illegal]_

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
Often, two different users will work remotely
at the same time on the same machine
using different desktop environments.

.. _multiple local instances of the X server: http://journalxtra.com/linux/desktop/multiple-desktops-on-one-linux-pc-now-thats-greedy/
.. _VNC: https://wiki.debian.org/VNCviewer
.. _X over SSH: https://www.debian.org/doc/manuals/debian-reference/ch07.en.html#_connecting_a_remote_x_client_via_ssh

A `multiseat`_ configuration is also possible if the hardware is available.
Even on single-user machines this capability of the X server is useful
to e.g. run two different desktop environments at the same time.

.. _multiseat: https://wiki.archlinux.org/index.php/xorg_multiseat

Also, sometimes Linux users will forego the X server entirely
and log in from a text-only `virtual terminal`_ (a.k.a ``tty``).
This is important to be able to do
if the X server crashes or cannot start.

.. _virtual terminal: http://en.wikipedia.org/wiki/Virtual_console

Because the Linux kernel does not rely on the X server to function,
the `X server can be restarted without rebooting`_.

.. _X server can be restarted without rebooting: https://askubuntu.com/questions/1220/how-can-i-restart-x-server-from-the-command-line

If a crash is unrecoverable and it becomes necessary to reboot the kernel,
one can do so cleanly even if the X server is unresponsive
by using the "`Magic Alt-SysRq keys`_",
key combinations which send instructions to the kernel.

.. _Magic Alt-SysRq keys: https://www.kernel.org/doc/Documentation/sysrq.txt

(Windows has Ctrl-Alt-Delete,
but requires a responding display manager
to allow the user to cleanly reboot.)

There is a plethora of window managers [#window_managers]_
and desktop environments [#desktop_environments]_
to choose from on Linux,
even on the same distribution,
making it highly customizable to the system's resources and the user's wishes.
However, they all use the same X Window System (a.k.a X11)
provided by the X server, typically X.org.

The X11 system is by no means perfect;
in fact, many former X11 developers
are hard at work on its replacement, `Wayland`_,
and Canonical (the company behind Ubuntu)
is working on a separate but similar endeavor called `Mir`_.

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

.. [#window_managers]
   https://wiki.archlinux.org/index.php/Window_manager
   http://en.wikipedia.org/wiki/Comparison_of_X_window_managers
.. [#desktop_environments]
   https://wiki.debian.org/DesktopEnvironment
   http://en.wikipedia.org/wiki/Comparison_of_X_Window_System_desktop_environments
.. [#windows_xp_not_multiuser]

       You would think that because Windows XP is multiuser, you could have
       multiple users running VNC servers. Indeed you can, but you can only use
       the one that has the currently active user - switch away, and that
       server goes black, and in my testing, can't even be used again. Windows
       XP is not really multiuser.

   http://aplawrence.com/Reviews/tightvnc.html
.. [#tightvnc_multiple_unique_sessions]

       Windows, unless you're using Terminal Server (and have the licenses to
       go with it) doesn't have this capability, and I don't believe that even
       with Terminal Server, VNC will be able to take advantage of this.

   http://ehc.ac/p/vnc-tight/mailman/message/25780367/

.. [#multiple_sessions_illegal]

       If you heard about/saw many active desktop sessions in non-server
       Windows - that was modified OS with swapped termsrv.dll. Licensing does
       not allow you to modify/swap system files and use non-server system that
       way and this is ILLEGAL.

   http://stackoverflow.com/questions/9410091/multi-user-login-remote-desktop-on-windows-linux

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

First, an anonymous Windows kernel developer stated in 2013
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

    --- Anonymous Windows NT kernel developer

http://blog.zorinaq.com/?e=74


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

    --- Valve Linux Team

.. _ported Left 4 Dead 2 to Linux: http://blogs.valvesoftware.com/linux/faster-zombies/

.. TODO: should I talk more about this?

+++++++++++++++++++++++++++++++++++++
Configuration and software packaging.
+++++++++++++++++++++++++++++++++++++

While these topics could be included under architectural limitations,
they are large enough to deserve their own section.

-----------------
Default software.
-----------------

Linux distributions have development tools installed by default,
such as a C compiler (usually ``gcc``),
build automation (e.g. ``make``),
text utilities (``diff``, ``patch``, ``grep``, ``find``, etc.),
and more than one shell (e.g. ``bash``, ``dash``, and ``csh``).

In fact, the `POSIX standard`_ requires that these be available.
Standards like POSIX make writing and using portable software easier,
and standard POSIX tools are unlikely to become obsolete.

.. _POSIX standard: http://pubs.opengroup.org/onlinepubs/009696699/utilities/contents.html

On Windows, by contrast,
there is no default set of tools that match the POSIX utilities
(though certainly not for lack of trying). [#POSIX_for_Windows]_

The `Windows C compiler and build system`_
is not installed by default,
even though a zero-price Community version is available.

There is a scriptable shell on all version of Windows (``CMD.EXE``)
but the currently favored Windows shell (`PowerShell`_)
was not available by default until Windows 8.

.. _Windows C compiler and build system: http://msdn.microsoft.com/en-us/vstudio/
.. _PowerShell: http://technet.microsoft.com/en-us/library/hh847837.aspx

.. [#POSIX_for_Windows]
   https://technet.microsoft.com/en-us/library/cc754351.aspx
   https://superuser.com/questions/495360/does-windows-8-still-implement-posix
   https://stackoverflow.com/questions/4746043/where-does-microsoft-windows-7-posix-implementation-currently-stand
   http://brianreiter.org/2010/08/24/the-sad-history-of-the-microsoft-posix-subsystem/
   https://superuser.com/questions/293023/unix-command-line-utilities-for-windows-x64

--------------------------------------------------
Software configuration: registries and text files.
--------------------------------------------------

On Windows, configuration files are not centralized in the user's home directory.
The data that retain configuration when upgrading or recovering from data loss
are scattered around as ``.INI`` text files in unpredictable directories
or in the `Windows Registry`_.
In principle, applications should put config files in ``%APPDATA%``,
but in practice many of them put it in the install directory.

Furthermore, ``%APPDATA`` makes no distinction
amongst an application's
configuration and plugins,
history and log files,
and cached data.

This makes configuration less robust
and harder to adapt to the needs of specific users.
Windows developers have noted the `many other drawbacks`_ `of the registry`_ in particular.

.. _Windows Registry: http://msdn.microsoft.com/en-us/library/ms970651.aspx
.. _many other drawbacks: https://rwmj.wordpress.com/2010/02/18/why-the-windows-registry-sucks-technically/
.. _of the registry: http://blog.codinghorror.com/was-the-windows-registry-a-good-idea/

On Linux, most configuration can be done graphically
within applications or configuration managers provided by the desktop environment.
A lot of it is handled by the `package manager`_.
However, there are a variety of possibilities
depending on the needs of the people using it.

.. _package manager: `Package manager with signed binaries.`_

System administrators, for example,
care about system-level configuration files,
generally text files in ``/etc/``.

Text files are simple to edit
for ad-hoc debugging and automation,
easy to diff,
easy to backup or version control,
and robust against corruption.

User level configuration is stored in dotfiles
(hidden folders or files)
in the user's home directory,
often under the ``~/.config/`` folder.
Plugins and logfiles generally go under ``~/.local/share/``,
and cached data under ``~/.cache/``.

There are good arguments to the effect that
making dotfiles responsible for configuration `is problematic`_.
Configuration files would make much more sense
if stored in a dedicated configuration folder in the user's home directory,
and many applications follow the `XDG base directory standard`_,
which is intended to address this problem.

.. _is problematic: https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp
.. _XDG base directory standard: http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html

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

For example, the RSS reader ``liferea``
puts the list of RSS feeds in
``$HOME/.config/liferea/feedlist.opml``,
favicons (which can be re-downloaded if necessary) in
``$HOME/.cache/liferea/favicons/``,
and the SQLite database containing the actual RSS feeds in
``$HOME/.local/share/liferea/liferea.db``.

This means that backing up the configuration for ``liferea``
is as simple as backing up the contents of ``$HOME/.config/liferea/``,
and no cache files or big databases are included.

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
- `mandatory cryptographic signing of packages`_, [#windows_package_signing]_
- backporting security fixes to stable versions,
- licensing metadata,
- and `sophisticated dependency management`_.

.. _mandatory cryptographic signing of packages: http://purplefloyd.wordpress.com/2009/02/05/signing-deb-packages/
.. _sophisticated dependency management: https://www.debian.org/doc/debian-policy/ch-relationships.html
.. _optional fully automatic non-interactive installation: http://debian-handbook.info/browse/wheezy/sect.automatic-upgrades.html

To be sure, there is an open-source package manager for Windows, `Chocolatey`_,
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

.. [#windows_package_signing] Windows provides the means to cryptographically sign
   ``.exe`` and ``.msi`` installers,
   but it is not required for installation.

       The Windows installer verifies signatures on .msi packages. If a package
       has an invalid signature, the installer warns users before it installs
       the package.

   http://download.microsoft.com/download/a/f/7/af7777e5-7dcd-4800-8a0a-b18336565f5b/best_practices.doc

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
For example:

- Want to see which displays you're connected to? Run ``xrandr``.
- Want to see what USB devices are connected? Run ``lsusb``.
- Want to restart your networking daemon? Run ``sudo /etc/init.d/networking restart``.

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

For this reason, many companies maintain a large user support staff.
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

In 2000, when Hotmail switched from FreeBSD to Windows server,
a white paper noted this problem, which persists 15 years later:

    Windows operations still involves too many reboots. Sometimes they are
    unnecessary, but operators reboot a system rather than take the time to
    debug it. For example, a service may be hung, and rather than take the time
    to find and fix the problem, it is often more convenient to reboot. By
    contrast, UNIX administrators are conditioned to quickly identify the
    failing service and simply restart it; they are helped in this by the
    greater transparency of UNIX and the small number of interdependencies.
    Some reboots are demanded by an application installation, and are not
    strictly necessary.

    --- David Brooks, Microsoft Hotmail Migration Technical Case Study

http://www.theregister.co.uk/2002/11/21/ms_paper_touts_unix/

https://web.archive.org/web/20030206115538/http://remus.softimage.net/hotmail.html

In the long run,
this hurts both proprietary and open-source software
on the Windows platform.

--------
Malware.
--------

In principle, Linux and Windows users
are equally `susceptible to malware`_.
Android, for example, runs on the Linux kernel,
and there is plenty of malware that targets it.

.. TODO: link to these articles.
.. http://www.linux.org/threads/android-malware.7836/
.. http://www.firstpost.com/business/gunpoder-new-android-malware-targets-users-not-residing-china-2339516.html
.. http://www.hackinglinuxexposed.com/articles/20020924.html
.. http://www.geekzone.co.nz/foobar/6229

In practice, though, Windows users are `more likely`_
to inadvertently install malware,
primarily because of the way they install non-malicious software
(see `notes on package management`_).
Finding trustworthy sources for software is non-trivial,
and requiring ordinary users to do it is harmful in a variety of ways;
it tends to encourage a cargo-cult mentality toward security
instead of systematic root-cause analysis.

.. _susceptible to malware: http://www.linux.com/learn/tutorials/284124-myth-busting-is-linux-immune-to-viruses
.. _more likely: http://unix.stackexchange.com/questions/2751/the-myths-about-malware-in-unix-linux
.. _notes on package management: `Package manager with signed binaries.`_

As a result,

- Windows users must spend `considerable time and effort`_ detecting and removing malware.
- Windows users may `falsely attribute`_ `software misbehavior to malware`_.
- Some Windows users may even confuse failing hardware with malware. [#not_a_virus]_

.. _considerable time and effort: https://www.microsoft.com/security/portal/mmpc/shared/ransomware.aspx
.. _falsely attribute: http://www.combofix.org/suspect-a-malware-infection-heres-the-right-way-to-remove-it.php
.. _software misbehavior to malware: http://lifehacker.com/5958001/the-5-biggest-myths-about-slow-pcs-and-how-you-can-actually-fix-them

.. [#not_a_virus]
   https://dniinoi.wordpress.com/2008/03/26/the-myth-behind-virus-attack-and-hardware/
   https://security.stackexchange.com/questions/65153/is-there-any-virus-that-can-cause-physical-damage
   http://askbobrankin.com/can_a_virus_really_destroy_your_hard_drive.html

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

.. TODO: addendum of commonly cited, but incorrect, advantages?
