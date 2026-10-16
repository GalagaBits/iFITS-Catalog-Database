-- seed.sql This is the SQL table entries.
--

INSERT INTO fitsfiles (target, telescope, kind, archive, download_link)
VALUES
 ('Example MIRI spec cube', 'JWST', 'cube', 'MAST',
 'https://mast.stsci.edu/api/v0.1/Download/file?uri=mast:JWST/product/jw01023-o015_t002_miri_ch1-short_s3d.fits'
 ),

 ('TESS Sector 1', 'TESS', 'image', 'MAST',
 'https://archive.stsci.edu/missions/tess/ffi/s0001/2018/206/4-2/tess2018206192942-s0001-4-2-0120-s_ffic.fits'
 ),

 -- JWST: Cartwheel Galaxy, NIRCam F090W (Early Release Observation, program 2727)
 ('Cartwheel Galaxy', 'JWST', 'image', 'MAST',
 'https://mast.stsci.edu/api/v0.1/Download/file?uri=mast:JWST/product/jw02727-o002_t062_nircam_clear-f090w_i2d.fits'
 ),

 -- JWST: Stephan's Quintet, MIRI MRS channel 1 cube (Early Release Observation, program 2732)
 ('Stephan''s Quintet', 'JWST', 'cube', 'MAST',
 'https://mast.stsci.edu/api/v0.1/Download/file?uri=mast:JWST/product/jw02732-c1001_t004_miri_ch1-short_s3d.fits'
 ),

 -- VLA: a 3 GHz VLA Sky Survey (VLASS) Quick Look field
 ('VLASS field J000228-363000', 'VLA', 'image', 'NRAO',
 'https://archive-new.nrao.edu/vlass/quicklook/VLASS1.1/T01t01/VLASS1.1.ql.T01t01.J000228-363000.10.2048.v1/VLASS1.1.ql.T01t01.J000228-363000.10.2048.v1.I.iter1.image.pbcor.tt0.subim.fits'
 ),

 -- Ground: 2MASS Ks-band mosaic of the Galactic Center (1.3 m telescopes, Mt. Hopkins and CTIO)
 ('Galactic Center', '2MASS', 'image', 'Astropy data',
 'https://www.astropy.org/astropy-data/galactic_center/gc_2mass_k.fits'
 ),

 -- Ground: 13CO cube of the L1448 dark cloud in Perseus (COMPLETE survey, FCRAO 14 m)
 ('L1448 (13CO)', 'FCRAO 14 m', 'cube', 'Astropy data',
 'https://www.astropy.org/astropy-data/l1448/l1448_13co.fits'
 );