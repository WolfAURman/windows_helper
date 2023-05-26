## Windows helper ##

### What Is This ###

This is a bat script for installing the necessary updates and certificates for a successful installation of the NET Framework.

### Why is it necessary ###

This allows you to speed up routine and boring work when you first start Windows.
This will help those people who work with computers, in particular those who work only on Windows 7. Due to the problematic installation of the NET Framework, which is required for many programs.

The folder structure will be as follows:
```
windows_helper
             |- start.bat
             |
             |- common 
             |       |- MicrosoftRootCertificateAuthority2011.cer
             |       |- ndp48-x86-x64-allos-enu.exe
             |
             |- 32
             |   |- windows6.1-kb3033929-x86_927e018113fe51250c57029635d46b89bf235920.msu
             |
             |- 64
             |   |- windows6.1-kb3033929-x64_5c56222b0caf43030addc9ad262633fcbddfcd41.msu
             |
```

You can get all the files from these links:

- [MicrosoftRootCertificateAuthority2011.cer](https://download.microsoft.com/download/2/4/8/248D8A62-FCCD-475C-85E7-6ED59520FC0F/MicrosoftRootCertificateAuthority2011.cer)

- [ndp48-x86-x64-allos-enu.exe](https://download.visualstudio.microsoft.com/download/pr/2d6bb6b2-226a-4baa-bdec-798822606ff1/8494001c276a4b96804cde7829c04d7f/ndp48-x86-x64-allos-enu.exe)

- [windows6.1-kb3033929-x86_927e018113fe51250c57029635d46b89bf235920.msu](https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/secu/2015/02/windows6.1-kb3033929-x86_927e018113fe51250c57029635d46b89bf235920.msu)

- [windows6.1-kb3033929-x64_5c56222b0caf43030addc9ad262633fcbddfcd41.msu](https://catalog.s.download.windowsupdate.com/c/msdownload/update/software/secu/2015/02/windows6.1-kb3033929-x64_5c56222b0caf43030addc9ad262633fcbddfcd41.msu)

Arrange it as it is indicated in the folder tree.