-- seed.sql This is the SQL table entries.
--

INSERT INTO fitsfiles (target, telescope, kind, archive, download_link)
VALUES
    ('Horsehead Nebula', 'DSS', 'image', 'Astropy tutorial',
     'http://data.astropy.org/tutorials/FITS-images/HorseHead.fits'
     ),

     ('Example MIRI spec cube', 'JWST', 'cube', 'MAST',
     'https://mast.stsci.edu/api/v0.1/Download/file?uri=mast:JWST/product/jw01023-o015_t002_miri_ch1-short_s3d.fits'
     ),

     ('TESS Sector 1', 'TESS', 'image', 'MAST',
     'https://archive.stsci.edu/missions/tess/ffi/s0001/2018/206/4-2/tess2018206192942-s0001-4-2-0120-s_ffic.fits'
     );
